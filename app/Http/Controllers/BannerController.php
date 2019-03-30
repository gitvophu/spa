<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function index(){
        return view('admin.list-banner');
    }
    public function create_banner(){
        return view('admin.create-banner');
    }
}
