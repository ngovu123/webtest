@extends('front.layout.app')

@section('seo_title'){{ $other_page_item->job_listing_page_title }}@endsection
@section('seo_meta_description'){{ $other_page_item->job_listing_page_meta_description }}@endsection

@section('main_content')
<div class="page-top" style="background-image: url('{{ asset('uploads/'.$global_banner_data->banner_job_listing) }}')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>{{ $other_page_item->job_listing_page_heading }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="job-result">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="job-filter">
                    
                    <form action="{{ url('job-listing') }}" method="get">
                    <div class="widget">
                        <h2>Chức vụ</h2>
                        <input type="text" name="title" class="form-control" placeholder="Search Titles ..." value="{{ $form_title }}">
                    </div>

                    <div class="widget">
                        <h2>Ngành nghề</h2>
                        <select name="category" class="form-control select2">
                        <option value="">Ngành nghề</option>
                            @foreach($job_categories as $item)
                            <option value="{{ $item->id }}" @if($form_category == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="widget">
                        <h2>Nơi làm việc</h2>
                        <select name="location" class="form-control select2">
                        <option value="">Nơi làm việc</option>
                            @foreach($job_locations as $item)
                            <option value="{{ $item->id }}" @if($form_location == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="widget">
                        <h2>Loại công việc</h2>
                        <select name="type" class="form-control select2">
                        <option value="">Loại công việc</option>
                            @foreach($job_types as $item)
                            <option value="{{ $item->id }}" @if($form_type == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="widget">
                        <h2>Kinh nghiệm làm việc</h2>
                        <select name="experience" class="form-control select2">
                        <option value="">Kinh nghiệm làm việc</option>
                            @foreach($job_experiences as $item)
                            <option value="{{ $item->id }}" @if($form_experience == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="widget">
                        <h2>Giới tính</h2>
                        <select name="gender" class="form-control select2">
                        <option value="">Giới tính</option>
                            @foreach($job_genders as $item)
                            <option value="{{ $item->id }}" @if($form_gender == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="widget">
                        <h2>Phạm vi lương công việc</h2>
                        <select name="salary_range" class="form-control select2">
                        <option value="">Phạm vi lương công việc</option>
                            @foreach($job_salary_ranges as $item)
                            <option value="{{ $item->id }}" @if($form_salary_range == $item->id) selected @endif>{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="filter-button">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-search"></i> Tìm kiếm
                        </button>
                    </div>

                    </form>

                    @if($advertisement_data->job_listing_ad_status == 'Show')
                    <div class="advertisement">
                        @if($advertisement_data->job_listing_ad_url == null)
                            <img src="{{ asset('uploads/'.$advertisement_data->job_listing_ad) }}" alt="">
                        @else
                            <a href="{{ $advertisement_data->job_listing_ad_url }}" target="_blank"><img src="{{ asset('uploads/'.$advertisement_data->job_listing_ad) }}" alt=""></a>
                        @endif
                    </div>
                    @endif


                </div>
            </div>
            <div class="col-md-9">
                <div class="job">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="search-result-header">
                                    <i class="fas fa-search"></i> Kết quả tìm kiếm cho danh sách công việc
                                </div>
                            </div>

                            @if(!$jobs->count())
                                <div class="text-danger">Không có kết quả nào</div>
                            @else
                            @foreach($jobs as $item)
                            @php
                            $this_company_id = $item->rCompany->id;
                            $order_data = \App\Models\Order::where('company_id',$this_company_id)->where('currently_active',1)->first();
                            if(date('Y-m-d') > $order_data) {
                                continue;
                            }
                            @endphp
                            <div class="col-md-12">
                                <div class="item d-flex justify-content-start">
                                    <div class="logo">
                                        <img src="{{ asset('uploads/'.$item->rCompany->logo) }}" alt="">
                                    </div>
                                    <div class="text">
                                        <h3><a href="{{ route('job',$item->id) }}">{{ $item->title }}, {{ $item->rCompany->company_name }}</a></h3>
                                        <div class="detail-1 d-flex justify-content-start">
                                            <div class="category">
                                                {{ $item->rJobCategory->name }}
                                            </div>
                                            <div class="location">
                                                {{ $item->rJobLocation->name }}
                                            </div>
                                        </div>
                                        <div class="detail-2 d-flex justify-content-start">
                                            <div class="date">
                                                {{ $item->created_at->diffForHumans() }}
                                            </div>
                                            <div class="budget">
                                                {{ $item->rJobSalaryRange->name }}
                                            </div>
                                            @if(date('Y-m-d') > $item->deadline)
                                            <div class="expired">
                                                Expired
                                            </div>
                                            @endif
                                        </div>
                                        <div class="special d-flex justify-content-start">
                                            @if($item->is_featured == 1)
                                            <div class="featured">
                                                Featured
                                            </div>
                                            @endif
                                            <div class="type">
                                                {{ $item->rJobType->name }}
                                            </div>
                                            @if($item->is_urgent == 1)
                                            <div class="urgent">
                                                Urgent
                                            </div>
                                            @endif
                                        </div>
                                        @if(!Auth::guard('company')->check())
                                        <div class="bookmark">
                                            @if(Auth::guard('candidate')->check())
                                                @php
                                                $count = \App\Models\CandidateBookmark::where('candidate_id',Auth::guard('candidate')->user()->id)->where('job_id',$item->id)->count();
                                                if($count>0) {
                                                    $bookmark_status = 'active';
                                                } else {
                                                    $bookmark_status = '';
                                                }
                                                @endphp
                                            @else
                                                @php $bookmark_status = ''; @endphp
                                            @endif
                                            <a href="{{ route('candidate_bookmark_add',$item->id) }}"><i class="fas fa-bookmark {{ $bookmark_status }}"></i></a>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            <div class="col-md-12">
                                {{ $jobs->appends($_GET)->links() }}
                            </div>
                            @endif


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection