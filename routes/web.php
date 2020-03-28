    <?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Http\Request;

use App\Course;
use App\Lesson;

Route::get('/home', function(){
    return view('auth.register');
});

Route::post('/home', 'LandingpageController@postinfo');

Auth::routes();


//if admin go to this page
Route::group(['middleware' => ['admin']], function () {
    Route::get('/admin', 'AdminController@admin');
    Route::get('/getAdmin/{id}', 'AdminController@listLesson');
    Route::post('/insert', 'AdminController@insert');
    Route::get('/delete/{cid}/{id}', 'AdminController@delete');
    Route::get('/edit/{id}', 'AdminController@edit');
    Route::post('/update', 'AdminController@update');
});

Route::get('/' , 'HomeController@index');

Route::get('/homepage', 'HomeController@index');

Route::get('/java', function () {
    $lessons = Lesson::where('course_id', '=', 1)->simplePaginate(1);
    return view('javacourse')->withLessons($lessons);
});

Route::post('/edit',function (Request $request){
    $data = $request->input('upLevel');
    DB::table('users')->where('id', Session::get('uID'))->update(['javaLevel' => $data]);
    Session::set('uJavaLevel',$data);
    return response()->json(['data' => $data]);
});

Route::group(['middleware' => ['auth']], function () {


});



// Route::get('/runcode', function (Request $request) {
//     $code = $request->input('code');
//     $title = $request->input('title');
//     $filename = $title . '.java';

//     $byteWritten = Storage::disk('local')->put($filename, $code);
//     if ($byteWritten === false) {
//         Log:
//         error("Fail to Write File");
//     }

//     $src_code = Storage::get($filename);
//     Log::info($src_code);


//     //Compile
//     $storagePath = Storage::disk('local')->getDriver()->getAdapter()->getPathPrefix();
//     $filename = $storagePath . $title . '.java';
//     $output = array();
//     exec('javac ' . $filename . '-g 2>&1', $output, $return);


//     if ($return === 1) {
//         $result = $output[3];
//     } else {
//         $str = "java -cp $storagePath $title 2>&1";
//         $result = shell_exec($str);
//     }

//     return response()->json(['result' => $result]);

// });