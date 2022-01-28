@extends('admin.main')
@php
use App\Helpers\Template as Template;
@endphp

@section('content')
    @include ('admin.templates.zvn_notify')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#tab_content1" id="main-tab" role="tab"
                                    data-toggle="tab" aria-expanded="true">Main</a>
                            </li>
                            <li role="presentation" class=""><a href="#tab_content2" role="tab"
                                    id="profile-tab" data-toggle="tab" aria-expanded="false">Profile</a>
                            </li>
                            <li role="presentation" class=""><a href="#tab_content3" role="tab"
                                    id="profile-tab2" data-toggle="tab" aria-expanded="false">Profile</a>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1"
                                aria-labelledby="main-tab">
                                @include('admin.pages.general.form-main')
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                                    Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                    artisan four loko farm-to-table craft beer twee. Qui photo
                                    booth letterpress, commodo enim craft beer mlkshk aliquip</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                <p>xxFood truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee
                                    squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                    artisan four loko farm-to-table craft beer twee. Qui photo
                                    booth letterpress, commodo enim craft beer mlkshk </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
