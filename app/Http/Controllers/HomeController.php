<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(){
        $products = DB::table('products')->skip(1)->take(6)->get();
        return view('client.home',compact('products'));
    }                                                                                                                                 
}
