<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductModel as MainModel;
use App\Models\CategoryProductModel;
use App\Models\AttributeModel;
use App\Models\ProductAttributeValueModel;
use App\Http\Requests\ProductRequest as MainRequest;

class ProductController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.product.';  // slider
        $this->controllerName     = 'product';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 5;
        view()->share('controllerName', $this->controllerName);
    }
    public function index(Request $request)
    {
        $this->params['filter']['status'] = $request->input('filter_status', 'all');
        $this->params['filter']['category'] = $request->input('filter_category', 'all');
        $this->params['search']['field']  = $request->input('search_field', ''); // all id description
        $this->params['search']['value']  = $request->input('search_value', '');
        if($this->params['filter']['category']!='all'){
            $temp =CategoryProductModel::descendantsAndSelf($this->params['filter']['category'])
            ->map(fn($x)=>$x->id)->toArray();
            $this->params['filter']['category']=$temp;
        }
        $items              = $this->model->listItems($this->params, ['task'  => 'admin-list-items']);
        $itemsStatusCount   = $this->model->countItems($this->params, ['task' => 'admin-count-items-group-by-status']); // [ ['status', 'count']]
        $categoryProductModel  = new CategoryProductModel();
        $itemsCategory  = $categoryProductModel->listItems(null, ['task' => 'admin-list-items-in-filter-select-box']);
        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
            'items'         => $items,
            'itemsStatusCount' =>  $itemsStatusCount,
            'itemsCategory' => $itemsCategory
        ]);
    }
    public function form(Request $request)
    {
        $item = null;
        if ($request->id !== null) {
            $params["id"] = $request->id;
            $item = $this->model->getItem($params, ['task' => 'get-item']);
            $productAttributeValue = new ProductAttributeValueModel();
            $itemsAttribute = $productAttributeValue->listItems($params,['task'=>'admin-list-items-in-product']);
            $itemsAttributeValue =$itemsAttribute->groupBy('attribute_id');
        }

        $categoryModel  = new CategoryProductModel();
        $itemsCategory  = $categoryModel->listItems(null, ['task' => 'admin-list-items-in-filter-select-box']);
        
        $attributeModel = new AttributeModel();
        $itemsAttribute = $attributeModel->listItems(null, ['task' => 'admin-list-items-in-product-form']);    
        return view($this->pathViewController .  'form', [
            'item'        => $item,
            'itemsCategory' => $itemsCategory,
            'itemsAttribute'=>$itemsAttribute,
            'itemsAttributeValue'=>$itemsAttributeValue??null
        ]);
    }

    public function save(MainRequest $request)
    {
        if ($request->method() == 'POST' && is_null($request->saveAttribute)) {
            $params = $request->all();
            $task   = "add-item";
            $notify = "Thêm phần tử thành công!";

            if ($params['id'] !== null) {
                $task   = "edit-item";
                $notify = "Cập nhật phần tử thành công!";
            }
            $this->model->saveItem($params, ['task' => $task]);
            return redirect()->route($this->controllerName)->with("zvn_notify", $notify);
        }
        if ($request->method() == 'POST' && $request->saveAttribute) {
            $productAttributeValue = new ProductAttributeValueModel();
            $params = $request->all();
            $collection = collect($params['arr']);
            $result = [];
            $collection->each(function ($item, $key) use($collection,$params,&$result) {
                $arr=[];
                collect(json_decode($collection[$key], true))->map(function($x) use($params,&$arr,$key){
                    $newItem = [
                        'value'=>$x['value'],
                        'product_id'=>$params['id'],
                        'attribute_id'=>$key,
                    ];
                    array_push($arr,$newItem);
                });
                array_push($result,$arr);


                // $test= collect(json_decode($collection[$key], true))
                // ->pluck('value')
                // ->each($item,$key){

                // }
            });
            $result=collect($result)->collapse();
            $productAttributeValue->insert($result->toArray());
            return 'hello';
        }
    }


    public function type(Request $request)
    {
        $params["currentType"]    = $request->type;
        $params["id"]             = $request->id;
        $this->model->saveItem($params, ['task' => 'change-type']);
        return response()->json([
            'status' => 'success'
        ]);
    }
    public function changeAttribute(Request $request){
        $params['field'] = $request->field   ;
        $params['id'] = $request->id   ;
        $params['value'] = $request->value   ;
        $this->model->saveItem($params, ['task' => 'change-attribute']);
        return response()->json([
            'status' => 'success'
        ]);
    }
}
