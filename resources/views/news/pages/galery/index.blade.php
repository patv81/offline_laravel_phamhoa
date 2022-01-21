@extends('news.main')
@section('content')
<div class="section-category">

    <div class="content_container container_category">
        <div class="featured_title">
            <div class="container">
                <div class="row">
                    <!-- Main Content -->
                    @if(count($images)>0)
                        @foreach ($images as $image)    
                        <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                            <img style="width:100%;" src="{{ $image }}">
                        </div>
                        @endforeach
                    @endif
                    <!-- Sidebar -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection