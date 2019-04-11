<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';
    protected $primaryKey = 'id';

    //Get list comment in comments table
    public static function getListComment(){
        return Comment::query()
            ->join('products', 'products.id', '=', 'comments.product_id')
            ->join('posts', 'posts.id', '=', 'comments.post_id')
            ->select('comments.id','comments.description','comments.name', 'type', 'products.name as product_name', 'posts.title','comments.status')
            ->get();
    }
}
