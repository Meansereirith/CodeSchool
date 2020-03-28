@extends('layouts.app')

@section('content')
    <style type="text/css" media="screen">
        html, body {
            overflow: hidden;
            height: 100%;
            margin: 0;
        }
    </style>
    <div class="row" style="background-color: white; width: 100%;height: 100%;min-height: 100%;margin:0;">
        <div class="col-md-4" style="padding: 5px 0px 5px 5px;height: 85%;">
            <pre id="answer" style="position: relative;top: 0;right: 0;bottom: 0;left: 0;height: 89%;">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
    &lt;head&gt;
        &lt;title&gt;Mlab Coding School&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
        &lt;h1&gt;Hello World!&lt;/h1&gt;
    &lt;/body&gt;
&lt;/html&gt;</pre>
            {{--<div style="height: 100%;">--}}
                {{--<div class="panel-group" id="accordion"--}}
                     {{--style="box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">--}}
                    {{--<div class="panel panel-default">--}}
                        {{--<div class="panel-heading" style="background-color: #e3e3e3;">--}}
                            {{--<h4 class="panel-title">--}}
                                {{--<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">--}}
                                    {{--Lesson</a>--}}
                            {{--</h4>--}}
                        {{--</div>--}}
                        {{--<div id="collapseOne" class="panel-collapse collapse in">--}}
                            {{--<div class="panel-body" style="background-color: #f2efe8;">--}}
                                {{--<p>lessson</p>--}}
                                {{--<p>HTML is the language used to create the web pages you visit everyday. It provides a--}}
                                    {{--logical way to structure content for web pages.--}}

                                    {{--Let's analyze the acronym "HTML", as it contains a lot of useful information. HTML--}}
                                    {{--stands for HyperText Markup Language.--}}

                                    {{--A markup language is a computer language that defines the structure and presentation--}}
                                    {{--of raw text. Markup languages work by surrounding raw text with information the--}}
                                    {{--computer can interpret, "marking it up" for processing.--}}

                                    {{--HyperText is text displayed on a computer or device that provides access to other--}}
                                    {{--text through links, also known as “hyperlinks”. In fact, you probably clicked on--}}
                                    {{--many, many hyperlinks on your path to this Codecademy course!--}}

                                    {{--In this course, you'll learn how to use the fundamentals of HTML to structure,--}}
                                    {{--present, and link content. You'll also learn how to use CSS, or Cascading Style--}}
                                    {{--Sheets, to style the HTML content you add to web pages.--}}

                                    {{--Let's get started!</p>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="panel panel-default">--}}
                        {{--<div class="panel-heading">--}}
                            {{--<h4 class="panel-title">--}}
                                {{--<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Practice</a>--}}
                            {{--</h4>--}}
                        {{--</div>--}}
                        {{--<div id="collapseTwo" class="panel-collapse collapse">--}}
                            {{--<div class="panel-body" style="background-color: #dbe9d8;">--}}
                                {{--<p>practice</p>--}}
                                {{--<p>1.--}}
                                    {{--In the code editor to the right, type your name in between--}}
                                {{--<h1> and </h1>, then press Run.--}}
                                {{--</p>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        </div>

        <div class="col-md-4" style="padding: 5px; height: 85%;">
            <div style="background-color: #383e42; height: 100%;box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">
                <div style="margin-left: 47px;height: 5%">
                    <h5 style="background-color: #141414;display: flex;color: white;margin: 0;padding: 10px;width: 150px;height:100%;border-radius: 15px 15px 0 0;">
                        index.hmlt</h5>
                    {{--<h5 style="background-color: #141414;display: flex;color: white;margin: 0;padding: 10px;width: 150px;height:100%;border-radius: 15px 15px 0 0;">@foreach($lessons as $lesson){{ $lesson->title }}@endforeach.--}}
                    {{--                @foreach($lessons as $lesson){{ $lesson->coursename }}@endforeach</h5>   --}}
                </div>
                <pre id="editor" style="position: relative;top: 0;right: 0;bottom: 0;left: 0;height: 89%;">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
    &lt;head&gt;
        &lt;title&gt;Mlab School&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
        &lt;h1&gt;my heading&lt;/h1&gt;
        &lt;button&gt;get started&lt;/button&gt;
    &lt;/body&gt;
&lt;/html&gt;</pre>
                <button type="button" class="btn btn-primary" style="border-radius: 0;height: 6%" onclick="runhtml()">
                    Run Code
                </button>
            </div>
        </div>

        <div class="col-md-4" style="padding: 5px 5px 5px 0px;height: 85%;">
            <div style="height: 100%;box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">
            <pre id="result_content"
                 style="padding: 10px;height: 50%;white-space: normal;">
            </pre>
            <pre id="answer_test"
                     style="padding: 10px;height: 50%;white-space: normal;">
            </pre>
            </div>
        </div>
        <div class="text-center" style="height: 15%">
            <p>lesson link</p>
            {{--{!! $lessons->links(); !!}--}}
        </div>

    </div>
@endsection
@section('script')

    <script text="text/javascript" src="{{ URL::asset('js/ace-builds-master/src-noconflict/ace.js') }}"
            charset="utf-8"></script>

    <script>
        var editor = ace.edit("editor");
        editor.setTheme("ace/theme/twilight");
        editor.session.setMode("ace/mode/html");

        var answer_editor = ace.edit("answer");
        answer_editor.setTheme("ace/theme/twilight");
        answer_editor.session.setMode("ace/mode/html");


        function runhtml() {
            //get the value of the code
            var text = editor.getValue();
            var getanswer = answer_editor.getValue();

            //jquery do the job for you pek cause it is html code
            $('#result_content').html(text);
            $('#answer_test').html(getanswer);

        window.alert(text == getanswer);
        }

    </script>




    <script>

        //        var editor = ace.edit("editor");
        //        editor.session.setMode("ace/mode/java");
        //        editor.setTheme("ace/theme/twilight");
        //        editor.setOption("wrap", true);
        //
        //        $(document).ready(function () {
        //
        //            $('.pagination>.active').nextAll().addClass('disabled');
        //        });
        //
        //
        //        function runcode() {
        //            var text = editor.getValue();
        //            var data = {
        //                code: text,
        //                title: lesson.title
        //            };
        //
        //            $.ajax({
        //                method: "GET",
        //                url: 'http://localhost/codeschool/public/runcode',
        //                data: data
        //            }).done(function (data) {
        //                console.log(data);
        //                $('#result_content').html(data.result);
        //
        //                if (data.result === lesson.answersheet) {
        //                    $('.pagination>.active').next().removeClass('disabled');
        //                } else {
        //
        //                }
        //            });
        //        }


    </script>
@endsection
