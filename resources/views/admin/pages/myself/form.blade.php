@extends('admin.main')

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => false])
    @include ('admin.templates.error')
    @include ('admin.templates.zvn_notify')
    
    @if ( @$item['id'])
        <div class="row">
            @include('admin.pages.myself.form_change_password')
        </div>
    @else
        @include('admin.pages.user.form_add')
    @endif
@endsection