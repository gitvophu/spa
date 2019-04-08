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

    function store(Request $request){

        $file = $request->file('image');
        $img_name = $file->getClientOriginalName();
        $file->move('uploads/image',$img_name);
        $post = new Post();
        $post->image = $img_name;
        $post->title = $request->title;
        $post->content = $request->title;
        $post->created_at = date('Y-m-d');
        $post->updated_at = date('Y-m-d');
        // $post->title = $request->title;
        
        dd(';tc');
        


    }
}
