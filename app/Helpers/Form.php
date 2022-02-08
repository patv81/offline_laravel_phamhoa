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
                    <label for="logo" class="control-label col-md-3 col-sm-3 col-xs-12">Logo</label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <a id="lfm" data-input="logo" data-preview="holder" class="btn btn-primary">
                            <i class="fa fa-picture-o"></i> Choose
                            </a>
                        </span>
                        %s
                    </div>
                    
                    <img id="holder" src="%s" style="margin-top:15px;max-height:100px;display: block;margin-left: auto;margin-right: auto;">
                    
                </div>',$element['element'],$element['image']);

                break;
        }

        return $xhtml;
    }
 
}


