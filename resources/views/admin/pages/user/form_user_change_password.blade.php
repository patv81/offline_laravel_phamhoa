
@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;

    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label_edit');

    $inputHiddenID    = Form::hidden('id', @$item['id']);
    Form::macro('hiddenTask', function($name)
    {
        return sprintf('<input name="task" type="hidden" value="%s">',$name);
    });

    $inputHiddenTaskChangePassWord  = Form::hiddenTask('change-password');

    $elements = [
        [
            'label'   => Form::label('current_password', 'Mât khẩu hiện tại', $formLabelAttr),
            'element' => Form::password('current_password', $formInputAttr),
        ],
        [
            'label'   => Form::label('password', 'Mât khẩu mới', $formLabelAttr),
            'element' => Form::password('password', $formInputAttr),
        ],
        [
            'label'   => Form::label('password_confirmation', 'Xác nhận lại mật khẩu', $formLabelAttr),
            'element' => Form::password('password_confirmation', $formInputAttr),
        ],
        [
            'element' => $inputHiddenID . $inputHiddenTaskChangePassWord . Form::submit('Save change password', ['class'=>'btn btn-success']),
            'type'    => "btn-submit-edit"
        ]
    ];
@endphp


<div class="col-md-6 col-sm-12 col-xs-12">
    <div class="x_panel">
        @include('admin.templates.x_title', ['title' => 'Form Change Password'])
        <div class="x_content">
            {{ Form::open([
                'method'         => 'POST', 
                'url'            => route("$controllerName/change-password"),
                'accept-charset' => 'UTF-8',
                'enctype'        => 'multipart/form-data',
                'class'          => 'form-horizontal form-label-left',
                'id'             => 'main-form' ])  }}
                {!! FormTemplate::show($elements)  !!}
            {{ Form::close() }}
        </div>
    </div>
</div>
