<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
	//hiển thị danh sách sản phẩm
    public function index(){
    	$products = Product::all();
        return view('admin.product.products',compact('products'));
    }

    //Hiển thị danh sách sản phẩm client
    public function view_product(){
        $products = Product::paginate(9);
        return view('client.products', compact('products'));
    }

    //Hiển thị trang chi tiết sản phẩm
    public function product_detail($id){
        $product = new Product();
        $product_ = $product->getProductByID($id);     
        $comments = Comment::where('product_id', $id)->where('type', '2')->get()->toArray();   
        $total_cmt = count($comments);
        return view('client.product_detail', compact('product_', 'comments', 'total_cmt'));
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
            $file->move(public_path().'/uploads/product', $file->getClientOriginalName());
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
            $file->move(public_path().'/uploads/product', $file->getClientOriginalName());
            $product->image = $file->getClientOriginalName();  
        }
        $product->name = $request->nameproduct;
        $product->description= $request->desproduct;
        $product->price = $request->priceproduct;
        $product->save();
        return back()->with(['message' =>'Cập nhật thành công']);
    }
}
