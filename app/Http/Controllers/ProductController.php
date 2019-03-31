<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
	//hiển thị danh sách sản phẩm
    public function index(){
    	$products = Product::all();
        return view('admin.product.products',compact('products'));
    }

    //Giao diện thêm sản phẩm
    public function create()
    {
    	return view('admin.product.create_product');
    }

    //chức năng thêm sản phẩm
    public function create_product(Request $request)
    {
    	$product = new Product();
    	if(Input::hasFile('imageproduct')){
            $file = Input::file('imageproduct');
            $file->move(public_path().'/assets/img/product', $file->getClientOriginalName());
            $product->image = $file->getClientOriginalName();
        }
        $product->name = $request->nameproduct;
        $product->price = $request->priceproduct;
        $product->description = $request->desproduct;
        $product->save();
        return redirect()->route('create')->with(['message' => 'Thêm thành công']);
    }

    //chức năng xóa sản phẩm
    public function delete_product($product_id)
    {
    	$product = Product::find($product_id)->delete();
    	return redirect()->route('list-product')->with(['message' => 'Xóa thành công']);
    }


    //sửa sản phẩm
    public function update($product_id)
    {
    	$product = Product::find($product_id);
    	return view('admin.product.update_product',compact('product'));
    }

    //sửa sản phẩm
    public function update_product(Request $request)
    {
        $product = Product::find($request->idproduct);
        if(Input::hasFile('imageproduct'))
        {
            // $oldFile = $product->image;
            // Storage::delete($oldFile);
            $file = Input::file('imageproduct');
            $file->move(public_path().'/assets/img/product', $file->getClientOriginalName());
            $product->image = $file->getClientOriginalName();  
        }
        $product->name = $request->nameproduct;
        $product->description= $request->desproduct;
        $product->price = $request->priceproduct;
        $product->save();
        return redirect()->route('list-product')->with(['message' =>'Cập nhật thành công']);
    }
}
