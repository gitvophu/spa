<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{
    public function index(){
    	$message = Message::all();
        return view('admin.message.messages',compact('message'));
    }

    public function create(Request $request){
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        } else {
            Message::insert([
                'name'=> $request->name,
                'email'=> $request->email,
                'phone'=> $request->phone,
                'message'=> $request->message,
            ]);
            return back()->with('success', 'Send Message Successful');
        }

        return view('client.layout.footer');
    }
    //Xóa message đã chọn
    public function delete_message($id){
        $list = Message::find($id)->delete();
        return redirect()->route('list-message');
    }
}
