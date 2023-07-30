@extends('admin.layout.app')

@section('heading', 'Chỉnh sửa bài viết')

@section('button')
<div>
    <a href="{{ route('admin_post') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Quay lại</a>
</div>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_post_update',$post_single->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group mb-3">
                            <label>Ảnh hiện tại</label>
                            <div>
                                <img src="{{ asset('uploads/'.$post_single->photo) }}" alt="" class="w_150">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Thay đổi hình ảnh</label>
                            <div>
                                <input type="file" name="photo">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Mở đầu *</label>
                            <input type="text" class="form-control" name="heading" value="{{ $post_single->heading }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Đặt URL *</label>
                            <input type="text" class="form-control" name="slug" value="{{ $post_single->slug }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Mô tả ngắn *</label>
                            <textarea name="short_description" class="form-control h_100" cols="30" rows="10">{{ $post_single->short_description }}</textarea>
                        </div>
                        <div class="form-group mb-3">
                            <label>Mô tả *</label>
                            <textarea name="description" class="form-control editor" cols="30" rows="10">{{ $post_single->description }}</textarea>
                        </div>

                        <h4 class="seo_section">Phần SEO</h4>
                        <div class="form-group mb-3">
                            <label>Tiêu đề</label>
                            <input type="text" class="form-control" name="title" value="{{ $post_single->title }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Mô tả meta</label>
                            <textarea name="meta_description" class="form-control h_100" cols="30" rows="10">{{ $post_single->meta_description }}</textarea>
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