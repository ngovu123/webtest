<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="description" content="@yield('seo_meta_description')">
        <title>@yield('seo_title')</title>

        <link rel="icon" type="image/png" href="{{ asset('uploads/'.$global_settings_data->favicon) }}" />

        @include('front.layout.styles')

        @include('front.layout.scripts')

        <link
            href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
            rel="stylesheet"
        />
        <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous"
    />
    <script
        src="https://kit.fontawesome.com/98ddc7f134.js"
        crossorigin="anonymous"
    ></script>
{{--    <script src="https://cdn.tailwindcss.com"></script>--}}

{{--    <script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>--}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.16.2/ckeditor.js"
            integrity="sha512-bGYUkjDyyOMGm3ASzq3zRaWZ4CONNH1wAYMFch/Z0ASZrsg722SeRsX0FPPRZjTuJrqIMbB9fvY0LEMzyHeyeQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer">
    </script>

    {{--    Owlcarousel   --}}
    <link rel="stylesheet" href="{{url("users/OwlCarousel2-2.3.4/docs/assets")}}/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="{{url("users/OwlCarousel2-2.3.4/docs/assets")}}/owlcarousel/assets/owl.theme.default.min.css">

    <link rel="icon" type="image/png" sizes="96x96"  href="{{url('users/img').'/favicon16x16.png'}}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{url("users")}}/sass/main.css"/>

    </head>
    <body {{Str::contains(url()->current(),'cv') ? "data-bs-spy=scroll data-bs-target=#list-example data-offset=10 tabindex=0" : ''}}>
        <div class="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 left-side">
                        <ul>
                            <li class="phone-text">{{ $global_settings_data->top_bar_phone }}</li>
                            <li class="email-text">{{ $global_settings_data->top_bar_email }}</li>
                        </ul>
                    </div>
                    <div class="col-md-6 right-side">
                        <ul class="right">
                            @if(Auth::guard('company')->check())
                            <li class="menu">
                                <a href="{{ route('company_dashboard') }}">
                                    <i class="fas fa-home"></i> Trang quản lý của Nhà tuyển dụng
                                </a>
                            </li>

                            @elseif(Auth::guard('candidate')->check())
                            <li class="menu">
                                <a href="{{ route('candidate_dashboard') }}">
                                    <i class="fas fa-home"></i> Trang quản lý của Ứng viên
                                </a>
                            </li>

                            @else
                            <li class="menu">
                                <a href="{{ route('login') }}">
                                    <i class="fas fa-sign-in-alt"></i> Đăng nhập
                                </a>
                            </li>
                            <li class="menu">
                                <a href="{{ route('signup') }}">
                                    <i class="fas fa-user"></i> Đăng ký
                                </a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        @include('front.layout.nav')

        @yield('main_content')        

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <h2 class="heading">Dành cho ứng viên</h2>
                            <ul class="useful-links">
                                <li><a href="{{ route('job_listing') }}">Danh sách các công việc</a></li>
                                <li><a href="{{ route('candidate_dashboard') }}">Trang quản lý Ứng viên</a></li>
                                <li><a href="{{ route('candidate_bookmark_view') }}">Đánh dấu công việc</a></li>
                                <li><a href="{{ route('candidate_applications') }}">Việc làm đã ứng tuyển</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <h2 class="heading">Dành cho Nhà tuyển dụng</h2>
                            <ul class="useful-links">
                                <li><a href="{{ route('company_listing') }}">Danh sách các Nhà tuyển dụng</a></li>
                                <li><a href="{{ route('company_dashboard') }}">Trang quản lý Nhà tuyển dụng</a></li>
                                <li><a href="{{ route('company_jobs_create') }}">Bài viết Công việc mới</a></li>
                                <li><a href="{{ route('company_candidate_applications') }}">Đơn ứng tuyển</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <h2 class="heading">Liên hệ</h2>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <div class="right">
                                    {{ $global_settings_data->footer_address }}
                                </div>
                            </div>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-phone"></i>
                                </div>
                                <div class="right">{{ $global_settings_data->footer_phone }}</div>
                            </div>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <div class="right">{{ $global_settings_data->footer_email }}</div>
                            </div>
                            <ul class="social">

                                @if($global_settings_data->facebook!=null)
                                <li>
                                    <a href="{{ $global_settings_data->facebook }}" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                @endif

                                @if($global_settings_data->twitter!=null)
                                <li>
                                    <a href="{{ $global_settings_data->twitter }}" target="_blank"><i class="fab fa-twitter"></i></a>
                                </li>
                                @endif

                                @if($global_settings_data->pinterest!=null)
                                <li>
                                    <a href="{{ $global_settings_data->pinterest }}" target="_blank"><i class="fab fa-pinterest-p"></i></a>
                                </li>
                                @endif

                                @if($global_settings_data->linkedin!=null)
                                <li>
                                    <a href="{{ $global_settings_data->linkedin }}" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                </li>
                                @endif

                                @if($global_settings_data->instagram!=null)
                                <li>
                                    <a href="{{ $global_settings_data->instagram }}" target="_blank"><i class="fab fa-instagram"></i></a>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <h2 class="heading">Bản tin</h2>
                            <p>Để nhận tin tức mới nhất từ ​trang web của chúng tôi. Bạn hãy vui lòng gửi Email của bạn tại đây và bấm Subscribe Now:</p>
                            <form action="{{ route('subscriber_send_email') }}" method="post" class="form_subscribe_ajax">
                                @csrf
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control">
                                    <span class="text-danger error-text email_error"></span>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" value="Subscribe Now">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="copyright">
                            {{ $global_settings_data->copyright_text }}
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="right">
                            <ul>
                                <li><a href="{{ route('terms') }}">Điều khoản sử dụng</a></li>
                                <li><a href="{{ route('privacy') }}">Chính sách bảo mật</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="scroll-top">
            <i class="fas fa-angle-up"></i>
        </div>

        @include('front.layout.scripts_bottom')

        @if($errors->any())
            @foreach($errors->all() as $error)
                <script>
                    iziToast.error({
                        title: '',
                        position: 'topRight',
                        message: '{{ $error }}',
                    });
                </script>
            @endforeach
        @endif

        @if(session()->get('error'))
            <script>
                iziToast.error({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('error') }}',
                });
            </script>
        @endif

        @if(session()->get('success'))
            <script>
                iziToast.success({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('success') }}',
                });
            </script>
        @endif

        <script>
        (function($){
            $(".form_subscribe_ajax").on('submit', function(e){
                e.preventDefault();
                var form = this;
                $.ajax({
                    url:$(form).attr('action'),
                    method:$(form).attr('method'),
                    data:new FormData(form),
                    processData:false,
                    dataType:'json',
                    contentType:false,
                    beforeSend:function(){
                        $(form).find('span.error-text').text('');
                    },
                    success:function(data)
                    {
                        if(data.code == 0)
                        {
                            $.each(data.error_message, function(prefix, val) {
                                $(form).find('span.'+prefix+'_error').text(val[0]);
                            });
                        }
                        else if(data.code == 2)
                        {
                            $.each(data.error_message_2, function(prefix, val) {
                                $('.email_error').text(data.error_message_2);
                            });
                        }
                        else if(data.code == 1)
                        {
                            $(form)[0].reset();
                            iziToast.success({
                                title: '',
                                position: 'topRight',
                                message: data.success_message,
                            });
                         }
        
                    }
                });
            });
        })(jQuery);
        </script>

    </body>
    <script src="{{url('users')}}/js/app.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"
