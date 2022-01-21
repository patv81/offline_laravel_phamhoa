<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserModel as MainModel;
use App\Http\Requests\UserRequest as MainRequest;

class GaleryController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.galery.';
        $this->controllerName     = 'galery';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 5;
        view()->share('controllerName', $this->controllerName);
    }
    public function index(Request $request){
        return view('admin.pages.galery.index');
    }
}
