<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index(){
        return view('admin.home');
    }

    //list infor banner
    public function banners(){
        return view('admin.banner');
    }
}