></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"
        integrity="sha512-k2WPPrSgRFI6cTaHHhJdc8kAXaRM4JBFEDo1pPGGlYiOyv4vnA0Pp0G5XMYYxgAPmtmv/IIaQA6n5fLAyJaFMA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

{{--toast--}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

{{--    Owlcarousel   --}}
<script src="{{url("users/OwlCarousel2-2.3.4/docs/assets/vendors")}}/jquery.min.js"></script>
<script src="{{url("users/OwlCarousel2-2.3.4/docs/assets")}}/owlcarousel/owl.carousel.min.js"></script>

{{-- Ck-editor --}}
<script>

    if(location.href.includes('cv/create')){
        CKEDITOR.replace('editor1');
        CKEDITOR.replace('editor_exp1');
        CKEDITOR.replace('editor_pro1');
    }

    $(document).ready(function() {
        toastr.options.timeOut = 3000;
        @if (Session::has('error'))
            toastr.error('{{ Session::get('error') }}');
        @elseif(Session::has('success'))
            toastr.success('{{ Session::get('success') }}');
        @endif
    });



    // autoplay:false
    autoplayTimeout:5000
    autoplayHoverPause:false

    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items:4,
        loop:true,
        margin:16,
        autoplay:true,
        autoplayTimeout:3000,
        autoplayHoverPause:true
    });
