<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

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
    public function edit($post_id){
        $post = Post::find($post_id);
        
        return view('admin.post.post_edit',compact('post_id','post'));
    }
    public function update(Request $request){
        // dd($request->all());
        $validator = Validator::make($request->all(),[
            'title'=>'required',
            'content'=>'required',
            'image'=>'required',
            'post_id'=>'required'
        ],[
            'title.required'=>'Bạn chưa nhập tiêu đề',
            'content.required'=>'Bạn chưa nhập nội dung',
            'image.required'=>'Bạn chưa chọn ảnh'
        ]);
        
        if ($validator->fails()) {
        
            
            return redirect()->route('edit-post')->withErrors($validator)->with($data);
        }
        $file = $request->file('image');
        $img_name = $file->getClientOriginalName();
        $file->move('uploads/post',$img_name);
        $post = Post::find($request->post_id);
        $old_img_name = $post->image;
        $post->image = $img_name;
        $post->title = $request->title;
        $post->content = $request->content;
        $post->created_at = date('Y-m-d');
        $post->updated_at = date('Y-m-d');
        $post->save();
        //xoa anh cũ
        unlink('uploads/post/'.$old_img_name);
        // $post->title = $request->title;
        
        return redirect()->route('edit-post',$request->post_id)->with('success','Chỉnh sửa bài viết thành công');
    }

    // trang xóa bài viết
    public function delete($id){
       Post::find($id)->delete();
       return redirect()->route('list-post')->with('success','Đã xoá 1 bài viết');
    }

    function store(Request $request){
        // dd($request->all());
        $validator = Validator::make($request->all(),[
            'title'=>'required',
            'content'=>'required',
            'image'=>'required'
        ],[
            'title.required'=>'Bạn chưa nhập tiêu đề',
            'content.required'=>'Bạn chưa nhập nội dung',
            'image.required'=>'Bạn chưa chọn ảnh'
        ]);
        
        if ($validator->fails()) {
            $data = [];
            $data['title'] = $request->title;
            $data['content'] = $request->content;
            
            return redirect()->route('create-post')->withErrors($validator)->with($data);
        }
        $file = $request->file('image');
        $img_name = $file->getClientOriginalName();
        $file->move('uploads/post',$img_name);
        $post = new Post();
        $post->image = $img_name;
        $post->title = $request->title;
        $post->content = $request->content;
        $post->created_at = date('Y-m-d');
        $post->updated_at = date('Y-m-d');
        $post->save();
        // $post->title = $request->title;
        
        return redirect()->route('create-post')->with('success','Tạo bài viết thành công');


    }
}
