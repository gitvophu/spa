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
}
