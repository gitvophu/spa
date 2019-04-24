<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';

    public static function getProductByID($slug)
    {
        return Product::where('slug',$slug)->first();
    }
}
