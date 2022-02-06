<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;;

use File;
class GaleryController extends Controller
{
    private $pathViewController = 'news.pages.galery.';  // slider
    private $controllerName     = 'galery';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $folder_path=public_path(config("zvn.path.galery"));
        // dd(File::files($folder_path));
        // dd($folder_path);
        $url_path= asset(config("zvn.path.galery"));
        $images = collect(File::files($folder_path))
            ->map(fn($x)=>$url_path.'/'.$x->getFileName())->toArray(); 
        return view($this->pathViewController .  'index',compact('images'));
        // return view($this->pathViewController .  'index',['images' => $images]);
    }
}
