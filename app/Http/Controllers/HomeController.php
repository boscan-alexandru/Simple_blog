<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
use App\Post;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function post(Request $request){

        
        $this->validate($request, [
            'image'  => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
    
        $image = $request->file('image');
    
        $image_name = time() . '.' . $image->getClientOriginalExtension();
    
        $destinationPath = public_path('/img');
    
        $resize_image = Image::make($image->getRealPath());


    
        $resize_image->save($destinationPath . '/' . $image_name);
    
        $image->move($destinationPath, $image_name);



        $title = $request->input('title');
        $description = $request->input('description');
        $status = $request->input('status');

        //Save to datebase
        $post = new Post;

        $post->title                = $title;
        $post->description          = $description;
        $post->image_url            = 'img/'.$image_name;
        $post->status               = $status;
        $post->save();
        
        return back()->with([
            'success' => 'Posted Successfully',
            'imageName' => $image_name
        ]);
    }
}
