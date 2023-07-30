<?php

namespace App\Http\Controllers\Candidate;

use App\Http\Controllers\Controller;
use App\Models\CandidateEducation;
use App\Models\CandidateExperience;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;
use App\Models\User;
use App\Models\Profile;
use App\Models\Project;
use PDF;
use Dompdf\Dompdf;
use Carbon\Carbon;
class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function userId(){
        return User::find(Auth::id());
    }

    public function index()
    {
        $user=$this->userId();

        $user_id=Auth::user()->id;
        $profiles=Profile::where('user_id','=',$user_id)->get();
        return view('candidate.manager_cv')->with(compact('profiles','user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user=$this->userId();

        return view('candidate.create_cv')->with(compact('user'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $data=$request->validate([
            'user_id'=>[''],
            'title'=>['required','string'],
            'image'=>['required'],
            'name'=>['required','string'],
            'position'=>['required','string'],
            'email'=>['required','email'],
            'phone_number'=>['required','numeric','min:11'],
            'male'=>['required','string'],
            'dateOfBirth'=>['required','string'],
            'address'=>['required','string'],

            'introduce'=>['required'],

            'company.*'=>['required'],
            'start_date.*'=>['required'],
            'end_date.*'=>['required'],
            'job_position.*'=>['required'],
            'job_details.*'=>[''],

            'institute.*'=>['required'],
            'start_year.*'=>['required'],
            'passing_year.*'=>['required'],
            'degree.*'=>['required'],

            'name_project.*'=>['required'],
            'time_project.*'=>['required'],

        ],[
            'title.required'=>'Vui lòng nhập tiêu đề',
            'image.required'=>'Vui lòng nhập chọn ảnh',
            'name.required'=>'Vui lòng nhập họ tên',
            'position.required'=>'Vui lòng nhập vị trí ứng tuyển',
            'email.required' => 'Vui lòng nhập email',
            'email.email' => 'Email sai định dạng',
            'phone_number.required'=>'Vui lòng nhập số điện thoại',
            'phone_number.numeric'=> 'Số điện thoại định dạng là số',
            'phone_number.min'=> 'Số điện thoại ít nhất là 10 ký tự',
            'male.required'=>'Vui lòng chọn giới tính',
            'dateOfBirth.required'=>'Vui lòng chọn ngày sinh',
            'address.required'=>'Vui lòng nhập địa chỉ',

            'introduce.required'=>'Vui lòng nhập giới thiệu bản thân',

            'company.*.required'=>'Vui lòng nhập tên công ty',
            'start_date.*.required'=>'Vui lòng chọn thời gian bắt đầu',
            'end_date.*.required'=>'Vui lòng chọn thời gian kết thúc',
            'job_position.*.required'=>'Vui lòng vị trí công việc',

            'institute.*.required'=>'Vui lòng nhập tên trường',
            'start_year.*.required'=>'Vui lòng chọn thời gian bắt đầu',
            'passing_year.*.required'=>'Vui lòng chọn thời gian kết thúc',
            'degree.*.required'=>'Vui lòng nhập ngành học',

            'name_project.*.required'=>'Vui lòng nhập tên dự án',
            'time_project.*.required'=>'Vui lòng nhập thời gian dự án',

        ]);

        $profile=new Profile();

        $profile->user_id=$data['user_id'];
        $profile->title=$data['title'];
        $profile->name=$data['name'];
        $profile->email=$data['email'];
        $profile->phone_number=$data['phone_number'];
        $profile->male=$data['male'];
        $profile->dateOfBirth=$data['dateOfBirth'];
        $profile->address=$data['address'];
        $profile->position=$data['position'];
        $profile->introduce=$data['introduce'];
        $profile->created_at=Carbon::now('Asia/Ho_Chi_Minh');

        $get_image=$request->image;

        $path='img/profile';
        $get_name_image=$get_image->getClientOriginalName();

        $name_image=current(explode('.',$get_name_image));
        $new_image=$name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
        $get_image->move($path,$new_image);

        $profile->image=$new_image;

        $profile->save();

        $this->addInfoDiffrence($request);

        return redirect()->back()->with('success','Tạo hồ sơ thành công');
    }

    public function addInfoDiffrence($request){

        $comapny=$request->company;
        $stime=$request->start_date;
        $etime=$request->end_date;
        $jpo=$request->job_position;
        $jde=$request->job_details;

        $candidate_id=Profile::orderBy('id','DESC')->first();

        foreach ($comapny as $key => $items){
            $exp=new CandidateExperience();
            $exp->candidate_id    =   $candidate_id->id;
            $exp->company  =   $items;
            $exp->start_date    =   $stime[$key];
            $exp->end_date      =   $etime[$key];
            $exp->job_position  =   $jpo[$key];
            $exp->job_details   =   $jde[$key];

            $exp->save();
        }

        $school=$request->institute;
        $syear=$request->start_year;
        $eyear=$request->passing_year;
        $degree=$request->degree;

        foreach ($school as $key => $items){
            $edu=new CandidateEducation();
            $edu->candidate_id    =  $candidate_id->id;
            $edu->institute   =   $items;
            $edu->start_year    =   $syear[$key];
            $edu->passing_year      =   $eyear[$key];
            $edu->degree        =   $degree[$key];

            $edu->save();
        }

        $name_pro=$request->name_project;
        $time_pro=$request->time_project;
        $intr_pro=$request->introduce_pro;

        foreach ($name_pro as $key => $items){
            $pro=new Project();
            $pro->candidate_id      =   $candidate_id->id;
            $pro->name_project    =   $items;
            $pro->time_project    =   $time_pro[$key];
            $pro->introduce_pro   =   $intr_pro[$key];

            $pro->save();
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user=$this->userId();

        $profile=Profile::find($id);
        $experiences=CandidateExperience::where('candidate_id','=',$id)->get();
        $educations=CandidateEducation::where('candidate_id','=',$id)->get();
        $projects=Project::where('candidate_id','=',$id)->get();

        return view('candidate.update_cv')->with(compact('profile','experiences','educations','projects','user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
//        ddd($request->all());
        $data=$request->validate([
            'user_id'=>[''],
            'title'=>['required','string'],
            'image'=>[''],
            'name'=>['required','string'],
            'position'=>['required','string'],
            'email'=>['required','email'],
            'phone_number'=>['required','numeric','min:11'],
            'male'=>['required','string'],
            'dateOfBirth'=>['required','string'],
            'address'=>['required','string'],

            'introduce'=>['required'],

            'company.*'=>['required'],
            'start_date.*'=>['required'],
            'end_date.*'=>['required'],
            'job_position.*'=>['required'],
            'job_details'=>[''],

        ],[
            'title.required'=>'Vui lòng nhập tiêu đề',
            'name.required'=>'Vui lòng nhập họ tên',
            'position.required'=>'Vui lòng nhập vị trí ứng tuyển',
            'email.required' => 'Vui lòng nhập email',
            'email.email' => 'Email sai định dạng',
            'phone_number.required'=>'Vui lòng nhập số điện thoại',
            'phone_number.numeric'=> 'Số điện thoại định dạng là số',
            'phone_number.min'=> 'Số điện thoại ít nhất là 10 ký tự',
            'male.required'=>'Vui lòng nhập chọn giới tính',
            'dateOfBirth.required'=>'Vui lòng chọn ngày sinh',
            'address.required'=>'Vui lòng nhập địa chỉ',
            'introduce.required'=>'Vui lòng nhập giới thiệu bản thân',

            'company.*.required'=>'Vui lòng nhập tên công ty',
            'start_date.*.required'=>'Vui lòng nhập thời gian bắt đầu',
            'end_date.*.required'=>'Vui lòng nhập thời gian kết thúc',
            'job_position.*.required'=>'Vui lòng nhập vị trí công việc',

        ]);

        $profile=Profile::find($id);

        $profile->user_id=$data['user_id'];
        $profile->title=$data['title'];
        $profile->name=$data['name'];
        $profile->email=$data['email'];
        $profile->phone_number=$data['phone_number'];
        $profile->male=$data['male'];
        $profile->dateOfBirth=$data['dateOfBirth'];
        $profile->address=$data['address'];
        $profile->position=$data['position'];
        $profile->introduce=$data['introduce'];
        $profile->updated_at=Carbon::now('Asia/Ho_Chi_Minh');

        $get_image=$request->image;
        $img_current=Profile::find($id);

        if($get_image != null){
            $path='img/profile/';
            if(file_exists($path.$profile->image) ){
                unlink($path.$profile->image);
            }

            $get_name_image=$get_image->getClientOriginalName();
            $name_image=current(explode('.',$get_name_image));
            $new_image=$name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move($path,$new_image);

            $profile->image=$new_image;
        }else{
            $profile->image=$img_current->image;
        }

        $profile->save();

        $this->updateInfoDiffrence($request,$id);

        return redirect()->back()->with('success','Cập nhập thành công');
    }

    public function updateInfoDiffrence($request,$id){
        $comapny=$request->company;
        $stime=$request->start_date;
        $etime=$request->end_date;
        $jpo=$request->job_position;
        $jde=$request->job_details;

        $school=$request->institute;
        $syear=$request->start_year;
        $eyear=$request->passing_year;
        $degree=$request->degree;

        $project=$request->name_project;
        $time_pro=$request->time_project;
        $intro=$request->introduce_pro;

        $exps=CandidateExperience::with('profile')->where('candidate_id',$id)->get();
        $edus=CandidateEducation::with('profile')->where('candidate_id',$id)->get();
        $pros=Project::with('profile')->where('candidate_id',$id)->get();

        if($comapny){
            foreach ($comapny as $key => $items){

                if (!isset($exps[$key]->company)){
                    $exp=new CandidateExperience();
                    $exp->candidate_id    =   $id;
                    $exp->company  =   $comapny[$key];
                    $exp->start_date    =   $stime[$key];
                    $exp->end_date      =   $etime[$key];
                    $exp->job_position  =   $jpo[$key];
                    $exp->job_details   =   $jde[$key];

                    $exp->save();
                }else{

                    $exp = CandidateExperience::find($exps[$key]->id);
                    $exp->company = $items;
                    $exp->start_date = $stime[$key];
                    $exp->end_date = $etime[$key];
                    $exp->job_position = $jpo[$key];
                    $exp->job_details = $jde[$key];

                    $exp->save();
                }
            }
        }

        if($school){
            foreach ($school as $key => $items){

                if (!isset($edus[$key]->institute)){
                    $edu=new CandidateEducation();

                    $edu->candidate_id    =   $id;
                    $edu->institute   =   $school[$key];
                    $edu->start_date    =   $syear[$key];
                    $edu->end_date      =   $eyear[$key];
                    $edu->degree        =   $degree[$key];

                    $edu->save();
                }else{
                    $edu = CandidateEducation::find($edus[$key]->id);

                    $edu->candidate_id    =   $id;
                    $edu->institute   =   $school[$key];
                    $edu->start_date    =   $syear[$key];
                    $edu->end_date      =   $eyear[$key];
                    $edu->degree        =   $degree[$key];

                    $edu->save();
                }
            }
        }

        if($project){
            foreach ($project as $key => $items){

                if (!isset($pros[$key]->name_project)){
                    $pro=new Project();

                    $pro->candidate_id    =   $id;
                    $pro->name_project  =   $project[$key];
                    $pro->time_project  =   $time_pro[$key];
                    $pro->introduce_pro =   $intro[$key];

                    $pro->save();
                }else{
                    $pro = Project::find($pros[$key]->id);

                    $pro->candidate_id    =   $id;
                    $pro->name_project  =   $project[$key];
                    $pro->time_project  =   $time_pro[$key];
                    $pro->introduce_pro =   $intro[$key];

                    $pro->save();
                }
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $profile=Profile::find($id);
        $path='img/profile/'.$profile->image;
        if(file_exists($path)){
            unlink($path);
        }

        CandidateExperience::with('profile')->where('candidate_id',$id)->delete();
        CandidateEducation::with('profile')->where('candidate_id',$id)->delete();
        Project::with('profile')->where('candidate_id',$id)->delete();

        $profile->delete();

        return redirect()->back();
    }

    public function deleteExp(Request $request){

        $id=$request->id;

        if ($request->number == 1){
            $exp=CandidateExperience::find($id);
            $exp->delete();
        }else if ($request->number == 2){
            $edu=CandidateEducation::find($id);
            $edu->delete();
        }else{
            $pro=Project::find($id);
            $pro->delete();
        }

        return redirect()->back();
    }

//    Tạo PDF
public function print_profile($id)
{
    $profile = Profile::with('experience', 'project', 'education')->where('id', $id)->first();

    $path = public_path('img/profile/' . $profile->image);
    $type = pathinfo($path, PATHINFO_EXTENSION);
    $data = file_get_contents($path);
    $pic = 'data:image/' . $type . ';base64,' . base64_encode($data);

    $pdf = PDF::setOptions([
        'isHtml5ParserEnabled' => true,
        'isRemoteEnabled' => true,
        'defaultFont' => 'DejaVu Sans',
        'sans-serif',
    ])->loadView('candidate.profile_pdf', compact('profile', 'pic'));

    return $pdf->setPaper('a4')->save('pdf-cv/' . $profile->title . '.pdf')->stream($profile->title . '.pdf');
}

}
