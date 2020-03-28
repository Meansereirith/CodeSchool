@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading"><h2>Lesson List</h2></div>

                    <div class="panel-body">

                        @foreach ($getCNames as $getCName)
                            <h2>{{$getCName->description}}</h2>
                        @endforeach
                        <h3>Create new lesson for {{$getCName->description}}</h3>
                        <form action="/insert" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label>Lesson Name</label>
                                <input type="text" name="lessonName" class="form-control">
                                <input type="hidden" name="course_id" value="@foreach ($getCNames as $getCName)
                                {{$getCName->id}}
                                @endforeach">
                            </div>
                            <div class="form-group">
                                <label>Lesson</label>
                                <textarea name="lesson" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Practice</label>
                                <textarea name="practice" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Code</label>
                                <textarea name="code" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Answer Sheet</label>
                                <textarea name="answersheet" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="submit">
                            </div>


                            {{--<button type="submit" class="btn btn-primary">submit</button>--}}

                        </form>
                        <hr style="width: 100%; color: black; height: 2px; background-color:black;">
                        <h3>Table Lesson</h3>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Lesson ID</th>
                                <th>Lesson Name</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($listLessons as $listLesson)
                                <tr>
                                    <td>{{$listLesson->id}}</td>
                                    <td>{{$listLesson->lessonName}}</td>
                                    <td><a class="btn btn-primary" href="{!! url('/edit/'.$listLesson->id)!!}">Edit</a>&nbsp;<a
                                                class="btn btn-danger"
                                                href="{!! url('/delete/'.$listLesson->course_id.'/'.$listLesson->id)!!}">Delete</a></td>
                                </tr>
                            @endforeach


                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
@endsection
