<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Models\ArticleModel;
use App\Models\SliderModel;
use App\Models\UserModel;
class DashboardController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.dashboard.';  // slider
        $this->controllerName     = 'dashboard';
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {

        $categoryModel = new CategoryModel();
        $articleModel = new ArticleModel();
        $sliderModel = new SliderModel();
        $userModel = new UserModel();
        $categoryItems= $categoryModel->countItems(null,['task'=>'admin-cound-items-in-dashboard']);
        $articleItems= $articleModel->countItems(null,['task'=>'admin-cound-items-in-dashboard']);
        $sliderItems= $sliderModel->countItems(null,['task'=>'admin-cound-items-in-dashboard']);
        $userItems= $userModel->countItems(null,['task'=>'admin-cound-items-in-dashboard']);
        
        return view($this->pathViewController .  'index', [
            'categoryItems'=>$categoryItems[0],
            'articleItems'=>$articleItems[0],
            'sliderItems'=>$sliderItems[0],
            'userItems'=>$userItems[0],
        ]);
    }
}
