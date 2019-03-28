<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('client.layout.master');
    }

    public function product_detail(){
        return view('client.product_detail');
    }
}
