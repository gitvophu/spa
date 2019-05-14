<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{
    //Lấy danh sách banner trong db và hiển thị ra view admin: list-banner
    public function index(){
        $listBanner = Banner::orderBy('created_at','desc')->get();
        return view('admin.banner.list-banner', compact('listBanner'));
    }

    //Tạo thêm banner
        //phương thức get
    public function create_banner(){
        return view('admin.banner.create-banner');
    }
        //phương thức post
    public function store_banner(Request $request){
        $banner= new Banner();
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'description' => 'required',
        ],[
            'title.required' => 'Tiêu đề không được bỏ trống',
            'image.required' => 'File ảnh không được bỏ trống',
            'image.image' => 'File ảnh phải là hình ảnh',
            'image.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'image.max' => 'File ảnh tối đa là 2MB',
            'description.required' => 'Nội dung không được bỏ trống',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            //thêm ảnh vào db và thư mục source. (thêm tên)
            if(Input::hasFile('image'))
            {
                $image = Input::file('image');
                $image->move('uploads/banner', $image->getClientOriginalName());
                $banner->image = $image->getClientOriginalName();
            }
            $banner->title = $request->title;
            $banner->description = $request->description;
            $banner->created_at = date('Y-m-d');
            $banner->save();

            return back()->with('success', 'Tạo thành công');
        }

        return view('admin.banner.create-banner');
    }

    //Cập nhật lại banner
    public function update_banner(Request $request){
        $validator = Validator::make($request->all(), [
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'description' => '',
            'title' => '',
        ],[
            'image.image' => 'File ảnh phải là hình ảnh',
            'image.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'image.max' => 'File ảnh tối đa là 2MB',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $banner = Banner::find($request->id);
            if(Input::hasFile('image'))
            {
                $image = Input::file('image');
                $image->move('uploads/banner', $image->getClientOriginalName());
                $oldFile = $banner->image;
                $banner->image = $image->getClientOriginalName();
                Storage::delete($oldFile);
            }
            $banner->title = $request->title;
            $banner->description = $request->description;
            $banner->updated_at = date('Y-m-d');
            $banner->save();
        }
        return redirect()->route('list-banner');
    }
    //Hiện banner đã chọn
    public function edit_banner($id){
        $listBanner = Banner::find($id);
        return view('admin.banner.edit-banner', compact('listBanner'));
    }
    //Xóa banner đã chọn
    public function delete_banner($id){
        $listBanner = Banner::find($id)->delete();
        return redirect()->route('list-banner');
    }
}
