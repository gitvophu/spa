<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
// use App\Models\Comment;

class CommentController extends Controller
{
    public function index(){       
        $list_comment = Comment::getListComment();
        return view('admin.comment.list-comment', compact('list_comment'));
    }

    public function update_status(Request $request){       
        $comment_id = $request->only('comment_id');
        $comment = Comment::where('id',$comment_id)->first();

        // dd($comment);
        $comment->status =  !$comment->status;
        $comment->save();

        return response()->json(['success'=>'thành công']);
    }
}
