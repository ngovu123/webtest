@extends('front.layout.app')

@section('seo_title'){{ $other_page_item->signup_page_title }}@endsection
@section('seo_meta_description'){{ $other_page_item->signup_page_meta_description }}@endsection

@section('main_content')
<div class="page-top" style="background-image: url('{{ asset('uploads/'.$global_banner_data->banner_signup) }}')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>{{ $other_page_item->signup_page_heading }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
                <div class="login-form">
                    <ul
                        class="nav nav-pills mb-3"
                        id="pills-tab"
                        role="tablist"
                    >
                        <li class="nav-item" role="presentation">
                            <button
                                class="nav-link active"
                                id="pills-home-tab"
                                data-bs-toggle="pill"
                                data-bs-target="#pills-home"
                                type="button"
                                role="tab"
                                aria-controls="pills-home"
                                aria-selected="true"
                            >
                                <i class="far fa-user"></i> Ứng viên
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button
                                class="nav-link"
                                id="pills-profile-tab"
                                data-bs-toggle="pill"
                                data-bs-target="#pills-profile"
                                type="button"
                                role="tab"
                                aria-controls="pills-profile"
                                aria-selected="false"
                            >
                                <i class="fas fa-briefcase"></i>
                                Nhà tuyển dụng
                            </button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div
                            class="tab-pane fade show active"
                            id="pills-home"
                            role="tabpanel"
                            aria-labelledby="pills-home-tab"
                            tabindex="0"
                        >
                            <form action="{{ route('candidate_signup_submit') }}" method="post">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Tên *</label>
                                <input type="text" class="form-control" name="name" value="{{ old('name') }} "/>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Họ và tên *</label>
                                <input type="text" class="form-control" name="username" value="{{ old('username') }}" placeholder="ví dụ: nguyenvantu"/>
                                @if($errors->has('username'))
                                            <span class="text text-danger">{{$errors->first('username')}}</span>
                                @endif
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Địa chỉ Email <span>*</span></label>
                                <input
                                            name="email"
                                            type="email"
                                            class="form-control"
                                            value="{{old('email')}}"
                                            placeholder="name@gmail.com"
                                        />
                                        @if($errors->has('email'))
                                            <span class="text text-danger">{{$errors->first('email')}}</span>
                                        @endif
                                
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Mật khẩu *</label>
                                <input
                                            name="password"
                                            type="password"
                                            class="form-control"
                                            value="{{old('password')}}"
                                            placeholder="********"
                                        />
                                        @if($errors->has('password'))
                                            <span class="text text-danger">{{$errors->first('password')}}</span>
                                        @endif
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Nhập lại mật khẩu *</label>
                                <input
                                            name="password_confirmation"
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            placeholder="**********"
                                        />
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary bg-website">
                                    Tạo tài khoản
                                </button>
                            </div>
                            </form>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="pills-profile"
                            role="tabpanel"
                            aria-labelledby="pills-profile-tab"
                            tabindex="0"
                        >
                            <form action="{{ route('company_signup_submit') }}" method="post">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Tên công ty *</label>
                                <input type="text" class="form-control" name="company_name" value="{{ old('company_name') }}" placeholder="Công ty TNHH abc"/>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Tên *</label>
                                <input type="text" class="form-control" name="person_name" value="{{ old('person_name') }}" placeholder="ví dụ: van"/>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Họ và tên *</label>
                                <input type="text" class="form-control" name="username" value="{{ old('username') }}" placeholder="ví dụ: nguyenvan">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Địa chỉ Email *</label>
                                <input
                                            name="email"
                                            type="email"
                                            class="form-control"
                                            value="{{old('email')}}"
                                            placeholder="name@gmail.com"
                                        />
                                        @if($errors->has('email'))
                                            <span class="text text-danger">{{$errors->first('email')}}</span>
                                        @endif
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Mật khẩu*</label>
                                <input
                                            name="password"
                                            type="password"
                                            class="form-control"
                                            value="{{old('password')}}"
                                            placeholder="********"
                                        />
                                        @if($errors->has('password'))
                                            <span class="text text-danger">{{$errors->first('password')}}</span>
                                        @endif
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Nhập lại mật khẩu *</label>
                                <input
                                            name="password_confirmation"
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            placeholder="**********"
                                        />
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary bg-website">
                                     Tạo tài khoản
                                </button>
                            </div>
                            </form>
                        </div>
                    </div>

                    <div class="mb-3">
                        <a href="{{ route('login') }}" class="primary-color"
                            >Đã có tài khoản? Đăng nhập ngay bây giờ</a
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection