<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.dashboard.';  // slider
        $this->controllerName     = 'dashboard';
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        return view($this->pathViewController .  'index', []);
    }
}
