<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CompanySize;
use App\Models\Company;

class AdminCompanySizeController extends Controller
{
    public function index()
    {
        $company_sizes = CompanySize::get();
        return view('admin.company_size', compact('company_sizes'));
    }

    public function create()
    {
        return view('admin.company_size_create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);

        $obj = new CompanySize();
        $obj->name = $request->name;
        $obj->save();

        return redirect()->route('admin_company_size')->with('success', 'Dữ liệu được cập nhật thành công.');

    }

    public function edit($id)
    {
        $company_size_single = CompanySize::where('id',$id)->first();
        return view('admin.company_size_edit',compact('company_size_single'));
    }

    public function update(Request $request, $id)
    {
        $obj = CompanySize::where('id',$id)->first();

        $request->validate([
            'name' => 'required'
        ]);

        $obj->name = $request->name;
        $obj->update();

        return redirect()->route('admin_company_size')->with('success', 'Dữ liệu được cập nhật thành công.');

    }

    public function delete($id)
    {
        $check = Company::where('company_size_id',$id)->count();
        if($check>0) {
            return redirect()->back()->with('error', 'Bạn không thể xóa mục này, vì mục này được sử dụng ở một nơi khác.');
        }

        CompanySize::where('id',$id)->delete();
        return redirect()->route('admin_company_size')->with('success', 'Dữ liệu được cập nhật thành công.');
    }
}
