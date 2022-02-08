@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;

    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label');
    $formCkeditor  = config('zvn.template.form_ckeditor');
    $statusValue      = ['default' => 'Select status', 'active' => config('zvn.template.status.active.name'), 'inactive' => config('zvn.template.status.inactive.name')];

    $inputHiddenTask    = Form::hidden('task', 'setting-main');
    $inputHiddenLogo = Form::hidden('thumb_current', @$item['thumb']);
    $elements = [
        [
            'label'   => Form::label('logo', 'Logo', $formLabelAttr),
            'element' => Form::text('logo', @$item['logo'], $formInputAttr),
            'image'   => @$item['logo'],
            'type'    => "logo"
        ],
        [
            'label'   => Form::label('copyright', 'Copyright', $formLabelAttr),
            'element' => Form::text('copyright', @$item['copyright'], $formInputAttr )
        ],
        [
            'label'   => Form::label('timework', 'Thời gian làm việc', $formLabelAttr),
            'element' => Form::text('timework', @$item['timework'], $formInputAttr )
        ],
        [
            'label'   => Form::label('address', 'Địa chỉ', $formLabelAttr),
            'element' => Form::text('address', @$item['address'], $formInputAttr )
        ],
        [
            'label'   => Form::label('sologan', 'Sologan', $formLabelAttr),
            'element' => Form::text('sologan', @$item['sologan'], $formInputAttr )
        ],
        [
            'label'   => Form::label('desctiption', 'Giới thiệu', $formLabelAttr),
            'element' => Form::textArea('desctiption', @$item['desctiption'],  array_merge($formCkeditor,['id'=>'my-editor']) )
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