</script>
<script type="text/javascript">
    const editorExpElms=document.querySelectorAll('textarea[name="job_details[]"]');
    const editorProElms=document.querySelectorAll('textarea[name="introduce_pro[]"]');
    var i;

    if(location.href.includes('edit')){
        CKEDITOR.replace('editor1');
        showEditors(editorExpElms);
        showEditors(editorProElms);

        i=editorExpElms.length || editorProElms.length;
    }else{
        i=1;
    }

    function showEditors(elements) {
        for (const element of elements) {
            CKEDITOR.replace(element.id);
        }
    }

    $(document).ready(function () {
        //kinh nghiệm

        $(document).on('click', '.experience-add', function () {
            var li = `
                     <li>
                        <hr class="my-5">


                        <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Tên công ty <span class=" red-cl">(*)</span></label>
                            <div class="col-sm-7 col-md-7 col-xl-5">
                                <input type="text" class="form-control" name="name_company[]" id="">
                            </div>
                        </div>
                        <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Thời gian làm việc <span class=" red-cl">(*)</span></label>
                            <div class="col-sm-3 col-md-3 ">
                                <input type="date" class="form-control" name="start_time[]" >
                            </div>
                            <div class="col-sm-3 col-md-3 ">
                                 <input type="date" class="form-control" name="end_time[]" >
                            </div>
                        </div>
                        <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Vị trí công việc <span class=" red-cl">(*)</span></label>
                            <div class="col-sm-7 col-md-7 col-xl-5">
                                <input type="text" class="form-control" name="job_position[]">
                            </div>
                        </div>
                        <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Chi tiết công việc </label>
                            <div class="col-sm-7 col-md-7 col-xl-8">
                                <textarea id="editor_exp${++i}"  class="form-control" name="job_details[]" id="" cols="50" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="cv-experience-remove col-sm-2 text-end top-0 pt-5">
                            <span class="btn btn-danger experience-remove" >Xóa</span>
                        </div>
            </li>
              `;

            $('.cv-experience-list').append(li);

            var editor_exp='editor_exp'+ i;

            CKEDITOR.replace(editor_exp);

        });

        $(document).on('click', '.experience-remove', function () {
            $(this).closest('.cv-experience-list > li').remove();
        })

        //học vấn
        $(document).on('click', '.education-add', function () {
            var li = `
                    <li>
                      <hr class="my-5">

                       <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Tên trường cơ sở đào tạo <span class=" red-cl">(*)</span></label>
                             <div class="col-sm-7 col-md-7 col-xl-5">
                              <input type="text" class="form-control" name="name_school[]" >
                             </div>
                       </div>
                       <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Thời gian học <span class=" red-cl">(*)</span></label>

                             <div class="col-sm-3 col-md-3 ">
                                <input type="date" class="form-control" name="start_year[]" >
                            </div>
                            <div class="col-sm-3 col-md-3 ">
                                 <input type="date" class="form-control" name="end_year[]" >
                            </div>
                       </div>
                       <div class="mb-5 row">
                           <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Ngành học <span class=" red-cl">(*)</span></label>
                            <div class="col-sm-7 col-md-7 col-xl-5">
                                  <input type="text" class="form-control" name="degree[]" >
                             </div>
                        </div>

                         <div class="cv-experience-remove col-sm-2 text-end top-0 pt-5">
                             <span class="btn btn-danger education-remove" >Xóa</span>
                         </div>
                    </li>
              `;

            $('.cv-education-list').append(li);

        });

        $(document).on('click', '.education-remove', function () {
            $(this).closest('.cv-education-list > li').remove();
        })

        //dự án
        $(document).on('click', '.project-add', function () {
            var li = `
                  <li>
                     <hr class="my-5">
                      <div class="mb-5 row">
                            <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Tên dự án <span class=" red-cl">(*)</span></label>
                            <div class="col-sm-7 col-md-7 col-xl-5">
                                 <input type="text" class="form-control" name="name_project[]" >
                            </div>
                      </div>

                    <div class="mb-5 row">
                        <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label">Thời gian dự án <span class=" red-cl">(*)</span></label>
                        <div class="col-sm-7 col-md-7 col-xl-5">
                            <input type="text" class="form-control"  name="time_project[]" >
                        </div>
                    </div>

                    <div class="py-2 row">
                        <label for="" class="col-sm-3 col-md-3 col-xl-3 col-form-label h-100">Giới thiệu dự án <span class=" red-cl">(*)</span></label>
                        <div class="col-sm-7 col-md-7 col-xl-8">
                            <textarea id="editor_pro${++i}" class="form-control" cols="50" rows="8" name="introduce_pro[]"></textarea>
                        </div>
                    </div>

                        <div class="cv-experience-remove col-sm-2 text-end top-0 pt-5">
                             <span class="btn btn-danger project-remove" >Xóa</span>
                         </div>
                </li>
            `;

            $('.cv-project-list').append(li);

            var editor_pro='editor_pro'+ i;

            CKEDITOR.replace(editor_pro);
        });

        $(document).on('click', '.project-remove', function () {
            $(this).closest('.cv-project-list > li').remove();
        })
    })


</script>
{{-- Delete Exp --}}
<script type="text/javascript">
    function deleteItems(id,$number) {
        var token = $('input[name="_token"]').val();

        $.ajax({
            url: "{{route('delete-exp')}}",
            dataType: "JSON",
            type: "DELETE",
            data: {id: id, _token: token,number:$number},
            success: function (data) {
                $(this).remove();
            }
        })
    }
</script>



</html>
