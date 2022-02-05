@extends('news.main')
@section('content')
    <div class="section-category">
        @include('news.block.breadcrumb', ['item' => ['name' => $title]])
        <div class="content_container container_category">
            <div class="featured_title">
                <div class="container">
                    <div class="row">
                        <!-- Main Content -->
                        <div class="col-lg-12">
                            {{-- @include('news.pages.rss.child-index.list', ['items' => $items]) --}}
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                    <div class="d-flex align-items-center justify-content-center flex-column p-2">
                                        <div>
                                            <i class="fa fa-map-marker fa-5x" aria-hidden="true"></i>
                                        </div>
                                        <div class="text-center">
                                            <h3>Địa chỉ</h3>
                                            <p>Tầng 6, Nguyễn Hữu cảnh</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                    <div class="d-flex align-items-center justify-content-center flex-column p-2">
                                        <div>
                                            <i class="fa fa-phone fa-5x" aria-hidden="true"></i>
                                        </div>
                                        <div class="text-center">
                                            <h3>Địa chỉ</h3>
                                            <p>Tầng 6, Nguyễn Hữu cảnh</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                    <div class="d-flex align-items-center justify-content-center flex-column p-2">
                                        <div>
                                            <i class="fa fa-envelope-o fa-5x" aria-hidden="true"></i>
                                        </div>
                                        <div class="text-center">
                                            <h3>Địa chỉ</h3>
                                            <p>Tầng 6, Nguyễn Hữu cảnh</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7836.703609635648!2d106.73565099548324!3d10.860824061313805!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3bb323b29d50dca9!2zWmVuZFZOIC0gxJDDoG8gVOG6oW8gTOG6rXAgVHLDrG5oIFZpw6pu!5e0!3m2!1svi!2s!4v1621672094349!5m2!1svi!2s"
                                        width="100%" height="500" style="border:0;" allowfullscreen=""
                                        loading="lazy"></iframe>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                                    <div class="p-2">
                                        <h4>Gửi tin nhắn cho chúng tôi</h4>
                                        <p>Bạn chỉ cần điền đầy đủ thông tin cho chúng tôi, sau khi nhận được tin nhắn chúng tôi sẽ liên hệ với các bạn trong thời gian sớm nhất</p>
                                        <form method="POST" action="{{ route('contact/save') }}">
                                            @csrf
                                            <div class="form-group">
                                                <label for="fullname">Họ tên</label>
                                                <input name="fullname" type="text" class="form-control" id="fullname"
                                                    placeholder="Họ và tên">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input name="email" type="email" class="form-control" id="exampleInputEmail1"
                                                    aria-describedby="emailHelp" placeholder="Enter email">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <input name="phone" type="text" class="form-control" id="phone"
                                                    placeholder="Số điện thoại">
                                            </div>
                                            <div class="form-group">
                                                <label for="message">Lời nhắn</label>
                                                <textarea name="message" class="form-control" id="message" rows="3"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
