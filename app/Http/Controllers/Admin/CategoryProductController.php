<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryProductModel as MainModel;
use App\Http\Requests\CategoryProductRequest as MainRequest;

class CategoryProductController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.categoryproduct.';
        $this->controllerName     = 'categoryproduct';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('controllerName', $this->controllerName);
    }

    public function form(Request $request)
    {
        
        $item = null;
        if ($request->id !== null) {
            $this->params["id"] = $request->id;
            $item = $this->model->getItem($this->params, ['task' => 'get-item']);
        }
        $nodes= $this->model->listItems($this->params,['task'=>'admin-list-items-in-select-box']);
        // dd($nodes);
        return view($this->pathViewController .  'form', [
            'item'        => $item,
            'nodes'=>$nodes,
        ]);
    }
    public function save(MainRequest $request)
    {
        if ($request->method() == 'POST') {
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
    }

    public function isHome(Request $request)
    {
        $params["currentIsHome"]  = $request->is_home;
        $params["id"]             = $request->id;
        $this->model->saveItem($params, ['task' => 'change-is-home']);
        $isHomeValue = $request->is_home == 'yes' ? 'no' : 'yes';
        $link = route($this->controllerName . '/isHome', ['is_home' => $isHomeValue, 'id' => $request->id]);
        return response()->json([
            'isHomeObj' => config('zvn.template.is_home')[$isHomeValue],
            'link' => $link,
        ]);
    }

    public function display(Request $request)
    {
        $params["currentDisplay"]   = $request->display;
        $params["id"]               = $request->id;
        $this->model->saveItem($params, ['task' => 'change-display']);
        return response()->json([
            'status' => 'success'
        ]);
    }
    public function move(Request $request){
        $params['id'] = $request->id;
        $params['type'] = $request->type;
        $this->model->move($params);
        return redirect()->route($this->controllerName);
    }
}
