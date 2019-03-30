<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;

class MessageController extends Controller
{
    public function index(){
    	$message = Message::all();
        return view('admin.message.messages',compact('message'));
    }
}
