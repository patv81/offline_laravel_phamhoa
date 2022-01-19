@extends('admin.main')
@section('content')
    <div class="page-header zvn-page-header clearfix">
        <div class="zvn-page-header-title">
            <h3>Dashboard</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Dashboard</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li class="pull-right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="row">
                                @include('admin.pages.dashboard.card',[
                                    'item'=>$categoryItems,
                                    'content'=>'Tổng số danh mục bài viết',
                                    'icon'=>'fa fa-newspaper-o fa-5x','url'=>route('category')])
                                @include('admin.pages.dashboard.card',[
                                    'item'=>$articleItems,
                                    'content'=>'Tổng số bài viết',
                                    'icon'=>'fa fa-newspaper-o fa-5x','url'=>route('article')])
                                @include('admin.pages.dashboard.card',[
                                    'item'=>$sliderItems,
                                    'content'=>'Tổng số slider',
                                    'icon'=>'fa fa-newspaper-o fa-5x','url'=>route('slider')])
                                @include('admin.pages.dashboard.card',[
                                    'item'=>$userItems,
                                    'content'=>'Tổng số user',
                                    'icon'=>'fa fa-newspaper-o fa-5x','url'=>route('user')])
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
