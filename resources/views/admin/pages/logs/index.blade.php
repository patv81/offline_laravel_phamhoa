@extends('admin.main')
@php
    use App\Helpers\Template as Template;
@endphp

@section('content')
    
    
    @include ('admin.templates.zvn_notify')


    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <iframe src="/log-viewer" style="width: 100%; height: 800px; overflow: hidden; border: none;"></iframe>
            </div>
        </div>
    </div>
@endsection
