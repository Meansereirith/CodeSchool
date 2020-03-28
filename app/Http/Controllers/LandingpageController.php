<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Updateinfo;

class LandingpageController extends Controller
{	
	public function getpage(){
		return view('auth.register');
	}

    public function postinfo(Request $request){
    	//validate the data 
    	
    	//store in updateinfos table
    	$updateinfo = new Updateinfo;

    	$updateinfo->name = $request->name;
    	$updateinfo->email = $request->email;

    	$updateinfo->save();
    }
}
