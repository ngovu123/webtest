@extends('admin.layout.app')

@section('heading', 'Bài viết')

@section('button')
<div>
    <a href="{{ route('admin_post_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Thêm Bài Viết</a>
</div>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Hình ảnh</th>
                                <th>Mở đầu</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($posts as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        <img src="{{ asset('uploads/'.$item->photo) }}" alt="" class="w_150">
                                    </td>
                                    <td>{{ $item->heading }}</td>
                                    <td class="pt_10 pb_10">
                                        <a href="{{ route('admin_post_edit',$item->id) }}" class="btn btn-primary btn-sm">Chỉnh sửa</a>
                                        <a href="{{ route('admin_post_delete',$item->id) }}" class="btn btn-danger btn-sm" onClick="return confirm('Are you sure?');">Xóa</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection