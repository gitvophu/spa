<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Comment;
use App\Models\Product;
use Illuminate\Support\Str;
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
        $products = Product::orderBy('created_at','desc')->paginate(9);
        return view('client.products', compact('products'));
    }

    //Hiển thị trang chi tiết sản phẩm
    public function product_detail($slug){
        $product = new Product();
        $product_ = $product->getProductByID($slug);     
        $comments = Comment::where('product_id', $product->id)
        ->where('status',1)
        ->where('type', '2')        
        ->orderBy('created_at', 'desc')
        ->paginate(5);   
        $total_cmt = count($comments);
        $product_news = Product::orderBy('created_at', 'desc')->take(4)->get()->toArray();
        //var_dump($product_news);die();
        return view('client.product_detail', compact('product_', 'comments', 'total_cmt', 'product_news'));
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
        $validator = Validator::make($request->all(), [
            'nameproduct' => 'required',
            'imageproduct' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'priceproduct' => 'required|numeric',
            'desproduct' => 'required',
        ],[
            'nameproduct.required' => 'Tên sản phẩm không được bỏ trống',
            'priceproduct.required' => 'Giá sản phẩm không được bỏ trống',
            'priceproduct.numeric' => 'Giá sản phẩm phải là số',
            'imageproduct.required' => 'File ảnh không được bỏ trống',
            'imageproduct.image' => 'File ảnh phải là hình ảnh',
            'imageproduct.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'imageproduct.max' => 'File ảnh tối đa là 2MB',
            'desproduct.required' => 'Nội dung không được bỏ trống',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            if (Input::hasFile('imageproduct')) {
                $file = Input::file('imageproduct');
                $file->move('uploads/product', $file->getClientOriginalName());
                $product->image = $file->getClientOriginalName();
            }

            $product->name = $request->nameproduct;
            $product->price = $request->priceproduct;
            $product->description = $request->desproduct;
            $product->seotitle = $request->seotitlepro;
            $product->seodescription = $request->seodespro;
            $product->seokeyword = $request->seokeypro;
            $product->created_at = date('Y-m-d');
            $product->updated_at = date('Y-m-d');
            
            //slug
            if ($request->slug==null) {
                $slug = Str::slug($product->name,"-");
            }
            else{
                $slug = $request->slug;
            }
            $product->slug = $slug;
            $product->save();
            return redirect()->route('create')->with(['message' => 'Thêm thành công']);
        }
    }

    //chức năng xóa sản phẩm
    public function delete_product($product_id)
    {
        Comment::where('product_id', '=', $product_id)->delete(); // xóa comment trước
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
        $validator = Validator::make($request->all(), [
            'nameproduct' => '',
            'imageproduct' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'priceproduct' => 'numeric',
            'desproduct' => '',
        ],[
            'priceproduct.numeric' => 'Giá sản phẩm phải là số',
            'imageproduct.image' => 'File ảnh phải là hình ảnh',
            'imageproduct.mimes' => 'File ảnh chỉ nhận các file có đuôi jpeg,png,jpg,gif,svg',
            'imageproduct.max' => 'File ảnh tối đa là 2MB',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $product = Product::find($request->idproduct);
            if (Input::hasFile('imageproduct')) {
                // $oldFile = $product->image;
                // Storage::delete($oldFile);
                $file = Input::file('imageproduct');
                $file->move('uploads/product', $file->getClientOriginalName());
                $product->image = $file->getClientOriginalName();
            }
            $product->name = $request->nameproduct;
            $product->description = $request->desproduct;
            $product->price = $request->priceproduct;
            $product->seotitle = $request->title;
            $product->seokeyword = $request->key;
            $product->seodescription = $request->des;
            $product->save();
            return back()->with(['message' => 'Cập nhật thành công']);
        }
    }

    // xử lý ajax cho comment san pham
    function comment_ajax(Request $request){
        
        $data = $request->only('name','message','type','product_id');
        $comment = new Comment();
        $comment->name = $data['name'];
        $comment->description = $data['message'];
        $comment->product_id = $data['product_id'];
        $comment->type = $data['type'];
        $comment->save();
        $date = new DateTime($comment->created_at);
        $data['date'] = $date->format('Y-m-d H:m:i');

        return response()->json($data);
    }
}
