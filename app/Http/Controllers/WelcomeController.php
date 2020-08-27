<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use DB;

class WelcomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function welcome()
    {
        return view('welcome')->with([
            "posts" => DB::table('posts')->paginate(4)
        ]);
    }
    function fetch_data(Request $request){

        if($request->ajax()){

            $posts = DB::table('posts')->paginate(4);
            return view('welcome', compact('posts'))->render();
        }
    }
    
}
