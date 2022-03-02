@extends('admin.main')
@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;

    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label');

    $statusValue      = ['default' => 'Select status', 'active' => config('zvn.template.status.active.name'), 'inactive' => config('zvn.template.status.inactive.name')];

    $inputHiddenID    = Form::hidden('id', @$item['id']);

    $elements = [
        [
            'label'   => Form::label('name', 'Tên khuyến mãi', $formLabelAttr),
            'element' => Form::text('name', @$item['name'], $formInputAttr ),
        ],
        [
            'label'   => Form::label('code', 'Code', $formLabelAttr),
            'element' => Form::text('code', @$item['code'],  $formInputAttr ),
            'type'    => 'coupon',
        ],
        [
            'label'   => Form::label('status', 'Status', $formLabelAttr),
            'element' => Form::select('status', $statusValue, @$item['status'], $formInputAttr)
        ],
        [
            'label'   => Form::label('MaxUsed', 'Số lần sử dụng', $formLabelAttr),
            'element' => Form::text('MaxUsed', @$item['MaxUsed'],  $formInputAttr ),
        ],
        [
            'label'   => Form::label('value_percent', 'Giảm theo giá trị %', $formLabelAttr),
            'element' => Form::text('value_percent', @$item['value_percent'],  $formInputAttr )
        ],
        [
            'label'   => Form::label('MaxReduce', 'Giảm tối đa theo giá trị %', $formLabelAttr),
            'element' => Form::text('MaxReduce', @$item['MaxReduce'],  $formInputAttr )
        ],
        [
            'label'   => Form::label('value_price', 'Giảm theo giá trị thật', $formLabelAttr),
            'element' => Form::text('value_price', @$item['value_price'],  $formInputAttr )
        ],
        /*[
            'label'   => Form::label('value_price', 'Áp dụng trong khoảng thời gian', $formLabelAttr),
            'element' => Form::text('value_price', @$item['value_price'],  $formInputAttr ),
            'type'    => 'time'
        ],*/
        [
            'mainLabel'=> Form::label('value_price', 'Áp dụng trong khoảng thời gian', $formLabelAttr),
            'label1'   => Form::label('timeStart', 'Từ', []),
            'element1' => Form::text('timeStart', @$item['timeStart'],  ['class' => 'form-control'] ),
            'label2'   => Form::label('timeEnd', 'Đến', []),
            'element2' => Form::text('timeEnd', @$item['timeEnd'],  ['class' =>'form-control'] ),
            'type'    => 'time2'
        ],
        [
            'mainLabel'=> Form::label('value_price', 'Áp dụng khi giá trị tổng đơn hàng', $formLabelAttr),
            'label1'   => Form::label('MinPriceBeApplied', 'Từ', []),
            'element1' => Form::text('MinPriceBeApplied', @$item['MinPriceBeApplied'],  ['class' => 'form-control'] ),
            'label2'   => Form::label('MaxPriceBeApplied', 'Đến', []),
            'element2' => Form::text('MaxPriceBeApplied', @$item['MaxPriceBeApplied'],  ['class' =>'form-control'] ),
            'type'    => 'form-inline'
        ],

        [
            'element' => $inputHiddenID . Form::submit('Save', ['class'=>'btn btn-success']),
            'type'    => "btn-submit"
        ]
    ];
@endphp

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => false])
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
    
@endsection

@section('after_script')
    <script>
        function init_datepicker(){
            console.log('init_datepicker 12345');
            let startDate =   $('input[name="timeStart"]').val();
            console.log(startDate);
            startDate =  startDate =='' ? moment().startOf('hour') :  new Date(startDate);
            let endDate =   $('input[name="timeEnd"]').val();
            endDate =  endDate =='' ? moment().startOf('hour') :  new Date(endDate);
            $('input[name="timeStart"]').daterangepicker({
                singleDatePicker: true,
                timePicker: true,
                startDate:  startDate,
                locale: {
                    format: 'MM/DD/YYYY h:mm A'
                }
            });
            $('input[name="timeEnd"]').daterangepicker({
                singleDatePicker: true,
                timePicker: true,
                startDate: endDate,
                locale: {
                    format: 'MM/DD/YYYY h:mm A'
                }
            });
        };
        $(document).ready(function () {
            init_datepicker();
        });
    </script>
@endsection