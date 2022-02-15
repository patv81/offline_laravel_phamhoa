<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;;

use App\Models\ContactModel as MainModel;
use App\Helpers\Feed;
use App\Models\GeneralModel;
use App\Mail\ContactMe;
use Mail;
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
        $items              = (new GeneralModel)->listItems($this->params, ['task'  => 'admin-list-items']);
        $this->settingMain = collect($items)->filter(fn($x)=>$x['key_value']==='setting-main')->first();
        $this->settingEmail = collect($items)->filter(fn($x)=>$x['key_value']==='setting-email')->first();
    }

    public function index(Request $request)
    {
        view()->share('title', 'Liên hệ');
        return view($this->pathViewController .  'index', [
            'settingMain' => json_decode($this->settingMain['value'],true),
            'settingEmail'=> json_decode($this->settingEmail['value'],true)
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
            $admin = json_decode($this->settingEmail['value'],true)['bcc'];
            Mail::to($data['email'])->bcc($admin)->send(new ContactMe($params));
            return redirect()->route($this->controllerName.'/index')->with("news_notify", $notify);
        }
    }

}
