<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use DB; 
class GeneralModel extends AdminModel
{
    public function __construct() {
        $this->table               = 'general';
        $this->folderUpload        = 'general' ; 
        $this->fieldSearchAccepted = ['id', 'name', 'link']; 
        $this->crudNotAccepted     = ['_token','task','logo_current'];
    }

    public function listItems($params = null, $options = null) {
     
        $result = null;

        if($options['task'] == "admin-list-items") {   
            $query = $this->select('id','key_value','value','status','created_by','created','modified_by','modified'); 
        }
        $result = $query->get()->toArray();
        return $result;
    }


    public function getItem($params = null, $options = null) { 
        $result = null;
        
        if($options['task'] == 'get-item') {
            $result = self::select('id', 'name', 'status', 'link', 'ordering', 'source')->where('id', $params['id'])->first();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null) { 
        if($options['task'] == 'edit-main-general') {  
            $main = self::firstOrCreate(
                [
                    'key_value'=>'setting-main'
                ],
                [
                    'key_value'=>'setting-main',
                    'created'=> date('Y-m-d'),
                    'value'=>[],
                ]
            );
            $previousValue = json_decode($main->value, true);
            $isFirstTime = empty($previousValue['logo']);
            if(!empty($params['logo']) && !$isFirstTime){
                $this->deleteThumb($params['logo_current']);
                $params['logo'] = $this->uploadThumb($params['thumb']); //add-new
            }else {
                if(!empty($params['logo'])){
                    $params['logo']      = $this->uploadThumb($params['logo']); //edit logo
                }else{
                    $params['logo']= $previousValue['logo']; //don't edit logo
                }
                $main->modified= date('Y-m-d');
                $main->modified_by=session()->get('userInfo')['username'];
            }
            $main->value= json_encode($this->prepareParams($params));
            $main->save();
        }
        if($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created']    = date('Y-m-d');
            self::insert($this->prepareParams($params));        
        }

        if($options['task'] == 'edit-item') {
            $params['modified_by']   = "hailan";
            $params['modified']      = date('Y-m-d');
            self::where('id', $params['id'])->update($this->prepareParams($params));
        }
    }

    public function deleteItem($params = null, $options = null) 
    { 
        if($options['task'] == 'delete-item') {
            self::where('id', $params['id'])->delete();
        }
    }

}

