<div class="navbar-area" id="stickymenu">
    <!-- Menu For Mobile Device -->
    <div class="mobile-nav">
        <a href="{{ route('home') }}" class="logo">
            <img src="{{ asset('uploads/'.$global_settings_data->logo) }}" alt="" />
        </a>
    </div>

    <!-- Menu For Desktop Device -->
    <div class="main-nav">
        <div class="container">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="{{ route('home') }}">
                    <img src="{{ asset('uploads/'.$global_settings_data->logo) }}" alt="" />
                </a>
                <div
                    class="collapse navbar-collapse mean-menu"
                    id="navbarSupportedContent"
                >
                    <ul class="navbar-nav ml-auto">
                        
                        <li class="nav-item {{ Request::is('/') ? 'active' : '' }}">
                            <a href="{{ route('home') }}" class="nav-link">Trang chủ</a>
                        </li>

                        <li class="nav-item {{ Request::is('job-listing')||Request::is('job/*') ? 'active' : '' }}">
                            <a href="{{ route('job_listing') }}" class="nav-link">Tìm công việc</a>
                        </li>

                        <li class="nav-item {{ Request::is('company-listing')||Request::is('company/*') ? 'active' : '' }}">
                            <a href="{{ route('company_listing') }}" class="nav-link">Nhà tuyển dụng</a>
                        </li>
                        
                        <li class="nav-item {{ Request::is('pricing') ? 'active' : '' }}">
                            <a href="{{ route('pricing') }}" class="nav-link">Gói thuê cho Nhà tuyển dụng</a>
                        </li>
                        
                        <li class="nav-item {{ Request::is('CV') ? 'active' : '' }}">
                            <a href="{{route('cv.index')}}" class="nav-link">Tạo hồ sơ</a>
                        </li>
                        

                        <li class="nav-item {{ Request::is('faq') ? 'active' : '' }}">
                            <a href="{{ route('faq') }}" class="nav-link">FAQs</a>
                        </li>

                        <li class="nav-item {{ Request::is('blog')||Request::is('post/*') ? 'active' : '' }}">
                            <a href="{{ route('blog') }}" class="nav-link">Cẩm nang việc làm</a>
                        </li>

                        <li class="nav-item {{ Request::is('contact') ? 'active' : '' }}">
                            <a href="{{ route('contact') }}" class="nav-link">Liên hệ</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>