<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route('admin_home') }}">ADMIN TDMU JOBS</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route('admin_home') }}"></a>
        </div>

        <ul class="sidebar-menu">

            <li class="{{ Request::is('admin/home') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_home') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Dashboard"><i class="fas fa-hand-point-right"></i> <span>Trang quản trị TDMUJOBS</span></a></li>

            <li class="{{ Request::is('admin/settings') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_settings') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Settings"><i class="fas fa-hand-point-right"></i> <span>Cài đặt</span></a></li>

            <li class="nav-item dropdown {{ Request::is('admin/home-page')||Request::is('admin/faq-page')||Request::is('admin/blog-page')||Request::is('admin/term-page')||Request::is('admin/privacy-page')||Request::is('admin/contact-page')||Request::is('admin/job-category-page')||Request::is('admin/pricing-page')||Request::is('admin/other-page') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Cài đặt trang chủ TDMU JOBS</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/home-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_home_page') }}"><i class="fas fa-angle-right"></i> Trang chủ</a></li>
                    <li class="{{ Request::is('admin/faq-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_faq_page') }}"><i class="fas fa-angle-right"></i> Câu hỏi thường gặp</a></li>
                    <li class="{{ Request::is('admin/blog-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_blog_page') }}"><i class="fas fa-angle-right"></i> Bài Viết</a></li>
                    <li class="{{ Request::is('admin/term-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_term_page') }}"><i class="fas fa-angle-right"></i> Điều khoản sử dụng</a></li>
                    <li class="{{ Request::is('admin/privacy-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_privacy_page') }}"><i class="fas fa-angle-right"></i> Chính sách bảo mật</a></li>
                    <li class="{{ Request::is('admin/contact-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_contact_page') }}"><i class="fas fa-angle-right"></i> Liên hệ</a></li>
                    <li class="{{ Request::is('admin/job-category-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_category_page') }}"><i class="fas fa-angle-right"></i> Ngành nghề</a></li>
                    <li class="{{ Request::is('admin/pricing-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_pricing_page') }}"><i class="fas fa-angle-right"></i> Gói thuê</a></li>
                    <li class="{{ Request::is('admin/other-page') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_other_page') }}"><i class="fas fa-angle-right"></i> Khác</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown {{ Request::is('admin/job-category/*')||Request::is('admin/job-location/*')||Request::is('admin/job-type/*')||Request::is('admin/job-experience/*')||Request::is('admin/job-gender/*')||Request::is('admin/job-salary-range/*') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Cài đặt công việc</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/job-category/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_category') }}"><i class="fas fa-angle-right"></i> Ngành nghề</a></li>
                    <li class="{{ Request::is('admin/job-location/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_location') }}"><i class="fas fa-angle-right"></i> Nơi làm việc</a></li>
                    <li class="{{ Request::is('admin/job-type/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_type') }}"><i class="fas fa-angle-right"></i> Loại công việc</a></li>
                    <li class="{{ Request::is('admin/job-experience/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_experience') }}"><i class="fas fa-angle-right"></i> Kinh nghiệm làm việc</a></li>
                    <li class="{{ Request::is('admin/job-gender/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_gender') }}"><i class="fas fa-angle-right"></i> Giới tính</a></li>
                    <li class="{{ Request::is('admin/job-salary-range/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_salary_range') }}"><i class="fas fa-angle-right"></i> Phạm vi lương công việc</a></li>
                </ul>
            </li>


            <li class="nav-item dropdown {{ Request::is('admin/company-location/*')||Request::is('admin/company-industry/*')||Request::is('admin/company-size/*') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Cài đặt Nhà tuyển dụng</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/company-location/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_location') }}"><i class="fas fa-angle-right"></i> Vị trí Nhà tuyển dụng</a></li>
                    <li class="{{ Request::is('admin/company-industry/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_industry') }}"><i class="fas fa-angle-right"></i> Danh sách Nhà Tuyển dụng</a></li>
                    <li class="{{ Request::is('admin/company-size/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_size') }}"><i class="fas fa-angle-right"></i> Quy mô công ty</a></li>
                </ul>
            </li>


            <li class="nav-item dropdown {{ Request::is('admin/all-subscribers')||Request::is('admin/subscribers-send-email') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Cài đặt đăng ký</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/all-subscribers') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_all_subscribers') }}"><i class="fas fa-angle-right"></i> Tất cả người đăng ký</a></li>
                    <li class="{{ Request::is('admin/subscribers-send-email') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscribers_send_email') }}"><i class="fas fa-angle-right"></i> Gửi email cho người đăng ký</a></li>
                </ul>
            </li>


            <li class="{{ Request::is('admin/companies')||Request::is('admin/companies-detail/*')||Request::is('admin/companies-jobs/*')||Request::is('admin/companies-applicants/*')||Request::is('admin/companies-applicant-resume/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_companies') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Company Profile"><i class="fas fa-hand-point-right"></i> <span>Hồ sơ Nhà tuyển dụng</span></a></li>

            <li class="{{ Request::is('admin/candidates')||Request::is('admin/candidates-detail/*')||Request::is('admin/candidates-applied-jobs/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_candidates') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Candidate Profile"><i class="fas fa-hand-point-right"></i> <span>  Hồ sơ ứng viên</span></a></li>


            <li class="{{ Request::is('admin/why-choose/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_why_choose_item') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Why Choose Items"><i class="fas fa-hand-point-right"></i> <span>Tại sao chọn chúng tôi</span></a></li>

            <li class="{{ Request::is('admin/testimonial/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_testimonial') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Testimonials"><i class="fas fa-hand-point-right"></i> <span>Thành viên</span></a></li>

            <li class="{{ Request::is('admin/post/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_post') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Posts"><i class="fas fa-hand-point-right"></i> <span>Bài Viết</span></a></li>

            <li class="{{ Request::is('admin/faq/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_faq') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="FAQs"><i class="fas fa-hand-point-right"></i> <span>Câu hỏi thường gặp</span></a></li>

            <li class="{{ Request::is('admin/package/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_package') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Packages"><i class="fas fa-hand-point-right"></i> <span>Gói thuê</span></a></li>

            <li class="{{ Request::is('admin/advertisement') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_advertisement') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Advertisement"><i class="fas fa-hand-point-right"></i> <span>Quảng cáo</span></a></li>

            <li class="{{ Request::is('admin/banner') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_banner') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Banner"><i class="fas fa-hand-point-right"></i> <span>Banner</span></a></li>

        </ul>
    </aside>
</div>