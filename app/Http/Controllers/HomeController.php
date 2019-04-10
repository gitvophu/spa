<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Models\Product;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(){
        $products = DB::table('products')->skip(1)->take(6)->get();
        return view('client.home',compact('products'));
    }

    public function product_detail(){
        return view('client.product_detail');
    }

                                                                                                                                     
}
