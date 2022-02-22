@extends('admin.main')
@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');
$formCkeditor = config('zvn.template.form_ckeditor');
$statusValue = ['default' => 'Select status', 'active' => config('zvn.template.status.active.name'), 'inactive' => config('zvn.template.status.inactive.name')];

$inputHiddenID = Form::hidden('id', @$item['id']);

$elements = [
    [
        'label' => Form::label('name', 'Name', $formLabelAttr),
        'element' => Form::text('name', @$item['name'], $formInputAttr),
    ],
    [
        'label' => Form::label('content', 'Content', $formLabelAttr),
        'element' => Form::textArea('content', @$item['content'], $formCkeditor),
    ],
    [
        'label' => Form::label('status', 'Status', $formLabelAttr),
        'element' => Form::select('status', $statusValue, @$item['status'], $formInputAttr),
    ],
    [
        'label' => Form::label('category_product_id', 'Category', $formLabelAttr),
        'element' => Form::select('category_product_id', $itemsCategory, @$item['category_id'], $formInputAttr),
    ],
    /*[
            'label'   => Form::label('thumb', 'Thumb', $formLabelAttr),
            'element' => Form::file('thumb', $formInputAttr ),
            'thumb'   => (!empty(@$item['id'])) ? Template::showItemThumb($controllerName, @$item['thumb'], @$item['name']) : null ,
            'type'    => "thumb"
        ],*/
    [
        'label' => Form::label('price', 'Price', $formLabelAttr),
        'element' => Form::number('price', @$item['price'], $formInputAttr),
    ],
    [
        'label' => Form::label('thumb', 'Thumb', $formLabelAttr),
        'type' => 'dropzone',
    ],
    [
        'element' => $inputHiddenID  . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
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
                        'method' => 'POST',
                        'url' => route("$controllerName/save"),
                        'accept-charset' => 'UTF-8',
                        'enctype' => 'multipart/form-data',
                        'class' => 'form-horizontal form-label-left',
                        'id' => 'main-form',
                    ]) }}
                    {!! FormTemplate::show($elements) !!}
                    {{ Form::close() }}
                    <div class="tpl2" style="display: none">
                        <div class="dz-preview dz-processing dz-image-preview dz-success dz-complete">
                            <div class="dz-image"><img data-dz-thumbnail>
                            </div>
                            <div class="dz-details">
                                <div class="dz-size" data-dz-size></div>
                                <div class="dz-filename" data-dz-name></div>
                            </div>
                            <div class="dz-progress"> <span class="dz-upload" data-dz-uploadprogress></span></div>
                            <div class="dz-error-message"><span data-dz-errormessage=""></span></div>
                            <div class="dz-success-mark"><span>✔</span></div>
                            <div class="dz-error-mark"><span>✘</span></div>
                            <div class="input-thumb" style="margin-top:5px;max-width:100%;display: block;width:120px">
                                <input style="width:120px;" type="text" placeholder="alt ảnh" name="thumb[alt][]"
                                    class="form-control dz-custom-input">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if (request()->id != null)
        @include('admin.pages.product.form_attribute')
    @endif
@endsection

@section('after_script')
    <script>
        let removeThumb=[];
        $(document).ready(function() {
            Dropzone.autoDiscover = false;
            // The constructor of Dropzone accepts two arguments:
            //
            // 1. The selector for the HTML element that you want to add
            //    Dropzone to, the second
            // 2. An (optional) object with the configuration
            let uploadDocumentMap={};
            
            $("#dropzone").sortable({});
            let myDropzone = new Dropzone("div#dropzone", {
                url: "{{ route('product/media') }}",
                dictDefaultMessage: "Kéo thả hình ảnh để tải lên",
                dictRemoveFile: "Xóa",
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                addRemoveLinks: true,
                acceptFile: ".jpg,jpeg,.png,.gif",
                previewTemplate: document.querySelector('.tpl2').innerHTML,
                error: function(file, response) {
                    console.log("Erro");
                    console.log(response);
                },
                success: function(file, response) {
                    console.log("Sucesso");
                    console.log(response);
                    $(file.previewElement)
                        .find('.input-thumb')
                        .append(`<input type="hidden" name="thumb[name][]" value="${response.name}" />`);
                    uploadDocumentMap[file.name]=response.name;
                },
                removedfile: function(file){
                    file.previewElement.remove();
                    var name ='';
                    if(typeof(file.name) !== 'undefined'){
                        name= file.name;
                    }else{
                        name=uploadDocumentMap[file.name]
                    }
                    $('#main-form').append(`<input type="hidden" name="removeThumb[]" value="${uploadDocumentMap[file.name]}" />`);
                },
                complete: function(file) {
                    console.log("Complete");
                },
                @if (isset($item['id']) && $item['thumb'])
                init: function(){
                    var files = JSON.parse({!! json_encode($item['thumb']) !!});
                    for (var i  in files){
                        var file = files[i];
                        var src = "{{ asset('images/product') }}"+"/"+file.name;
                        this.displayExistingFile(file,src);
                        file.previewElement.classList.add("dz-complete");
                        $(file.previewElement)
                            .find('.input-thumb')
                            .append(`<input type="hidden" name="thumb[name][]" value="${file.name}" />`);

                        $(file.previewElement).find('.input-thumb [name="thumb[alt][]"]').val(file.alt);
                    }
                }
                @endif
            });
        })
    </script>
@endsection
