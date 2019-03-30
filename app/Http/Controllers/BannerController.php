<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{

    public function index(){
        $listBanner = Banner::getAllBanner();

        return view('admin.list-banner', compact('listBanner'));
    }

    public function create_banner(){
        return view('admin.create-banner');
    }
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

        return view('admin.create-banner');
    }

    public function update_banner(Request $request){
        $banner= new Banner();
        $validator = Validator::make($request->all(), [
            'image' => 'required',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'description' => '',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            if($request->hasfile('image'))
            {
                $image = $request->file('image');
                $name = $image->getClientOriginalName();
                $image->move(public_path().'/assets/img/sliders/', $name);
                $banner->image = $name;
            }
            $banner->description = $request->description;
            $banner->save();
        }
        return view('admin.list-banner');
    }

    public function edit_banner($id){
        $listBanner = Banner::findBannerByID($id);
        return view('admin.edit-banner', compact('listBanner'));
    }

    public function delete_banner($id){
        Banner::deleteBannerByID($id);
        $listBanner = Banner::getAllBanner();
        return view('admin.list-banner', compact('listBanner'));
    }
}
