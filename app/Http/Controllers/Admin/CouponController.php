<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CouponModel as MainModel;
use App\Http\Requests\CouponRequest as MainRequest;

class CouponController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.coupon.';  // coupon
        $this->controllerName     = 'coupon';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 5;
        view()->share('controllerName', $this->controllerName);
    }

    public function save(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            $params['timeStart'] = date("Y-m-d H-i-s", strtotime($params['timeStart']));
            $params['timeEnd'] = date("Y-m-d H-i-s", strtotime($params['timeEnd']));
            

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

}
