<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $list_post = Post::get();

        return view('admin.post.post_list',compact('list_post'));
    }

    public function create(){
        // return view('admin.post.create_post');
    }
    public function edit(){
        // return view('admin.post.create_post');
    }
    public function delete($id){
       
    }
}
