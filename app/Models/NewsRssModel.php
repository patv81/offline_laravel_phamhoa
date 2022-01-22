<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use DB; 
class NewsRssModel extends AdminModel
{
    public $timestamps  =false;
    public function __construct() {
        $this->table               = 'news_rss';
        $this->crudNotAccepted     = ['_token','avatar_current', 'password_confirmation', 'task'];
    }
}

