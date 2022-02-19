
@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;

    $formInputAttr = config('zvn.template.form_input_tagify');
    $formLabelAttr = config('zvn.template.form_label');

    $inputHiddenID    = Form::hidden('id', @$item['id']);
    $submitBtn = Form::input('submit','saveAttribute', 'Save Attribute',['class'=>'btn btn-success']);
    $arr=[];
    $itemsAttribute->map(function ($item) use (&$arr,$formLabelAttr,$formInputAttr,$itemsAttributeValue) {
        $value='';
        if(!$itemsAttributeValue->isEmpty()) {
            $value= collect($itemsAttributeValue[$item['id']])->map(function($item){
                return ['value'=>$item['value']];
            });
            $value=json_encode($value);
        }
        $newArr =[
            'label'   => Form::label(@$item['id'], @$item['name'], $formLabelAttr),
            'element' => Form::textarea('arr['.@$item['id'].']', $value,  $formInputAttr )
        ];
        array_push($arr, $newArr);
    });
    $newArr = [
        'element' => $inputHiddenID  . $submitBtn,
        'type'    => "btn-submit-edit"
    ];
    array_push($arr,$newArr);
@endphp


<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            @include('admin.templates.x_title', ['title' => 'Thuộc tính sản phẩm'])
            <div class="x_content">
                {{ Form::open([
                    'method'         => 'POST', 
                    'url'            => route("$controllerName/save"),
                    'accept-charset' => 'UTF-8',
                    'enctype'        => 'multipart/form-data',
                    'class'          => 'form-horizontal form-label-left',
                    'id'             => 'main-form' ])  }}
                    {!! FormTemplate::show($arr)  !!}
                {{ Form::close() }}
            </div>
        </div>
    </div>
</div>
