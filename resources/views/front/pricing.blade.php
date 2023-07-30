@extends('front.layout.app')

@section('seo_title'){{ $pricing_page_item->title }}@endsection
@section('seo_meta_description'){{ $pricing_page_item->meta_description }}@endsection

@section('main_content')
<div class="page-top" style="background-image: url('{{ asset('uploads/'.$global_banner_data->banner_pricing) }}')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>{{ $pricing_page_item->heading }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content pricing">
    <div class="container">
        <div class="row pricing">
            @foreach($packages as $item)
            <div class="col-lg-4 mb_30">
                <div class="card mb-5 mb-lg-0">
                    <div class="card-body">
                        <h2 class="card-title">{{ $item->package_name }}</h2>
                        <h3 class="card-price">{{ number_format($item->package_price, 0, ',', '.') }} VNĐ</h3>
                        <h4 class="card-day">({{ $item->package_display_time }})</h4>
                        <hr />
                        <ul class="fa-ul">
                            <li>
                                @php
                                    if($item->total_allowed_jobs == -1) {
                                        $text = "Unlimited";
                                        $icon_code = "fas fa-check";
                                    } elseif($item->total_allowed_jobs == 0) {
                                        $text = "No";
                                        $icon_code = "fas fa-times";
                                    } else {
                                        $text = $item->total_allowed_jobs;
                                        $icon_code = "fas fa-check";
                                    }
                                @endphp
                                <span class="fa-li"><i class="{{ $icon_code }}"></i></span>
                                {{ $text }} Đăng công việc cho phép
                            </li>
                            <li>
                                @php
                                    if($item->total_allowed_featured_jobs == -1) {
                                        $text = "Unlimited";
                                        $icon_code = "fas fa-check";
                                    } elseif($item->total_allowed_featured_jobs == 0) {
                                        $text = "No";
                                        $icon_code = "fas fa-times";
                                    } else {
                                        $text = $item->total_allowed_featured_jobs;
                                        $icon_code = "fas fa-check";
                                    }
                                @endphp
                                <span class="fa-li"><i class="{{ $icon_code }}"></i></span>
                                {{ $text }} Công việc đặc thù
                            </li>
                            <li>
                                @php
                                    if($item->total_allowed_photos == -1) {
                                        $text = "Unlimited";
                                        $icon_code = "fas fa-check";
                                    } elseif($item->total_allowed_photos == 0) {
                                        $text = "No";
                                        $icon_code = "fas fa-times";
                                    } else {
                                        $text = $item->total_allowed_photos;
                                        $icon_code = "fas fa-check";
                                    }
                                @endphp
                                <span class="fa-li"><i class="{{ $icon_code }}"></i></span>
                                {{ $text }} Hình ảnh công ty
                            </li>
                            <li>
                                @php
                                    if($item->total_allowed_videos == -1) {
                                        $text = "Unlimited";
                                        $icon_code = "fas fa-check";
                                    } elseif($item->total_allowed_videos == 0) {
                                        $text = "No";
                                        $icon_code = "fas fa-times";
                                    } else {
                                        $text = $item->total_allowed_videos;
                                        $icon_code = "fas fa-check";
                                    }
                                @endphp
                                <span class="fa-li"><i class="{{ $icon_code }}"></i></span>
                                {{ $text }} Video công ty
                            </li>
                        </ul>
                        <div class="buy">
                            <a href="{{ route('company_make_payment') }}" class="btn btn-primary">Chọn Gói Thuê</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>

@endsection