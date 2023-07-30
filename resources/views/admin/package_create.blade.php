@extends('admin.layout.app')

@section('heading', 'Tạo Gói thuê')

@section('button')
<div>
    <a href="{{ route('admin_package') }}" class="btn btn-primary"><i class="fas fa-plus"></i>  Quay trở lại</a>
</div>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_package_store') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Tên gói thuê *</label>
                                    <input type="text" class="form-control" name="package_name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Giá *</label>
                                    <input type="text" class="form-control price_format" name="package_price">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Số ngày *</label>
                                    <input type="text" class="form-control" name="package_days">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Hiển thị thời gian *</label>
                                    <input type="text" class="form-control" name="package_display_time">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Tổng số công việc được phép*</label>
                                    <input type="text" class="form-control" name="total_allowed_jobs">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Tổng số công việc nổi bật được phép *</label>
                                    <input type="text" class="form-control" name="total_allowed_featured_jobs">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label> Tổng số ảnh được phép *</label>
                                    <input type="text" class="form-control" name="total_allowed_photos">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Tổng số Video được phép*</label>
                                    <input type="text" class="form-control" name="total_allowed_videos">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Xác nhận</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection