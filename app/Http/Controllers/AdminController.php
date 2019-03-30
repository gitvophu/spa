<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\MessageBag;

class AdminController extends Controller
{
    public function index(){
        return view('admin.home');
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
        // if($request->input('email') == null || $request->input('password') == null)
        // {
        //     $errors = new MessageBag(['login' => 'Vui lòng nhập thông tin Email hoặc Mật Khẩu!']);
        //     return redirect()->back()->withInput()->withErrors($errors);
        // }
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
            try {
                if (Auth::attempt(['email' => $email, 'password' => $password])) {
                    Session::put('email', $data->email);
                    Session::put('login', TRUE);
                    return redirect('/');
                } else {
                    $errors = new MessageBag(['errors' => 'Email hoặc mật khẩu không đúng!']);
                    return redirect()->back()->withInput()->withErrors($errors);
                }
                
            }catch (\Exception $exception)
            {
                return redirect()->back()->withInput()->withErrors($exception);
            }
        }
    }
}
