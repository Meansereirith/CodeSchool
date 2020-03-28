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
            <pre hidden id="answer"
                 style="position: relative;top: 0;right: 0;bottom: 0;left: 0;height: 89%;">@foreach($lessons as $lesson){{ $lesson->answersheet }}@endforeach
            </pre>
            <div style="height: 100%;">
                {!! csrf_field() !!}
                <div class="panel-group" id="accordion"
                     style="box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="background-color: #e3e3e3;">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    Lesson</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body" style="background-color: #f2efe8; max-height: 330px; overflow: auto;">
                                @foreach($lessons as $lesson)
                                    {!! ($lesson->lesson) !!}
                                @endforeach

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Practice</a>
                            </h4>
                        </div>
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
                    <h5 style="background-color: #141414;display: flex;color: white;margin: 0;padding: 10px;width: 150px;height:100%;border-radius: 15px 15px 0 0;">@foreach($lessons as $lesson){{ $lesson->title }}@endforeach</h5>
                </div>
                <pre id="editor"
                     style="position: relative;top: 0;right: 0;bottom: 0;left: 0;height: 89%;">@foreach($lessons as $lesson){{ $lesson->code }}@endforeach</pre>
                <button type="button" class="btn btn-primary" style="border-radius: 0;height: 6%" onclick="runhtml()">
                    Run Code
                </button>
            </div>
        </div>

        <div class="col-md-4" style="padding: 5px 5px 5px 0px;height: 85%;">
            <div style="height: 100%;box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14),0 1px 5px 0 rgba(0,0,0,0.12),0 3px 1px -2px rgba(0,0,0,0.2);">
            <pre id="result_content"
                 style="padding: 10px;height: 100%;white-space: normal;">
            </pre>

            </div>
        </div>
        <div class="text-left" style="height: 15%; padding-left: 1em;">
            <h2>@foreach($lessons as $lesson){{ $lesson->lessonName }}@endforeach</h2>
        </div>
        <div class="text-center" style="height: 15%">
            {!! $lessons->render()!!}
            {{--<a href="{{URL::to('html')}}">next page</a>--}}

        </div>
    </div>
@endsection
@section('script')
    <script>
        var token = '{{ Session::token() }}';
        {{--        var url = '{{ route('edit') }}';--}}
    </script>

    <script text="text/javascript" src="{{ URL::asset('js/ace-builds-master/src-noconflict/ace.js') }}"
            charset="utf-8"></script>

    <script>

        var uLevel = 0;
        var editor = ace.edit("editor");
        editor.setTheme("ace/theme/twilight");
        editor.session.setMode("ace/mode/html");

        var answer_editor = ace.edit("answer");
        //        answer_editor.setTheme("ace/theme/twilight");
        answer_editor.session.setMode("ace/mode/html");

        var getPageNum;
        getPageNum = <?php echo $_GET['page']; ?>;
        $(document).ready(function () {
//            var uLevel = 0;
            uLevel = <?php echo Session::get('uHtmlLevel');?>;
            if (getPageNum > uLevel) {
                window.location.href = "/java?page=" + uLevel;
            }

            var getPage = uLevel + 1;
            $(".pagination li:nth-child(" + getPage + ")").nextAll().addClass('hidden');
        });

        function runhtml() {
            //get the value of the code
            var text = editor.getValue();
            var getanswer = answer_editor.getValue();

            //jquery do the job to sent code to html
            $('#result_content').html(text);
//            $('#answer_test').html(getanswer);


            if (text == getanswer) {

                $('.pagination>.active').next().removeClass('hidden');

                if (uLevel == {{Session::get('uHtmlLevel')}}) {

                    var upLevel;
                    upLevel = <?php echo Session::get('uHtmlLevel');?>;
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
            }
            else {
                window.alert("it is incorrect !!!");
            }
        }

    </script>

@endsection
