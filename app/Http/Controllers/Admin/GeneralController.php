<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\GeneralModel as MainModel;
use App\Http\Requests\GeneralRequest as MainRequest;
use Mail;
class GeneralController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.general.';
        $this->controllerName     = 'general';
        $this->params             = [];
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('controllerName', $this->controllerName);
    }
    public function index(Request $request) {
        $items              = $this->model->listItems($this->params, ['task'  => 'admin-list-items']);
        $settingMain = collect($items)->filter(fn($x)=>$x['key_value']==='setting-main')->first();
        $settingEmail = collect($items)->filter(fn($x)=>$x['key_value']==='setting-email')->first();

        return view($this->pathViewController .  'index', [
            'item'         => json_decode($settingMain['value'],true),
            'itemEmail'    => json_decode($settingEmail['value'],true),
        ]);
    }
    public function save(Request $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            
            $task   = $params['task'];
            $notify = "Cập nhật phần tử thành công!";
            $this->model->saveItem($params, ['task' => $task]);
            return redirect()->route($this->controllerName)->with("zvn_notify", $notify);
        }
    }
    public function testmail(){
        $name="nguyen van a";
        Mail::send('admin.pages.mails.test',compact('name'),function($email){
            $email->to('glphamhoa@gmail.com','quy khac hang');
        });
    }

}
