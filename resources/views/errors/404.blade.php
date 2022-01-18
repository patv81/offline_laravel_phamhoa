@extends('news.main')
@section('content')

    <!-- Content Container -->
    <div class="content_container">
        <div class="container">
            <div class="row">
                <!-- Main Content -->
                <div class="col-lg-12">
                    <div class="main_content">
                        <div class="d-flex justify-content-center align-items-center">
                            <i class="fa fa-ambulance fa-5x"></i>
                            <div>
                                <h3>Không tìm thấy trang</h3>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <a href="{{ route('home') }}">Quay lại trang chủ</a>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </div>
@endsection