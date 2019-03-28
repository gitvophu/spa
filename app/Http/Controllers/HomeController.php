<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('client.home');
    }

    public function product_detail(){
        return view('client.product_detail');
    }
}
