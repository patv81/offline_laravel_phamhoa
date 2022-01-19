<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserModel as MainModel;
use App\Http\Requests\UserRequest as MainRequest;

class MyselfController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.myself.';
        $this->controllerName     = 'myself';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 5;
        view()->share('controllerName', $this->controllerName);
    }


    public function changePassword(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            $currentUser = $this->model->getItem(['id'=>$request->session()->get('userInfo')['id'] ], ['task' => 'get-password']);
            if ($currentUser['password'] === md5($params['current_password'])){
                $this->model->saveItem($params, ['task' => 'change-password']);
                return redirect()->route('myself/form',['id'=>$request->session()->get('userInfo')['id']])->with("zvn_notify", "Thay đổi mật khẩu thành công!");
            }else{
                return redirect()->route('myself/form',['id'=>$request->session()->get('userInfo')['id']])->with("zvn_notify", "Thay đổi mật khẩu thất bại!");
            }
            // dd('321');
        }
    }

}
