<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Kalnoy\Nestedset\NodeTrait;

class CategoryModel extends AdminModel
{

    // public function __construct()
    // {
    //     $this->table               = 'category';
    //     $this->folderUpload        = 'category';
    //     $this->fieldSearchAccepted = ['id', 'name'];
    //     $this->crudNotAccepted     = ['_token'];
    // }
    use NodeTrait;
    protected $table = 'category';
    protected $guarded =[]; 
    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            $result = self::withDepth()
            ->having('depth','>',0)
            ->defaultOrder()
            ->get()
            ->toFlatTree();
            // $result =  $query->get();
        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name')
                ->where('status', '=', 'active')
                ->limit(8);
            $result = $query->get()->toArray();
        }
        if ($options['task'] == 'news-list-items1') {
            $query = self::select('id', 'name')->defaultOrder()
                ->where('status', '=', 'active')
                ->withDepth()->having('depth', '>', 0);
            $result = self::withDepth()->having('depth', '>', 0)->get()->toTree()->toArray();
        }

        if ($options['task'] == 'news-list-items-is-home') {
            $query = $this->select('id', 'name', 'display')
                ->where('status', '=', 'active')
                ->where('is_home', '=', 'yes');

            $result = $query->get()->toArray();
        }

        if ($options['task'] == "admin-list-items-in-selectbox") {
            $query = $this->select('id', 'name')
                ->orderBy('name', 'asc')
                ->where('status', '=', 'active');

            $result = $query->pluck('name', 'id')->toArray();
        }
        if ($options['task'] == 'admin-list-items-in-select-box') {
            $query = self::select('id', 'name')->where('_lft','<>',NULL)->withDepth()->defaultOrder();
            if(isset($params['id'])){
                $node = self::find($params['id']);
                $query = self::select('id', 'name')->where('_lft','<',$node->_lft)->orWhere('_rgt','>',$node->_rgt)->withDepth()->defaultOrder();
            }
            $nodes  = $query->get()->toFlatTree();
            foreach($nodes as $value){
                $result[$value['id']] = str_repeat('|----',$value['depth']).$value['name'];
            }
            // dd($result);
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

            $result = $query->get()->toArray();
        }
        if ($options['task'] == "admin-cound-items-in-dashboard") {
            // $query = $this::groupBy('status')
            //     ->select(DB::raw('status , COUNT(id) as count'));
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
            $result = self::select('id', 'name', 'parent_id','status')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'news-get-item') {
            $result = self::select('id', 'name', 'display')->where('id', $params['category_id'])->first();

            if ($result) $result = $result->toArray();
        }
        

        return $result;
    }

    public function saveItem($params = null, $options = null)
    {
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'change-is-home') {
            $isHome = ($params['currentIsHome'] == "yes") ? "no" : "yes";
            self::where('id', $params['id'])->update(['is_home' => $isHome]);
        }

        if ($options['task'] == 'change-display') {
            $display = $params['currentDisplay'];
            self::where('id', $params['id'])->update(['display' => $display]);
        }

        if ($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created']    = date('Y-m-d');
            $parent = self::find($params['parent_id']);
            // dd($parent);
            self::create($this->prepareParams($params),$parent);
        }

        if ($options['task'] == 'edit-item') {
            $params['modified_by']   = "hailan";
            $params['modified']      = date('Y-m-d');
            $node = self::find($params['id']);
            $node->update($this->prepareParams($params));
            if ($node['paranet_id']!=$params['parent_id']){
                $parent = self::find($params['parent_id']);
                $node->appendToNode($parent)->save();
            }
            // self::where('id', $params['id'])->update($this->prepareParams($params));
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        if ($options['task'] == 'delete-item') {
            $node = self::find($params['id']);
            $node->delete();
            // self::where('id', $params['id'])->delete();
        }
    }
    public function move($params){
        $node = self::find($params['id']);
        $arr['modified_by'] = session('userInfo')['username'];
        $arr['modified'] = date('Y-m-d');
        self::where('id', $params['id'])->update($arr);

        if($params['type']=='up') $node->up();
        if($params['type']=='down') $node->down();
    }
}
