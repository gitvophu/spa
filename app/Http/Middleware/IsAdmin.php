<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // if(!Auth::check()){
        //     $errors = new MessageBag(['errors' => 'Vui lòng đăng nhập!']);
        //     return redirect('/admin/ad-login')->withInput()->withErrors($errors);
        // }
        return $next($request);
    }
}
