@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;
    $item = $itemEmail;
    $formInputAttrTagify = config('zvn.template.form_input_tagify');
    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label');
    $formCkeditor  = config('zvn.template.form_ckeditor');
//    $inputHiddenTask    = Form::hidden('task', 'setting-email');
    $inputHiddenTask =  sprintf('<input name="task" type="hidden" value="%s">','setting-email');
    $elements = [
        [
            'label'   => Form::label('username', 'Tên gmail', $formLabelAttr),
            'element' => Form::text('username', @$item['username'], $formInputAttr )
        ],
        [
            'label'   => Form::label('password', 'Mật khẩu ứng dụng', $formLabelAttr),
            'element' => Form::text('password', @$item['password'], $formInputAttr )
        ],
        [
            'label'   => Form::label('bcc', 'BCC', $formLabelAttr),
            'element' => Form::textarea('bcc', @$item['bcc'], $formInputAttrTagify )
        ],

        [
            'element' => $inputHiddenTask . Form::submit('Save', ['class'=>'btn btn-success']),
            'type'    => "btn-submit"
        ]
    ];
@endphp
    @include ('admin.templates.error')

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'Form'])
                <div class="x_content">
                    {{ Form::open([
                        'method'         => 'POST', 
                        'url'            => route("$controllerName/save"),
                        'accept-charset' => 'UTF-8',
                        'enctype'        => 'multipart/form-data',
                        'class'          => 'form-horizontal form-label-left',
                        'id'             => 'main-form' ])  }}
                        {!! FormTemplate::show($elements)  !!}
                    {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>

