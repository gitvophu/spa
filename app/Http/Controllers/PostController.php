<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    // type = 1 là post, 2 là product
    // trang chi tiết bài viết
    function post_detail($post_id){
        $post = Post::find($post_id);
        
        $comments = Comment::where('post_id',$post_id)
        ->where('type',1)
        ->where('status',1)
        ->orderBy('created_at','DESC')
        ->paginate(5);
        $comments_count = Comment::where('post_id',$post_id)
        ->where('type',1)
        ->where('status',1)
        ->get();
        $comments_count = count($comments_count);
        $relatetive_posts = Post::where('id','<>',$post_id)
            ->orderBy('created_at','DESC')
            ->limit(4)
            ->get();
        // dd($comments);
        return view('client.post_detail',compact('post','comments','relatetive_posts','comments_count'));
    }

    // trang ds bai viet admin
    public function list_post(){
        $list_post = Post::get();

        return view('admin.post.post_list',compact('list_post'));
    }

    //danh sách bài viết client
    public function view_post(){
        $posts = Post::paginate(9);
        return view('client.posts', compact('posts'));
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
            // 'image'=>'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'post_id'=>'required'
        ],[
            'title.required'=>'Bạn chưa nhập tiêu đề',
            'content.required'=>'Bạn chưa nhập nội dung',
            'image.image' => 'File ảnh phải là hình ảnh',
            'image.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'image.max' => 'File ảnh tối đa là 2MB',
            // 'image.required'=>'Bạn chưa chọn ảnh'
        ]);
        
        if ($validator->fails()) {
            return redirect()->route('edit-post',$request->post_id)->withErrors($validator) ;
        }
        $post = Post::find($request->post_id);
        $post->title = $request->title;
        $post->content = $request->content;
        $post->created_at = date('Y-m-d');
        $post->updated_at = date('Y-m-d');
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $img_name = $file->getClientOriginalName();
            $file->move('uploads/post',$img_name);
            $old_img_name = $post->image;
            $post->image = $img_name;
            //xoa anh cũ
            $path = 'uploads/post/'.$old_img_name;
            if (file_exists($path)) {
                unlink( $path);
            }
        }
        $post->save();
        
        
        // $post->title = $request->title;
        // dd('tc');
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
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ],[
            'title.required'=>'Bạn chưa nhập tiêu đề',
            'content.required'=>'Bạn chưa nhập nội dung',
            'image.required'=>'Bạn chưa chọn ảnh',
            'image.image' => 'File ảnh phải là hình ảnh',
            'image.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'image.max' => 'File ảnh tối đa là 2MB',
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

    // xử lý ajax cho comment bai post
    function comment_ajax(Request $request){
        // dd($request->all());
        $data = $request->only('name','message','type','post_id');
        // $validator = Validator::make()
        $comment = new Comment();
        $comment->name = $data['name'];
        $comment->description = $data['message'];
        $comment->post_id = $data['post_id'];
        $comment->type = $data['type'];
        // $comment->created_at = date('Y-m-d');
        $comment->save();
        $date = new DateTime($comment->created_at);
        $data['date'] = $date->format('Y-m-d H:m:i');
      

        return response()->json($data);
    }
}
