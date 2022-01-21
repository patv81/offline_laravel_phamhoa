@extends('admin.main')
@php
    use App\Helpers\Template as Template;
@endphp

@section('content')
    
    
    @include ('admin.templates.zvn_notify')


    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'File manager'])
                <iframe src="{{ route("unisharp.lfm.show") }}" style="width: 100%; height: 500px; overflow: hidden; border: none;"></iframe>
            </div>
        </div>
    </div>
@endsection
