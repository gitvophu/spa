<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //

    protected $table = 'posts';
    protected $primaryKey = 'id';
    
    // hàm lấy tóm tắt bài viết
    public function getExcerpt(){
        if (strlen($this->content) > 100) {
            # code...
            return substr($this->content,0,100) . '...';
        }
        return $this->content;
    }
    
}
