<?php

namespace App\Helpers;
use App\Models\GeneralModel;
use DB;
class HelpConfig
{
    private static $value;
    public static function __constructStatic()
    {
        self::$value  = GeneralModel::select('value')->where('key_value','setting-email')->first()->toArray()['value'];
        self::$value = json_decode(self::$value,true);
        

    }
    public static function setting($name){        
        return self::$value[$name];
    }
}
