<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;;

use App\Models\ContactModel as MainModel;
use App\Helpers\Feed;

class ContactController extends Controller
{
    private $pathViewController = 'news.pages.contact.';  // slider
    private $controllerName     = 'contact';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
        $this->model = new MainModel();
    }

    public function index(Request $request)
    {
        view()->share('title', 'Liên hệ');
        return view($this->pathViewController .  'index', [
            
        ]);
    }
    public function save(Request $request){
        $data = $request->all();


        if ($request->method() == 'POST') {
            $params = $request->all();
            $task   = "add-item";
            $notify = "Gửi tin thành công!";

            $params['ip'] = $request->ip();
            $this->model->saveItem($params, ['task' => $task]);
            return redirect()->route($this->controllerName.'/index')->with("news_notify", $notify);
        }
    }

}
