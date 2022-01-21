<?php

namespace App\Helpers;


class CheckActive
{
    public static function typeLink($link,$currentRouteName){
        $route = app('router')->getRoutes()->match(app('request')->create($link));
        $routeName = $route->getName();
        if ($routeName === $currentRouteName ){
            return 'active';
        }
        return '';
    }
    public static function typeArticle($currentLink){
        $urlPath = parse_url($currentLink, PHP_URL_PATH);
        $secondSegment = @explode('/',$urlPath)[1];
        if (in_array($secondSegment,['chuyen-muc','bai-viet','tin-tuc-tong-hop']) ){
            return 'active';
        }
        return '';
    }
}
