<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    // trang index
    public function index(){
        $list_post = Post::get();

        return view('admin.post.post_list',compact('list_post'));
    }
    
    // trang tạo bài viết
    public function create(){
        return view('admin.post.post_create');
    }
    // trang sửa bài viết
    public function edit(){
        // return view('admin.post.create_post');
    }

    // trang xóa bài viết
    public function delete($id){
       Post::find($id)->delete();
       return redirect()->route('list-post');
    }
}
