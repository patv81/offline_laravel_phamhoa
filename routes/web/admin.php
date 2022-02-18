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
$prefixAdmin = config('zvn.url.prefix_admin');

Route::group(['prefix' => $prefixAdmin, 'namespace' => 'Admin', 'middleware' => ['permission.admin']], function () {
    // ============================== DASHBOARD ==============================
    $prefix         = 'dashboard';
    $controllerName = 'dashboard';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
    });

    // ============================== SLIDER ==============================
    $prefix         = 'slider';
    $controllerName = 'slider';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                    [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                         [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                   [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',   [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });

    // ============================== CATEGORY ==============================
    $prefix         = 'category';
    $controllerName = 'category';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
        Route::get('change-is-home-{is_home}/{id}',      [ 'as' => $controllerName . '/isHome',      'uses' => $controller . 'isHome'])->where('id', '[0-9]+');
        Route::get('change-display-{display}/{id}',     [ 'as' => $controllerName . '/display',     'uses' => $controller . 'display']);
        Route::get('move-{type}/{id}',                  [ 'as' => $controllerName . '/move',     'uses' => $controller . 'move']);
    });

    // ============================== ARTICLE ==============================
    $prefix         = 'article';
    $controllerName = 'article';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status']);
        Route::get('change-type-{type}/{id}',           [ 'as' => $controllerName . '/type',        'uses' => $controller . 'type']);
        Route::get('change-attribute-{value}/{field}/{id}',     [ 'as' => $controllerName . '/attribute',        'uses' => $controller . 'changeAttribute']);
    });

    // ============================== USER ==============================
    $prefix         = 'user';
    $controllerName = 'user';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::post('change-password',                  [ 'as' => $controllerName . '/change-password',        'uses' => $controller . 'changePassword']);
        Route::post('change-level',                     [ 'as' => $controllerName . '/change-level',        'uses' => $controller . 'changeLevel']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status']);
        Route::get('change-level-{level}/{id}',         [ 'as' => $controllerName . '/level',      'uses' => $controller . 'level']);
    });

    // ============================== RSS ==============================
    $prefix         = 'rss';
    $controllerName = 'rss';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                    [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                         [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                   [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',   [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });
    // ============================== MENU ==============================
    $prefix         = 'menu';
    $controllerName = 'menu';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
        Route::get('change-menu-type-{type_menu}/{id}',      [ 'as' => $controllerName . '/type_menu',        'uses' => $controller . 'menu'])->where('id', '[0-9]+');
        Route::get('change-open-type-{type_open}/{id}',      [ 'as' => $controllerName . '/type_open',        'uses' => $controller . 'typeopen'])->where('id', '[0-9]+');
    });
    // ============================== MYSELF ==============================
    $prefix         = 'myself';
    $controllerName = 'myself';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::post('change-password',                  [ 'as' => $controllerName . '/change-password',        'uses' => $controller . 'changePassword']);
    });
    // ============================== GALERY ==============================
    $prefix         = 'galery';
    $controllerName = 'galery';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
    });
    // ============================== GENERAL ==============================
    $prefix         = 'general';
    $controllerName = 'general';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('testmail',                             [ 'as' => $controllerName . '/testmail',        'uses' => $controller . 'testmail']);
    });
    // ============================== CONTACT ==============================
    $prefix         = 'contact';
    $controllerName = 'contact';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('change-status-{status}/{id}',   [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });
    // ============================== LOGS ==============================
    $prefix         = 'logs';
    Route::group(['prefix' =>  $prefix], function () {
        Route::get('/', function(){
            return view('admin.pages.logs.index');
        })->name('logs');
    });
        // ============================== ATTRIBUTE ==============================
    $prefix         = 'attribute';
    $controllerName = 'attribute';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                    [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                         [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                   [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',   [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });
    // ============================== CATEGORYPRODUCT ==============================
    $prefix         = 'categoryproduct';
    $controllerName = 'categoryproduct';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
        Route::get('change-is-home-{is_home}/{id}',      [ 'as' => $controllerName . '/isHome',      'uses' => $controller . 'isHome'])->where('id', '[0-9]+');
        Route::get('change-display-{display}/{id}',     [ 'as' => $controllerName . '/display',     'uses' => $controller . 'display']);
        Route::get('move-{type}/{id}',                  [ 'as' => $controllerName . '/move',     'uses' => $controller . 'move']);
    });

    // ============================== PRODUCT ==============================
    $prefix         = 'product';
    $controllerName = 'product';
    Route::group(['prefix' =>  $prefix], function () use($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 [ 'as' => $controllerName,                  'uses' => $controller . 'index' ]);
        Route::get('form/{id?}',                        [ 'as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             [ 'as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       [ 'as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       [ 'as' => $controllerName . '/status',      'uses' => $controller . 'status']);
        Route::get('change-type-{type}/{id}',           [ 'as' => $controllerName . '/type',        'uses' => $controller . 'type']);
        Route::get('change-attribute-{value}/{field}/{id}',     [ 'as' => $controllerName . '/attribute',        'uses' => $controller . 'changeAttribute']);
    });

});
