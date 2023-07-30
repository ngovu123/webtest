@extends('admin.layout.app')

@section('heading', 'Quảng cáo')

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_advertisement_update') }}" method="post" enctype="multipart/form-data">
                        @csrf

                        <h4>Hình ảnh Quảng cáo</h4>
                        <div class="form-group mb-3">
                            <label>Hình ảnh Quảng cáo</label>
                            <div>
                                <img src="{{ asset('uploads/'.$advertisement_data->job_listing_ad) }}" alt="" class="w_200">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Thay đổi Hình ảnh Quảng cáo tại đây</label>
                            <div>
                                <input type="file" name="job_listing_ad">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Website Quảng cáo</label>
                            <input type="text" name="job_listing_ad_url" class="form-control" value="{{ $advertisement_data->job_listing_ad_url }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Trạng thái</label>
                            <select name="job_listing_ad_status" class="form-control select2">
                                <option value="Show" @if($advertisement_data->job_listing_ad_status == 'Show') selected @endif>Show</option>
                                <option value="Hide" @if($advertisement_data->job_listing_ad_status == 'Hide') selected @endif>Hide</option>
                            </select>
                        </div>


                        <h4>Hình ảnh Quảng cáo Nhà Tuyển Dụng</h4>
                        <div class="form-group mb-3">
                            <label>Hình ảnh Quảng cáo</label>
                            <div>
                                <img src="{{ asset('uploads/'.$advertisement_data->company_listing_ad) }}" alt="" class="w_200">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Thay đổi Hình ảnh Quảng cáo tại đây</label>
                            <div>
                                <input type="file" name="company_listing_ad">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Website Quảng cáo</label>
                            <input type="text" name="company_listing_ad_url" class="form-control" value="{{ $advertisement_data->company_listing_ad_url }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Trạng thái</label>
                            <select name="company_listing_ad_status" class="form-control select2">
                                <option value="Show" @if($advertisement_data->company_listing_ad_status == 'Show') selected @endif>Show</option>
                                <option value="Hide" @if($advertisement_data->company_listing_ad_status == 'Hide') selected @endif>Hide</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection