<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use Illuminate\Support\Facades\Session;

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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::id();
        $getUsers = DB::table('users')->where('id', $id)->get();
        $htmlLessons = DB::table('lessons')->where('course_id', 2)->get();
        $javaLessons = DB::table('lessons')->where('course_id', 1)->get();

        Session::set('uID', $id);
        foreach ($getUsers as $user){
            Session::set('uHtmlLevel', $user->htmlLevel); ;
            Session::set('uJavaLevel', $user->javaLevel); ;
            Session::set('uName', $user->name); ;
        }

        return view('home')->with('htmlLessons',$htmlLessons)->with('javaLessons',$javaLessons);

    }
}
