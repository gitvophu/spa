<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    //connect table banners
    protected $table = 'banners';
    protected $primaryKey = 'id';

    //get all table banner
    public static function getAllBanner(){
        return Banner::get();
    }

}
