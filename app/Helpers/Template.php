<?php 
namespace App\Helpers;
use Config;
use App\Models\CategoryModel;
class Template {
    public static function showButtonFilter ($controllerName, $itemsStatusCount, $currentFilterStatus, $paramsSearch,$paramCategory='') { // $currentFilterStatus active inactive all
        $xhtml = null;
        $tmplStatus = Config::get('zvn.template.status');

        if (count($itemsStatusCount) > 0) {
            array_unshift($itemsStatusCount , [
                'count'   => array_sum(array_column($itemsStatusCount, 'count')),
                'status'  => 'all'
            ]);

            foreach ($itemsStatusCount as $item) {  // $item = [count,status]
                $statusValue = $item['status'];  // active inactive block
                $statusValue = array_key_exists($statusValue, $tmplStatus ) ? $statusValue : 'default';

                $currentTemplateStatus = $tmplStatus[$statusValue]; // $value['status'] inactive block active
                $link = route($controllerName) . "?filter_status=" .  $statusValue;

                if($paramsSearch['value'] !== ''){
                    $link .= "&search_field=" . $paramsSearch['field'] . "&search_value=" .  $paramsSearch['value'];
                }
                if($paramCategory !== ''){
                    $link .= "&filter_category=" . $paramCategory;
                }
                $class  = ($currentFilterStatus == $statusValue) ? 'btn-danger' : 'btn-info';
                $xhtml  .= sprintf('<a href="%s" type="button" class="btn %s">
                                    %s <span class="badge bg-white">%s</span>
                                </a>', $link, $class, $currentTemplateStatus['name'], $item['count']);
            }
        }

        return $xhtml;
    }

    public static function showAreaSearch ($controllerName, $paramsSearch) { 
        $xhtml = null;
        $tmplField         = Config::get('zvn.template.search');
        $fieldInController = Config::get('zvn.config.search');

        $controllerName = (array_key_exists($controllerName, $fieldInController)) ? $controllerName : 'default';
        $xhtmlField = null;

        foreach($fieldInController[$controllerName] as $field)  {// all id
            $xhtmlField .= sprintf('<li><a href="#" class="select-field" data-field="%s">%s</a></li>', $field, $tmplField[$field]['name']);
        }
       
        $searchField = (in_array($paramsSearch['field'],  $fieldInController[$controllerName] )) ? $paramsSearch['field'] : "all";

        $xhtml = sprintf('
            <div class="input-group">
                <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle btn-active-field" data-toggle="dropdown" aria-expanded="false">
                        %s <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                        %s
                    </ul>
                </div>
                <input type="text" name="search_value" value="%s" class="form-control" >
                <input type="hidden" name="search_field" value="%s">
                <span class="input-group-btn">
                    <button id="btn-clear-search" type="button" class="btn btn-success" style="margin-right: 0px">Xóa tìm kiếm</button>
                    <button id="btn-search" type="button" class="btn btn-primary">Tìm kiếm</button>
                </span>
            </div>', $tmplField[$searchField]['name'], $xhtmlField, $paramsSearch['value'], $searchField);
        return $xhtml;
    }

    public static function showItemHistory ($by, $time) {
        $xhtml = sprintf(
            '<p><i class="fa fa-user"></i> %s</p>
            <p><i class="fa fa-clock-o"></i> %s</p>', $by, date(Config::get('zvn.format.short_time'), strtotime($time)) );
        return $xhtml;
    }

    public static function showItemStatus ($controllerName, $id, $statusValue) {
        $tmplStatus = Config::get('zvn.template.status');
        $statusValue        = array_key_exists($statusValue, $tmplStatus ) ? $statusValue : 'default';
        $currentTemplateStatus = $tmplStatus[$statusValue];
        $link          = route($controllerName . '/status', ['status' => $statusValue, 'id' => $id]);

        $xhtml = sprintf(
            '<button data-url="%s" type="button" data-class="%s" class="btn btn-round %s status-ajax">%s</button>', $link , $currentTemplateStatus['class'], $currentTemplateStatus['class'], $currentTemplateStatus['name']  );
        return $xhtml;
    }

    public static function showItemIsHome ($controllerName, $id, $isHomeValue) {
        $tmplIsHome = Config::get('zvn.template.is_home');
        $isHomeValue        = array_key_exists($isHomeValue, $tmplIsHome ) ? $isHomeValue : 'yes';
        $currentTemplateIsHome = $tmplIsHome[$isHomeValue];
        $link          = route($controllerName . '/isHome', ['is_home' => $isHomeValue, 'id' => $id]);

        $xhtml = sprintf(
            '<button data-url="%s" type="button" data-class="%s" class="btn btn-round %s is-home-ajax">%s</button>', $link , $currentTemplateIsHome['class'], $currentTemplateIsHome['class'], $currentTemplateIsHome['name']  );
        return $xhtml;
    }

    public static function showItemSelect($controllerName, $id, $displayValue, $fieldName)
    {
       $link          = route($controllerName . '/' . $fieldName, [$fieldName => 'value_new', 'id' => $id]);
        
       $tmplDisplay = Config::get('zvn.template.' . $fieldName);
       $xhtml = sprintf('<select name="select_change_attr" data-url="%s" class="form-control">', $link  );

        foreach ($tmplDisplay as $key => $value) {
           $xhtmlSelected = '';
           if ($key == $displayValue) $xhtmlSelected = 'selected="selected"';
            $xhtml .= sprintf('<option value="%s" %s>%s</option>', $key, $xhtmlSelected, $value['name']);
        }
        $xhtml .= '</select>';

        return $xhtml;
    }

    public static function showItemThumb ($controllerName, $thumbName, $thumbAlt) {
        $xhtml = sprintf(
            '<img src="%s" alt="%s" class="zvn-thumb">', asset("images/$controllerName/$thumbName")  , $thumbAlt );
        return $xhtml;
    }

    public static function showButtonAction ($controllerName, $id) {
        $tmplButton   = Config::get('zvn.template.button');
        $buttonInArea = Config::get('zvn.config.button');
        $controllerName = (array_key_exists($controllerName, $buttonInArea)) ? $controllerName : "default";
        $listButtons    = $buttonInArea[$controllerName]; // ['edit', 'delete']

        $xhtml = '<div class="zvn-box-btn-filter">';

        foreach ($listButtons as $btn) {
            $currentButton = $tmplButton[$btn];

            $link = route($controllerName . $currentButton['route-name'], ['id' => $id] );
            $xhtml .= sprintf(
                '<a href="%s" type="button" class="btn btn-icon %s" data-toggle="tooltip" data-placement="top" 
                    data-original-title="%s">
                    <i class="fa %s"></i>
                </a>', $link, $currentButton['class'], $currentButton['title'], $currentButton['icon']);
        }

        $xhtml .= '</div>';

        return $xhtml;
    }

    public static function showDatetimeFrontend($dateTime)
    {
        return date_format(date_create($dateTime), Config::get('zvn.format.short_time'));
    }

    public static function showContent($content, $length, $prefix = '...')
    {
        $prefix = ($length == 0) ? '' : $prefix;
        $content = str_replace(['<p>', '</p>'], '', $content);
        return preg_replace('/\s+?(\S+)?$/', '', substr($content, 0, $length)) . $prefix;
    }
    public static function showItemSelect2($controllerName, $id, $displayValue, $fieldName,$tmplDisplay)
    {
       $link          = route($controllerName . '/' . $fieldName, [$fieldName => 'value_new', 'id' => $id]);
        
    //    $tmplDisplay = Config::get('zvn.template.' . $fieldName);
       $xhtml = sprintf('<select name="select_change_attr" data-url="%s" class="form-control">', $link  );

        foreach ($tmplDisplay as $key => $value) {
           $xhtmlSelected = '';
           if ($key == $displayValue) $xhtmlSelected = 'selected="selected"';
            $xhtml .= sprintf('<option value="%s" %s>%s</option>', $key, $xhtmlSelected, $value['name']);
        }
        $xhtml .= '</select>';

        return $xhtml;
    }
    public static function showNestedName($name,$level){
        $xhtml = sprintf(
            '<span class="badge">%s</span><strong>%s</strong>',
                $level-1, 
                str_repeat('|----',$level-1).$name);
        return $xhtml ;
    }
    public static function showNestedOrder($id){
        
        $upBtn =  sprintf(
        '<a href="%s" type="button" class="btn btn-primary">
            <i class="fa fa-long-arrow-up"></i>
        </a>'
        ,route( 'category/move' , [ 'id' => $id , 'type' => 'up'] ) );
        $downBtn = sprintf(
        '<a href="%s" type="button" class="btn btn-primary">
            <i class="fa fa-long-arrow-down"></i>
        </a>'
        ,route( 'category/move' , [ 'id' => $id , 'type' => 'down'] ) );
        $node = CategoryModel::find($id);
        if (empty($node->getPrevSibling())){
            $upBtn='';
        }
        if(empty($node->getNextSibling())){
            $downBtn='';
        }
        return $upBtn.$downBtn;

    }
    
    public static function showNestedCategory($name,$arr){
        // $test=
        // '<li class="nav-item dropdown">
        //     <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">  Treeview menu  </a>
        //     <ul class="dropdown-menu">
        //     <li><a class="dropdown-item" href="#"> Dropdown item 1 </a></li>
        //     <li><a class="dropdown-item" href="#"> Dropdown item 2 &raquo </a>
        //         <ul class="submenu dropdown-menu">
        //             <li><a class="dropdown-item" href="">Submenu item 1</a></li>
        //             <li><a class="dropdown-item" href="">Submenu item 2</a></li>
        //             <li><a class="dropdown-item" href="">Submenu item 3 &raquo </a>
        //                 <ul class="submenu dropdown-menu">
        //                     <li><a class="dropdown-item" href="">Multi level 1</a></li>
        //                     <li><a class="dropdown-item" href="">Multi level 2</a></li>
        //                 </ul>
        //             </li>
        //             <li><a class="dropdown-item" href="">Submenu item 4</a></li>
        //             <li><a class="dropdown-item" href="">Submenu item 5</a></li>
        //         </ul>
        //     </li>
        //     <li><a class="dropdown-item" href="#"> Dropdown item 3 </a></li>
        //     <li><a class="dropdown-item" href="#"> Dropdown item 4 </a>
        //     </ul>
        // </li>';
        $re = sprintf('<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">%s</a>
            <ul class="dropdown-menu">',$name);
        $traverse = function ($categories) use (&$traverse,&$re) {
            foreach ($categories as $category) {
                if(!empty($category['children'])){ 
                    $re.=sprintf('<li><a class="dropdown-item dropdown-toggle" href="#">%s</a>',
                    $category['name']);
                    $re.=' <ul class="submenu dropdown-menu">';
                    $traverse($category['children']);
                    $re.='</ul></li>';
                }else{
                    $re.= sprintf('<li><a class="dropdown-item" href="#">%s</a></li>',$category['name']);
                }

            }
        };
        $traverse($arr);
        $re.='</ul>
        </li>';
        return $re;
    }
    public static function showItemSelectFilter($displayValue, $tmplDisplay)
    {
        
        $tmplDisplay['all']= 'Tất cả';
       $xhtml = sprintf('<select name="filter_category" data-url="%s" class="form-control">', '#'  );

        foreach ($tmplDisplay as $key => $value) {
           $xhtmlSelected = '';
           if ($key == $displayValue) $xhtmlSelected = 'selected="selected"';
            $xhtml .= sprintf('<option value="%s" %s>%s</option>', $key, $xhtmlSelected, $value);
        }
        $xhtml .= '</select>';

        return $xhtml;
    }
    public static function showItemSelectAjax($controllerName, $id, $allItems, $currentKeyItem,$fieldName)
    {
        
        $link          = route($controllerName . '/attribute' , ['value' => 'value_new', 'id' => $id,'field' => $fieldName]);
        $xhtml = sprintf('<select name="select_change_attr" data-url="%s" data-field="%s" class="form-control">', $link ,$fieldName );

            foreach ($allItems as $key => $value) {
            $xhtmlSelected = '';
            if ($key == $currentKeyItem) $xhtmlSelected = 'selected="selected"';
                $xhtml .= sprintf('<option value="%s" %s>%s</option>', $key, $xhtmlSelected, $value);
            }
            $xhtml .= '</select>';

            return $xhtml;
    }

    public static function showItemThumbLFM($controllerName, $thumbName, $thumbAlt) {
        $xhtml = sprintf(
            '<img src="%s" alt="%s" class="zvn-thumb">', asset($thumbName)  , $thumbAlt );
        return $xhtml;
    }
}
