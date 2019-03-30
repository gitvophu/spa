<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
// use App\Models\Comment;

class CommentController extends Controller
{
    public function index(){       
        $comment = new Comment(); 
        $list_comment = $comment->getListComment();
        //dd($list_comment);
        return view('admin.list-comment', compact('list_comment'));
    }
}
