<!-- menu profile quick info -->
<div class="profile clearfix">
    <div class="profile_pic">
        <img src="{{ asset('admin/img/img.jpg') }}" alt="..." class="img-circle profile_img">
    </div>
    <div class="profile_info">
        <span>Welcome,</span>
        <h2>luutruonghailan</h2>
    </div>
</div>
<!-- /menu profile quick info -->
<br/>
<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>Menu</h3>
        <ul class="nav side-menu">

            <li><a href="{{ route('dashboard') }}"><i class="fa fa-home"></i> Dashboard</a></li>
            <li><a href="{{ route('user') }}"><i class="fa fa-user"></i> User</a></li>
            <li class=""><a><i class="fa fa-newspaper-o"></i> Article Manager <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none;">
                    <li><a href="{{ route('category') }}">Article Category</a></li>
                    <li><a href="{{ route('article') }}">Article</a></li>
                </ul>
            </li>
            <li class=""><a><i class="fa fa-shopping-basket "></i> Product Manager <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none;">
                    <li><a href="#">Product Category</a></li>
                    <li><a href="#">Product</a></li>
                </ul>
            </li>
            <li><a href="{{ route('slider') }}"><i class="fa fa-sliders"></i> Silders</a></li>
            <li><a href="{{ route('rss') }}"><i class="fa fa-newspaper-o"></i> Rss</a></li>
            <li><a href="{{ route('galery') }}"><i class="fa fa-building-o"></i> Galery</a></li>
            <li><a href="{{ route('menu') }}"><i class="fa fa-sliders"></i> Menu</a></li>
            <li><a href="{{ route('contact') }}"><i class="fa fa-building-o"></i> Contact</a></li>
            <li><a href="{{ route('general') }}"><i class="fa fa-wrench"></i> Genral</a></li>
            <li><a href="{{ route('attribute') }}"><i class="fa fa-laptop"></i> Attribute</a></li>
            <li><a href="{{ route('logs') }}"><i class="fa fa-laptop"></i> Logs</a></li>
        </ul>
    </div>
</div>
<!-- /sidebar menu -->
