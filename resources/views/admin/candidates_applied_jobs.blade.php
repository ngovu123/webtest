@extends('admin.layout.app')

@section('heading', 'Candidates Applied Jobs')

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
                                <th>Chức vụ</th>
                                <th>Công ty</th>
                                <th>Trạng thái</th>
                                <th>Hồ sơ xin việc</th>
                                <th>Chi tiết</th>
                            </tr>
                            </thead>
                            <tbody>
                                @php $i=0; @endphp
                                @foreach($applications as $item)
                                @php $i++; @endphp
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->rJob->title }}</td>
                                    <td>{{ $item->rJob->rCompany->company_name }}</td>
                                    <td>
                                        @if($item->status == 'Applied')
                                            @php $color = 'primary'; @endphp
                                        @elseif($item->status == 'Approved')
                                            @php $color = 'success'; @endphp
                                        @elseif($item->status == 'Rejected')
                                            @php $color = 'danger'; @endphp
                                        @endif                                    
                                        <div class="badge bg-{{ $color }}">
                                            {{ $item->status }}
                                        </div>
                                    </td>
                                    <td>
                                        <a href="" class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal{{ $i }}">Hồ sơ xin việc</a>
                                    </td>
                                    <td>
                                        <a href="{{ route('job',$item->rJob->id) }}" class="btn btn-primary btn-sm text-white"><i class="fas fa-eye"></i></a>

                                        <div class="modal fade" id="exampleModal{{ $i }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Hồ sơ xin việc</h1>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        {!! nl2br($item->cover_letter) !!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

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