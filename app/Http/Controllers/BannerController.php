<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function index(){
        $listBanner = Banner::getAllBanner();

        return view('admin.list-banner', compact('listBanner'));
    }
    public function create_banner(){

        return view('admin.create-banner');
    }
    public function edit_banner(){
        return view('admin.edit-banner');
    }
}
