<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MenuModel as MainModel;
use App\Http\Requests\MenuRequest as MainRequest;

class MenuController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.menu.';
        $this->controllerName     = 'menu';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('controllerName', $this->controllerName);
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
    public function menu(Request $request)
    {
        $this->validate($request, [
            'type_menu' => 'in:link,category_article,category_category' 
            ]);
        $menu = $this->model->find($request->id);
        
        $menu->type_menu = $request->type_menu;
        $test = $menu->save();
        return response()->json([
            'status' => 'success',
            'test'=>$request->type_menu,
        ]);
    }
    public function typeopen(Request $request)
    {
        $this->validate($request, [ 
            'type_open' => 'in:current,new_tab,new_window' 
        ]);
        $menu = $this->model->find($request->id);
        $menu->type_open = $request->type_open;
        $menu->save();
        return response()->json([
            'status' => 'success',
            'test'=>$request->id
        ]);
    }
}
