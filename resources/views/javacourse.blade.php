@extends('layouts.app')

@section('content')
<style type="text/css" media="screen">
    html,body{
        overflow: hidden;
        height: 100%;
        margin: 0;
    }
</style>
<div class="row" style="background-color: white; width: 100%;height: 100%;min-height: 100%;margin:0;">
    <div class="col-md-4" style="padding: 5px 0px 5px 5px;height: 85%;">
        <div style="height: 100%;">  
            <div class="panel-group" id="accordion" style="box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="color: inherit;">
                            <div class="panel-heading" style="background-color: #e3e3e3;">
                                <h4 class="panel-title">
                                    Lesson
                                </h4>
                            </div>
                        </a>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body" style="background-color: #f2efe8;">
                            @foreach($lessons as $lesson)
                               {!! $lesson->lesson !!}
                            @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="color: inherit;">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    Practice
                                </h4>
                            </div>
                        </a>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body" style="background-color: #dbe9d8;">
                            @foreach($lessons as $lesson)
                                {!! $lesson->practice !!}
                            @endforeach
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

    <div class="col-md-4" style="padding: 5px; height: 85%;">
        <div style="background-color: #383e42; height: 100%;box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">   
            <div style="margin-left: 47px;height: 5%">
                <h5 style="background-color: #141414;display: flex;color: white;margin: 0;padding: 10px;width: 150px;height:100%;border-radius: 15px 15px 0 0;">@foreach($lessons as $lesson){{ $lesson->title }}@endforeach.java
                @foreach($lessons as $lesson){{ $lesson->coursename }}@endforeach</h5>   
            </div>
            <div id="editor" style="position: relative;top: 0;right: 0;bottom: 0;left: 0;height: 89%;">@foreach($lessons as $lesson){{ $lesson->code }}@endforeach
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 0;height: 6%" onclick="runcode()">Run Code</button>
        </div>
    </div>

    <div class="col-md-4" style="padding: 5px 5px 5px 0px;height: 85%;">
        <div style="height: 100%;box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">  
            <pre id="result_content" style="padding: 10px; background-color: black;height: 100%; color: white;white-space: normal;"></pre>
        </div>
    </div>
    <div class="text-center" style="height: 15%">
        {!! $lessons->links(); !!}
    </div>
</div>
@endsection
@section('script')

<script text="text/javascript" src="{{ URL::asset('js/ace-builds-master/src-noconflict/ace.js') }}" charset="utf-8"></script>
<script>

    var token = '{{ Session::token() }}';

    var uLevel = 0;

    // Parsing JSON
    var raw_lesson = <?php echo json_encode($lessons); ?>;
    // Calling data inside raw lesson
    var lesson = raw_lesson.data[0];
    // Embedding ACE editor 
    var editor = ace.edit("editor");
    editor.session.setMode("ace/mode/java");
    editor.setTheme("ace/theme/twilight");
    editor.setOption("wrap", true);

    var getPageNum;

    getPageNum = <?php echo $_GET['page']; ?>;
    $(document).ready(function () {

        uLevel = <?php echo Session::get('uJavaLevel');?>;
        if (getPageNum > uLevel) {
            window.location.href = "/java?page=" + uLevel;
        }

        var getPage = uLevel + 1;
        // $(".pagination li:nth-child(" + getPage + ")").nextAll().addClass('hidden');
    });

    $(document).ready(function(){
        $('.pagination>.active').nextAll().addClass('hidden');
    });

    function runcode(){
        var text = editor.getValue();

        if(text == lesson.answersheet){
            $('#result_content').html(lesson.lessonName);

            if (uLevel == {{Session::get('uJavaLevel')}}) {

                    var upLevel;
                    upLevel = <?php echo Session::get('uJavaLevel');?>;
                    upLevel = upLevel + 1;

                    $.ajax({                        
                        method: 'POST',
                        url: 'edit',
                        data: {upLevel: upLevel, _token: token},
                        success: function (data) {
                            
                            console.log(data);
                        },
                    });
                }
        }else {
            $('#result_content').html("Please recheck again if not try to refresh and redo it again");
        }

        // $.ajax({
        //     method: "GET",
        //     url: 'http://localhost/codeschool/public/runcode',
        //     data: data
        // }).done(function(data){
        //     console.log(data);

        //     if(raw_lesson.current_page === 6){
        //         if(text === lesson.answersheet){
        //             $('#result_content').html(data.result.replace(/\n/g, "<br />"));
        //             $('.pagination>.active').next().removeClass('hidden');
        //         }else{
        //             alert(lesson.answersheet);
        //             $('#result_content').html("<p>Please check the syntax and practice again!</p>");
        //         }
        //         lesson.answersheet="";
        //     }else{      
        //         if(eval(lesson.answersheet)){
        //             $('#result_content').html(data.result.replace(/\n/g, "<br />"));
        //             $('.pagination>.active').next().removeClass('hidden');
        //         }else{
        //             $('#result_content').html("<p>Please asdf the syntax and practice again!</p>");
        //         }
        //     }
        // });
    }


</script>
@endsection
