<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(){
        $products = Product::skip(1)->take(6)->get();
        $bannerHome = Banner::get()->take(-3);
        $posts = Post::get();
        return view('client.home',compact('products', 'bannerHome', 'posts'));
    }

    public function product_detail(){
        return view('client.product_detail');
    }

}
