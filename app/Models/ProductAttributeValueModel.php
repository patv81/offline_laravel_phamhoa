<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use DB; 
class ProductAttributeValueModel extends AdminModel
{
    public function __construct() {
        $this->table               = 'product_attribute_value'; 
        $this->fieldSearchAccepted = ['id', 'name', 'link']; 
        $this->crudNotAccepted     = ['_token','task','logo_current'];
    }

    public function listItems($params = null, $options = null) {
     
        $result = null;


        if($options['task'] == "admin-list-items-in-product") {   
            $query = $this->select('id','product_id','value','attribute_id')
            ->where('product_id', '=', $params['id']); 
        }
        $result = $query->get();
        return $result;
    }


    public function getItem($params = null, $options = null) { 
        $result = null;
        
        if($options['task'] == 'get-item') {
            $result = self::select('id','key_value','value','status','created_by','created','modified_by','modified')->where('id', $params['id'])->first();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null) { 
        if($options['task'] == 'save-attribute') {  
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
            $main->value= json_encode($this->prepareParams($params));
            $main->save();
        }
        if($options['task'] == 'setting-email') {  
            $main = self::firstOrCreate(
                [
                    'key_value'=>'setting-email'
                ],
                [
                    'key_value'=>'setting-email',
                    'created'=> date('Y-m-d'),
                    'value'=>[],
                ]
            );
            $main->modified= date('Y-m-d');
            $main->modified_by=session()->get('userInfo')['username'];
            $main->value= json_encode($this->prepareParams($params));
            $main->save();
        }
    }
}

