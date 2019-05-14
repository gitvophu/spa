<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Post;
use App\Models\Banner;
use App\Models\Comment;
use App\Models\Message;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
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
        
        if (Auth::check()) {
            
            return redirect()->route('admin-index');
        }
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
        return redirect()->back()->with('alert-success', 'Thay đổi mật khẩu thành công.');
    }

    public function sendMail(Request $request){
        $validator = Validator::make($request->all(),[
            'email'=>'required|email',
        ],[
            'email.required' => 'Mật khẩu là trường bắt buộc.'
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator->errors());
        }
        $email = $request->email;
        $reset_pass_token = str_random(30);
        $user = User::where('email',$email)->first();
        if (!$user) {
            $error = new MessageBag(['error' => 'Email không hợp lệ!']);
            return redirect()->back()->withInput()->withErrors($error);
        }
        $user->reset_pass_token = $reset_pass_token;
        $user->save();
        $link = route('reset-link',['token'=>$reset_pass_token,'email'=>$email]);
        Mail::send('admin.emails.reset_email', array(
            'link'=> $link
        ), function($message) use ($email){
	        $message->to($email, 'User')->subject('Xin chào');
	    });        
        return redirect()->back()->with('alert-success', 'Vui lòng kiểm tra mail để thay đổi mật khẩu mới!');
    }

    public function reset_link($token, $email){
        $user = User::where('email',$email)->first();

        if ($user->reset_pass_token == $token) {
            return view("admin.reset_form",compact('email'));
        }
        else{
            echo "sai ";
        }
    }

    function do_reset(Request $request){
        $validator = Validator::make($request->all(),[
            'email'=>'required|email',
            'password'=>'required|min:6'
        ],[]);
        if ($validator->fails()) {
            $errors = new MessageBag(['error' => 'Reset mật khẩu thất bại, lỗi dữ liệu truyền vào ko đúng ràng buộc']);
            return redirect()->back()->withInput()->withErrors($errors);
        }
        $email = $request->email;
        $password = $request->password;
        $user = User::where('email',$email)->first();
        $user->password = bcrypt($password);
        $user->reset_pass_token = "";
        $user->save();
        return redirect('/admin');
    }

    public function forget_password(){
        return view('admin.forget-password');
    }

    public function logout(){
        Auth::logout();
        return Redirect::to('/admin/ad-login'); // redirect the user to the login screen
    }

    function edit_metadata(Request $request){
        $site_name = DB::table("metadata")->where('meta_name','site_name')->get();
        $app_id = DB::table("metadata")->where('meta_name','app_id')->get();

        return view('admin.metadata.edit');
    }
    function update_metadata(Request $request){
        // dd($request->all());
        DB::table('metadata')
        ->where('meta_name','site_name')
        ->update([
            'value'=>$request->site_name
        ]);
        DB::table('metadata')
        ->where('meta_name','app_id')
        ->update([
            'value'=>$request->app_id
        ]);
        return redirect()->route('metadata.edit')->with('success','Cập nhật thành công');
    }
}
