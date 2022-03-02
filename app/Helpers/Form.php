<?php 
namespace App\Helpers;
use Config;

class Form {
    public static function show ($elements) { 
        $xhtml = null;
        foreach ($elements as $element) {
            $xhtml .= self::formGroup($element,$element['params']??null);
        }
        return $xhtml;
    }

    public static function formGroup ($element, $params = null) {
        $type = isset($element['type']) ? $element['type'] : "input";
        $xhtml = null;

        switch ($type) {
            case 'input':
                $xhtml .= sprintf(
                    '<div class="form-group">
                        %s
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            %s
                        </div>
                    </div>', $element['label'], $element['element']
                );
                break;
            case 'thumb':
                $xhtml .= sprintf(
                    '<div class="form-group">
                        %s
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            %s
                            <p style="margin-top: 50px;">%s</p>
                        </div>
                    </div>', $element['label'], $element['element'], $element['thumb']
                );
                break;
            case 'avatar':
                $xhtml .= sprintf(
                    '<div class="form-group">
                        %s
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            %s
                            <p style="margin-top: 50px;">%s</p>
                        </div>
                    </div>', $element['label'], $element['element'], $element['avatar']
                );
                break;
            case 'btn-submit':
                $xhtml .= sprintf(
                    '<div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            %s
                        </div>
                    </div>', $element['element']
                );
                break;
            case 'btn-submit-edit':
                $xhtml .= sprintf(
                    '<div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
                            %s
                        </div>
                    </div>', $element['element']
                );
                break;
            case 'logo':
                $xhtml.=sprintf(
                '<div class="form-group">
                    %s
                    <div class="input-group col-md-6 col-sm-6 col-xs-12">
                        <span class="input-group-btn">
                            <a id="lfm" data-input="%s" data-preview="holder" class="btn btn-primary">
                            <i class="fa fa-picture-o"></i> Choose
                            </a>
                        </span>
                        %s
                    </div>
                    
                    <img id="holder" src="%s" style="margin-top:15px;max-height:100px;display: block;margin-left: auto;margin-right: auto;">
                    
                </div>',$element['label'],$element['nameInput']??'logo',$element['element'],$element['image']);
                break;
            case 'dropzone':
                $xhtml.=sprintf(
                '<div class="form-group">
                    %s
                    <div class="input-group col-md-6 col-sm-6 col-xs-12">
                        <div class="dropzone" id="dropzone"></div>
                    </div>
                </div>',$element['label']);
                break;
            case 'coupon':
                $xhtml .= sprintf(
                    '<div class="form-group" >
                        %s
                        <div class="col-md-5 col-sm-5 col-xs-11">
                            %s
                        </div>
                        <div class="col-md-1 col-sm-1 col-xs-1">
                            <button id="generate-coupon" class="btn btn-primary">Generate</button>
                        </div>
                    </div>', $element['label'], $element['element']
                );
                break;
            case 'time':
                // <input type="text" name="reservation-time" id="reservation-time" class="form-control" value="01/01/2016 - 01/25/2016">
                $xhtml.=sprintf(
                    '<div class="form-group" >
                        <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Áp dụng trong khoảng thời gian</label>
                        <div class="col-md-6">

                            <div class="form-horizontal">
                            <fieldset>
                                <div class="control-group">
                                <div class="controls">
                                    <div class="input-prepend input-group">
                                    <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                    <input type="text" name="reservation-time" id="reservation-time" class="form-control" value="01/01/2016 - 01/25/2016">
                                    </div>
                                </div>
                                </div>
                            </fieldset>
                            </div>
                        </div>
                        
                    </div>'//, $element['label'], $element['element']
                );
                break;
            case 'form-inline':
                // <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Áp dụng khi giá trị tổng đơn hàng</label>
                // <label for="name" class="control-label">Từ</label>
                // <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Từ">
                $xhtml.=sprintf('
                <div class="form-group">
                    %s
                    <div class="form-inline ">
                        <div class="form-group" style="padding-left:10px;">
                            %s
                            %s
                        </div>
                        <div class="form-group" style="padding-left:10px;">
                            %s
                            %s
                        </div>

                    </div>
                </div>
                ',$element['mainLabel'],$element['label1'],$element['element1'],$element['label2'],$element['element2']);
                break;
            
            case 'time2':
                $xhtml.=sprintf('
                <div class="form-group">
                    %s
                    <div class="form-inline ">
                        <div class="form-group" style="padding-left:10px;">
                            %s
                            %s
                        </div>
                        <div class="form-group" style="padding-left:10px;">
                            %s
                            %s
                        </div>

                    </div>
                </div>
                ',$element['mainLabel'],$element['label1'],$element['element1'],$element['label2'],$element['element2']);
                break;
        }

        return $xhtml;
    }
 
}


