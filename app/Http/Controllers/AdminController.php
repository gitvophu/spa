<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Comment;
use App\Models\Message;
use App\Models\Post;
use App\Models\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Auth\CheckLoginController;

class AdminController extends Controller
{

    public function index(){
        $countComment = Comment::count();
        $countPost = Post::count();
        $countMess = Message::count();
        $countBanner = Banner::count();
        $countProduct = Product::count();
        return view('admin.home', compact('countComment', 'countPost', 'countMess', 'countBanner', 'countProduct'));
    }

    //list infor banner
    public function banners(){
        return view('admin.banner');
    }

    public function ad_login(){
        return view('admin.ad-login');
    }

    public function doLogin(Request $request)
    {
        $validator = Validator::make($request->all(), 
            [
                'email' =>'required|email',
                'password' => 'required|min:6'
            ],
            [
                'email.required' => 'Email là trường bắt buộc',
                'email.email' => 'Email không đúng định dạng',
                'password.required' => 'Mật khẩu là trường bắt buộc',
                'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự',
            ]
        );

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $email = $request->input('email');
            $password = $request->input('password');
            $remember_me = $request->has('remember') ? true : false;
            $user = User::all()->first();
            
            if (Auth::attempt(['email' => $email, 'password' => $password], $remember_me)) {
                Session::put('name', $user['name']);
                Session::put('id', $user['id']);
                return redirect('/admin');
            } else {
                $errors = new MessageBag(['errors' => 'Email hoặc mật khẩu không đúng!']);
                return redirect()->back()->withInput()->withErrors($errors);
            }                
        }
    }

    public function change_password($id)
    {
        $user = User::find($id)->first();
        return view('/admin.change-password', compact('user'));
    }

    public function change_password_(Request $request){
        if($request->password != null)
        {
            $validator = Validator::make($request->all(),
                [
                    'password' => 'required|min:6'
                ],
                [
                    'password.required' => 'Mật khẩu là trường bắt buộc',
                    'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự',
                ]
            );
            if ($validator->fails()) {
                $errors = new MessageBag(['error' => 'xx']);
                return redirect()->back()->withInput()->withErrors($validator->errors());
            }
            else {
                User::where('id', $request['id'])
                ->update([
                    'password' => bcrypt($request['password']),
                ]);
            }
        }
        if($request->password == null)
        {
            $errors = new MessageBag(['error' => 'Vui lòng nhập mật khẩu trước khi gửi yêu cầu!']);
            return redirect()->back()->withInput()->withErrors($errors);
        }
        return redirect()->back()->with('alert-success', 'Thay đổi mật khẩu thành công.');;
    }

    public function logout(){
        Auth::logout();
        return Redirect::to('/admin/ad-login'); // redirect the user to the login screen
    }
}
