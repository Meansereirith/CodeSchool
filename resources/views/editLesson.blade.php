@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading"><h2>Lesson Edit</h2></div>

                    <div class="panel-body">
                        <h3>Edit lesson: {{$row->lessonName}}</h3>
                        <form action="/update" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label>Lesson Name</label>
                                <input type="text" name="lessonName" class="form-control" value="{{$row->lessonName}}">
                                <input type="hidden" name="id" value="{{$row->id}}">
                                <input type="hidden" name="course_id" value="{{$row->course_id}}">
                            </div>
                            {{--<div class="form-group">--}}
                                {{--<label>Lesson</label>--}}
                                {{--<textarea name="lesson" class="form-control" rows="3">{{$row->lesson}}</textarea>--}}
                            {{--</div>--}}
                            {{--<div class="form-group">--}}
                                {{--<label>Practice</label>--}}
                                {{--<textarea name="practice" class="form-control" rows="3">{{$row->practice}}</textarea>--}}
                            {{--</div>--}}
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control" value="{{$row->title}}">
                            </div>
                            <div class="form-group">
                                <label>Code</label>
                                <textarea name="code" class="form-control" rows="3">{{$row->code}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Answer Sheet</label>
                                <textarea name="answersheet" class="form-control" rows="3">{{$row->answersheet}}</textarea>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="update">
                            </div>
                            {{--<button type="submit" class="btn btn-primary">submit</button>--}}

                        </form>
                        <hr style="width: 100%; color: black; height: 2px; background-color:black;">

                    </div>

                </div>
            </div>
        </div>

    </div>
@endsection
