@php
    use App\Helpers\URL;
    use App\Models\CategoryModel;
    $categories = CategoryModel::defaultOrder()
        ->withDepth()->having('depth','>',0)
        ->ancestorsAndSelf($item['category_id'])
        ->toFlatTree()->toArray();
@endphp

<div class="home">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{!! asset('news/images/footer.jpg') !!}" data-speed="0.8"></div>
    <div class="home_content_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_content">
                        <div class="home_title">{!! $item['name'] !!}</div>
                        <div class="breadcrumbs">
                            <ul class="d-flex flex-row align-items-start justify-content-start">
                                <li><a href="{!! route('home')!!}">Trang chủ</a></li>
                                @foreach ($categories as $category)
                                    @php
                                        $linkCategory  =  URL::linkCategory($category['id'], $category['name']);
                                    @endphp
                                    <li><a href="{!! $linkCategory !!}">{!! $category['name'] !!}</a></li>
                                @endforeach
                                <li>{!! $item['name'] !!}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>