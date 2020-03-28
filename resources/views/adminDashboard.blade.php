@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">Course List</div>

                    <div class="panel-body">
                        <h2>well come to admin dashboard</h2>
                        <ul>
                            @foreach ($courses as $course)
                                <a href="{!! url('/getAdmin/'.$course->id)!!}"><h3>{{$course->description}}</h3></a>
                            @endforeach

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
