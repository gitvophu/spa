<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{
    //Lấy danh sách banner trong db và hiển thị ra view
    public function index(){
        $listBanner = Banner::get();
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
            'image' => 'required',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'description' => '',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            //thêm ảnh vào db và thư mục source. (thêm tên)
            if($request->hasfile('image'))
            {
                $image = $request->file('image');
                $name = $image->getClientOriginalName();
                $image->move(public_path().'/assets/img/sliders/', $name);
                $banner->image = $name;
            }
            $banner->description = $request->description;
            $banner->save();

            return back()->with('success', 'Your images has been successfully');
        }

        return view('admin.banner.create-banner');
    }

    //Cập nhật lại banner
    public function update_banner(Request $request){
        $validator = Validator::make($request->all(), [
            'image' => '',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'description' => '',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $banner = Banner::find($request->id);
            if($request->hasfile('image'))
            {
                $image = $request->file('image');
                $name = $image->getClientOriginalName();
                $image->move(public_path().'/assets/img/sliders/', $name);
                $oldFile = $banner->image;
                $banner->image = $name;
                Storage::delete($oldFile);
            }
            $banner->description = $request->description;
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
