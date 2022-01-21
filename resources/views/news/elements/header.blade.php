@php
use App\Models\CategoryModel as CategoryModel;
use App\Models\MenuModel as MenuModel;
use App\Helpers\URL;
use App\Helpers\CheckActive;

$categoryModel = new CategoryModel();
$menuModel = new MenuModel();
$itemsMenu = $menuModel->listItems(null, ['task' => 'news-list-items']);

$itemsCategory = $categoryModel->listItems(null, ['task' => 'news-list-items']);

$xhtmlMenu = '';
$xhtmlMenuMobile = '';
$currentRouteName = Route::currentRouteName();

$typeOpens=[
    'new_tab'=>'target="_blank"',
    'new_window'=>  "onclick=\"window.open(this.href, 
                         '_blank', 
                         'fullscreen=yes'); 
                         return false;\"",
    'current'=>'',
];
// not work 'fullscreen=yes,location=yes,menubar=yes,resizable=yes,titlebar=yes,toolbar=yes,scrollbars=yes,status=yes'); 
if (count($itemsMenu) > 0) {
    $xhtmlMenu = '<nav class="main_nav"><ul class="main_nav_list d-flex flex-row align-items-center justify-content-start">';
    $xhtmlMenuMobile = '<nav class="menu_nav"><ul class="menu_mm">';

    foreach ($itemsMenu as $menu) {
        $itemTypeOpen = $typeOpens[$menu['type_open']]??'';
        if ($menu['type_menu'] == 'link') {
            $classActive =CheckActive::typeLink($menu['link'],$currentRouteName );
            $xhtmlMenu .= sprintf('<li class="%s"><a %s href="%s">%s</a></li>', $classActive,$itemTypeOpen, $menu['link'],  $menu['name']);
            $xhtmlMenuMobile .= sprintf('<li class="menu_mm"><a href="%s">%s</a></li>', $menu['link'],  $menu['name']);
        } elseif ($menu['type_menu'] == 'category_article') {
            if (count($itemsCategory) > 0) {        
                $classActive =CheckActive::typeArticle(url()->current());
                $xhtmlMenu .= sprintf('<li class="nav-item dropdown %s">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    %s
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">',$classActive,$menu['name']);
                try {
                    if (is_null(Route::currentRouteName())) {
                        $categoryIdCurrent = null;
                    } else {
                        $categoryIdCurrent = Route::input('category_id');
                    }
                } catch (\Exception $e) {
                    ddd('test header error');
                }
                //$categoryIdCurrent=request()->input('category_id'); // not work
                foreach ($itemsCategory as $item) {
                    $link = URL::linkCategory($item['id'], $item['name']);
                    $classActive = $categoryIdCurrent == $item['id'] ? 'active' : '';
                    $xhtmlMenu .=sprintf('<a %s target="_blank" class="dropdown-item %s" href="%s">%s</a>',$itemTypeOpen,$classActive, $link, $item['name']);
                    $xhtmlMenuMobile .=sprintf('<a %s class="menu_mm dropdown-item %s" href="%s">%s</a>',$itemTypeOpen,$classActive, $link, $item['name']);
                }
                $xhtmlMenu .= sprintf('<a  class="dropdown-item" href="%s">Tin tức tổng hợp</a>', route('rss/index'));
                $xhtmlMenuMobile .= sprintf('<a class="menu_mm dropdown-item" href="%s">Tin tức tổng hợp</a>', route('rss/index'));
                $xhtmlMenu .= '</div></li>';
                
            }
        } elseif ($menu['type_menu'] == 'category_product') {
            $xhtmlMenu .= sprintf('<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    %s
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    </div></li>',$menu['name']);
        }
    }
    if (session('userInfo')) {
        $xhtmlMenuUser = sprintf('<li><a href="%s">%s</a></li>', route('auth/logout'), 'Logout');
    } else {
        $xhtmlMenuUser = sprintf('<li><a href="%s">%s</a></li>', route('auth/login'), 'Login');
    }

    $xhtmlMenu .= $xhtmlMenuUser . '</ul></nav>';
    $xhtmlMenuMobile .= $xhtmlMenuUser . '</ul></nav>';
}

@endphp

<header class="header">

    <!-- Header Content -->
    <div class="header_content_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justfy-content-start">
                        <div class="logo_container">
                            <a href="{!! route('home') !!}">
                                <div class="logo"><span>ZEND</span>VN</div>
                            </a>
                        </div>
                        <div class="header_extra ml-auto d-flex flex-row align-items-center justify-content-start">
                            <a href="#">
                                <div class="background_image"
                                    style="background-image:url({{ asset('news/images/zendvn-online.png') }});background-size: contain">
                                </div>

                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Navigation & Search -->
    <div class="header_nav_container" id="header">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_nav_content d-flex flex-row align-items-center justify-content-start">

                        <!-- Logo -->
                        <div class="logo_container">
                            <a href="#">
                                <div class="logo"><span>ZEND</span>VN</div>
                            </a>
                        </div>

                        <!-- Navigation -->
                        {!! $xhtmlMenu !!}

                        <!-- Hamburger -->
                        <div class="hamburger ml-auto menu_mm"><i class="fa fa-bars  trans_200 menu_mm"
                                aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
    <div class="menu_close_container">
        <div class="menu_close">
            <div></div>
            <div></div>
        </div>
    </div>

    {!! $xhtmlMenuMobile !!}


</div>
