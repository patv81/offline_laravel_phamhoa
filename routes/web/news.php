<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
$prefixNews  = config('zvn.url.prefix_news');


Route::group(['prefix' => $prefixNews, 'namespace' => 'News'], function () {
    // ============================== HOMEPAGE ==============================
    $prefix         = '';
    $controllerName = 'home';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
    });

    // ============================== CATEGORY ==============================
    $prefix         = 'chuyen-muc';
    $controllerName = 'category';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/{category_name}-{category_id}.html',  [ 'as' => $controllerName . '/index', 'uses' => $controller . 'index' ])
            ->where('category_name', '[0-9a-zA-Z_-]+')
            ->where('category_id', '[0-9]+');
    });

    // ====================== ARTICLE ========================
    $prefix         = 'bai-viet';
    $controllerName = 'article';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/{article_name}-{article_id}.html',  [ 'as' => $controllerName . '/index', 'uses' => $controller . 'index' ])
                ->where('article_name', '[0-9a-zA-Z_-]+')
                ->where('article_id', '[0-9]+');
    });

    // ============================== NOTIFY ==============================
    $prefix         = '';
    $controllerName = 'notify';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/no-permission',                             [ 'as' => $controllerName . '/noPermission',                  'uses' => $controller . 'noPermission' ]);
    });

    // ====================== LOGIN ========================
    // news69/login
    $prefix         = '';
    $controllerName = 'auth';
    
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/userlogin',        ['as' => $controllerName.'/login',      'uses' => $controller . 'login'])->middleware('check.login');
        Route::post('/postLogin',   ['as' => $controllerName.'/postLogin',  'uses' => $controller . 'postLogin']);

        // ====================== LOGOUT ========================
        Route::get('/logout',       ['as' => $controllerName.'/logout',     'uses' => $controller . 'logout']);
    });

    // ====================== RSS ========================
    $prefix         = '';
    $controllerName = 'rss';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/tin-tuc-tong-hop',                             [ 'as' => "$controllerName/index",                  'uses' => $controller . 'index' ]);
        Route::get('/get-gold',                             [ 'as' => "$controllerName/get-gold",                  'uses' => $controller . 'getGold' ]);
        Route::get('/get-coin',                             [ 'as' => "$controllerName/get-coin",                  'uses' => $controller . 'getCoin' ]);
    });
});

// bai-viet/suc-khoe-3.php

