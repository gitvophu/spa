<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';
    protected $primaryKey = 'id';

    //Get list comment in comments table
    public function getListComment(){
        return Comment::all();
    }
}
