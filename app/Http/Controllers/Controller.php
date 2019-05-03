<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    function __construct(){
        $site_name = DB::table('metadata')->where('meta_name','site_name')->first();
        $site_name = $site_name->value;
        $app_id = DB::table('metadata')->where('meta_name','app_id')->first();
        $app_id = $app_id->value;
        View::share('site_name',$site_name);
        View::share('app_id',$app_id);
    }
}
