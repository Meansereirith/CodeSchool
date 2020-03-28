@extends('layouts.app')

@section('content')
    
    <div class="container" style="padding-top: 30px;">
        <div class="row">   
            <div class="col-md-4">
                <a href="/java?page={{ Session::get('uJavaLevel') }}" style="text-decoration: none;">
                    <div class="panel panel-default custom-card" style="box-shadow: 0 1px 3px 0 rgba(0,0,0,.2), 0 1px 1px 0 rgba(0,0,0,.14), 0 2px 1px -1px rgba(0,0,0,.12);">
                        <div class="panel-heading" style="background-color: #388E3C; color: white;height: 3.5em;padding: 1em;">
                            <i class="fa fa-leanpub" aria-hidden="true" style="font-size: 1.5em; margin: 0 auto;padding-left: 0.4em;"></i>
                        </div>

                        <div class="panel-body" style="padding: 2em;">
                            <div class="lessontitle" style="font-size: 1.4em; font-weight: bold; color: #616161; padding-bottom: 0.5em;">
                                Basic Java Programming
                            </div>
                            <div class="lessondesc" style="font-size: 1em; color: #616161; padding-bottom: 1.5em;">
                                ស្វា​គមន៍មកកាន់ថ្នាក់ Basic Java Programming របស់តោះរៀន-
                            </div>
                            @if(Session::get('uJavaLevel') == 1)
                                <button type="button" class="btn btn-card" style="background-color: #388E3C; color: white; font-weight: bold; padding: 0.5em 1.3em;">Join</button>
                            @else
                                <button type="button" class="btn btn-card" style="background-color: #388E3C; color: white; font-weight: bold; padding: 0.5em 1.3em;">Resume</button>
                            @endif
                            
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
@endsection
