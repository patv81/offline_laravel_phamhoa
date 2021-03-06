<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use File;
class ProductModel extends AdminModel
{
    public function __construct()
    {
        $this->table               = 'product as a';
        $this->folderUpload        = 'product';
        $this->fieldSearchAccepted = ['name', 'content'];
        $this->crudNotAccepted     = ['_token', 'thumb_current','removeThumb'];
    }

    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            $query = $this->select('a.id', 'a.name', 'a.status', 'a.content', 'a.thumb', 'c.name as category_name', 'a.category_product_id')
                ->leftJoin('category as c', 'a.category_product_id', '=', 'c.id');


            if ($params['filter']['status'] !== "all") {
                $query->where('a.status', '=', $params['filter']['status']);
            }
            if ($params['filter']['category'] !== "all") {
                $query->whereIn('a.category_product_id', $params['filter']['category']);
            }

            if ($params['search']['value'] !== "") {
                if ($params['search']['field'] == "all") {
                    $query->where(function ($query) use ($params) {
                        foreach ($this->fieldSearchAccepted as $column) {
                            $query->orWhere('a.' . $column, 'LIKE',  "%{$params['search']['value']}%");
                        }
                    });
                } else if (in_array($params['search']['field'], $this->fieldSearchAccepted)) {
                    $query->where('a.' . $params['search']['field'], 'LIKE',  "%{$params['search']['value']}%");
                }
            }

            $result =  $query->orderBy('a.id', 'desc')
                ->paginate($params['pagination']['totalItemsPerPage']);
        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name', 'thumb')
                ->where('status', '=', 'active')
                ->limit(5);

            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-featured') {

            $query = $this->select('a.id', 'a.name', 'a.content', 'a.created', 'a.category_product_id', 'c.name as category_name', 'a.thumb')
                ->leftJoin('category as c', 'a.category_product_id', '=', 'c.id')
                ->where('a.status', '=', 'active')
                ->where('a.type', 'featured')
                ->orderBy('a.id', 'desc')
                ->take(3);

            $result = $query->get()->toArray();
        }


        if ($options['task'] == 'news-list-items-latest') {

            $query = $this->select('a.id', 'a.name', 'a.created', 'a.category_product_id', 'c.name as category_name', 'a.thumb')
                ->leftJoin('category as c', 'a.category_product_id', '=', 'c.id')
                ->where('a.status', '=', 'active')
                ->orderBy('id', 'desc')
                ->take(4);;
            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-in-category') {
            $query = $this->select('id', 'name', 'content', 'thumb', 'created')
                ->where('status', '=', 'active')
                ->where('category_product_id', '=', $params['category_product_id'])
                ->take(4);
            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-related-in-category') {
            $query = $this->select('id', 'name', 'content', 'thumb', 'created')
                ->where('status', '=', 'active')
                ->where('a.id', '!=', $params['article_id'])
                ->where('category_product_id', '=', $params['category_product_id'])
                ->take(4);
            $result = $query->get()->toArray();
        }



        return $result;
    }

    public function countItems($params = null, $options  = null)
    {

        $result = null;

        if ($options['task'] == 'admin-count-items-group-by-status') {

            $query = $this::groupBy('status')
                ->select(DB::raw('status , COUNT(id) as count'));

            if ($params['search']['value'] !== "") {
                if ($params['search']['field'] == "all") {
                    $query->where(function ($query) use ($params) {
                        foreach ($this->fieldSearchAccepted as $column) {
                            $query->orWhere($column, 'LIKE',  "%{$params['search']['value']}%");
                        }
                    });
                } else if (in_array($params['search']['field'], $this->fieldSearchAccepted)) {
                    $query->where($params['search']['field'], 'LIKE',  "%{$params['search']['value']}%");
                }
            }
            if ($params['filter']['category'] !== "all") {
                $query->whereIn('a.category_product_id', $params['filter']['category']);
            }
        }
        if ($options['task'] == "admin-cound-items-in-dashboard") {

            $query = $this
                ->select(DB::raw(' COUNT(id) as count'));

        }
        
        $result = $query->get()->toArray();
        return $result;
    }

    public function getItem($params = null, $options = null)
    {
        $result = null;

        if ($options['task'] == 'get-item') {
            $result = self::select('id', 'name', 'content','price' ,'status', 'thumb', 'category_product_id')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'get-thumb') {
            $result = self::select('id', 'thumb')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'news-get-item') {
            $result = self::select('a.id', 'a.name', 'content', 'a.category_product_id', 'c.name as category_name', 'a.thumb', 'a.created', 'c.display')
                ->leftJoin('category as c', 'a.category_product_id', '=', 'c.id')
                ->where('a.id', '=', $params['article_id'])
                ->where('a.status', '=', 'active')->first();
            if ($result) $result = $result->toArray();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null)
    {
        $this->table = 'product';
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'change-type') {
            self::where('id', $params['id'])->update(['type' => $params['currentType']]);
        }


        if ($options['task'] == 'add-item') {
            $params['created_by'] = session('userInfo')['username'];
            $params['created']    = date('Y-m-d');
            $params['thumb']      = $params['thumb'];
            $thumb=[];
            foreach($params['thumb']['name'] as $key => $value) {
                $filesize = -1;
                try {
                    $filesize = File::size(public_path("images/product/".$params['thumb']['name'][$key])) ;
                } catch (\Exception $e){

                }
                $thumb[] = [
                    'name' => $params['thumb']['name'][$key],
                    'alt'  => $params['thumb']['alt'][$key],
                    'size' => $filesize,
                ];
            }
            $params['thumb']=json_encode($thumb);
            // dd($this->prepareParams($params));
            self::insert($this->prepareParams($params));
        }

        if ($options['task'] == 'edit-item') {
            
            $thumb=[];
            foreach($params['thumb']['name'] ?? [] as $key => $value) {
                $filesize = -1;
                try {
                    $filesize = File::size(public_path("images/product/".$params['thumb']['name'][$key])) ;
                } catch (\Exception $e){
                }
                $thumb[] = [
                    'name' => $params['thumb']['name'][$key],
                    'alt'  => $params['thumb']['alt'][$key],
                    'size' => $filesize,
                ];
            }
            $params['thumb'] = json_encode($thumb);


            $params['modified_by']   = session('userInfo')['username'];
            $params['modified']      = date('Y-m-d');
            // dd($this->prepareParams($params));
            self::where(['id' => $params['id']])->update($this->prepareParams($params));
        }
        if ($options['task'] == 'change-attribute') {
            $arr=[];
            $arr['modified_by'] = session('userInfo')['username'];
            $arr['modified']    = date('Y-m-d');
            $arr[$params['field']] = $params['value'];
            self::where('id', $params['id'])->update($this->prepareParams($arr));
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        $this->table = 'product';
        if ($options['task'] == 'delete-item') {
            self::where('id', $params['id'])->delete();
        }
    }
}
