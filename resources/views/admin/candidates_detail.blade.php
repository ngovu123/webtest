@extends('admin.layout.app')

@section('heading', 'Candidate Detail')

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h5>Thông tin cơ bản</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tr>
                                <th class="w_200">Hình ảnh</th>
                                <td>
                                    <img src="{{ asset('uploads/'.$candidate_single->photo) }}" alt="" class="w_100">
                                </td>
                            </tr>
                            <tr>
                                <th class="w_200">Tên</th>
                                <td>{{ $candidate_single->name }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Lĩnh vực</th>
                                <td>{{ $candidate_single->designation }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Họ và tên</th>
                                <td>{{ $candidate_single->username }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Email</th>
                                <td>{{ $candidate_single->email }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Điện thoại</th>
                                <td>{{ $candidate_single->phone }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Đất nước</th>
                                <td>{{ $candidate_single->country }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Địa chỉ</th>
                                <td>{{ $candidate_single->address }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Tình trạng</th>
                                <td>{{ $candidate_single->state }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Thành phố</th>
                                <td>{{ $candidate_single->city }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Zip Code</th>
                                <td>{{ $candidate_single->zip_code }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Giới tính</th>
                                <td>{{ $candidate_single->gender }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Tình trạng hôn nhân</th>
                                <td>{{ $candidate_single->marital_status }}</td>
                            </tr>
                            <tr>
                                <th class="w_200">Ngày sinh</th>
                                <td>{{ $candidate_single->date_of_birth }}</td>
                            </tr>
                        </table>
                    </div>


                    @if($candidate_educations->count())
                    <h5>Học vấn</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Trình độ học vấn</th>
                                    <th>Nơi học</th>
                                    <th>Bằng cấp</th>
                                    <th>Năm tốt nghiệp</th>
                                </tr>
                                @foreach($candidate_educations as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->level }}</td>
                                    <td>{{ $item->institute }}</td>
                                    <td>{{ $item->degree }}</td>
                                    <td>{{ $item->passing_year }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif

                    @if($candidate_skills->count())
                    <h5>Kỹ năng</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Tên kỹ năng</th>
                                    <th>Tỷ lệ phần trăm</th>
                                </tr>
                                @foreach($candidate_skills as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->percentage }}%</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_experiences->count())
                    <h5>Kinh nghiệm</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Công ty</th>
                                    <th>Lĩnh vực</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                </tr>
                                @foreach($candidate_experiences as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->company }}</td>
                                    <td>{{ $item->designation }}</td>
                                    <td>{{ $item->start_date }}</td>
                                    <td>{{ $item->end_date }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_awards->count())
                    <h5>Giải thưởng</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Tiêu đề</th>
                                    <th>Mô tả</th>
                                    <th class="w_100">Ngày</th>
                                </tr>
                                @foreach($candidate_awards as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->title }}</td>
                                    <td>{{ $item->description }}</td>
                                    <td>{{ $item->date }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_resumes->count())
                    <h5>Bản tóm tắt</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Tên</th>
                                    <th>File</th>
                                </tr>
                                @foreach($candidate_resumes as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td><a href="{{ asset('uploads/'.$item->file) }}" target="_blank">{{ $item->file }}</a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif



                </div>
            </div>
        </div>
    </div>
</div>
@endsection