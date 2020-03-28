<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Course;
use App\Lesson;
use DB;

class AdminController extends Controller
{

    public function admin(){

        $courses = Course::all();
        return view('adminDashboard',compact('courses'));
    }

    public function listLesson($id){
        $getCNames = DB::table('courses')->where('id', $id)->get();
        $listLessons = DB::table('lessons')->where('course_id', $id)->get();

        return view('listLesson')->with('getCNames',$getCNames)->with('listLessons',$listLessons);
    }

    function insert(Request $req)
    {
        $course_id = $req->input('course_id');
        $lessonName = $req->input('lessonName');
        $lesson = $req->input('lesson');
        $practice = $req->input('practice');
        $title = $req->input('title');
        $code = $req->input('code');
        $answersheet = $req->input('answersheet');

        $data = array('course_id' => $course_id, 'lessonName' => $lessonName, 'lesson' => $lesson, 'practice' => $practice,'title' => $title,'code' => $code,'answersheet' => $answersheet);
        DB::table('lessons')->insert($data);
        return redirect('/getAdmin/'.$course_id);
    }

    function delete($cid,$id)
    {
        DB::table('lessons')->where('id', $id)->delete();
        return redirect('/getAdmin/'.$cid);
    }

    function edit($id)
    {
        $row = DB::table('lessons')->where('id', $id)->first();
        return view('editLesson')->with('row', $row);
    }

    function update(Request $req)
    {
        $id = $req->input('id');
        $course_id = $req->input('course_id');
        $lessonName = $req->input('lessonName');
//        $lesson = $_POST['lesson'];
//        $practice = $_POST['practice'];
        $title = $req->input('title');
        $code = $req->input('code');
        $answersheet = $req->input('answersheet');

//        DB::table('lessons')->where('id',$id)->update(['lessonName' => $lessonName, 'lesson' => $lesson, 'practice' => $practice,'title' => $title,'code' => $code,'answersheet' => $answersheet]);
        DB::table('lessons')->where('id',$id)->update(['lessonName' => $lessonName, 'title' => $title,'code' => $code,'answersheet' => $answersheet]);
        return redirect('/getAdmin/'.$course_id);
    }


}

