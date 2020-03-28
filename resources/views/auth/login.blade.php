@extends('layouts.app')

@section('content')

<body class="hold-transition login-page" style="overflow: hidden;">
<div class="login-box">
  <div class="login-logo">
      <div style="width: 100px; margin: 0 auto;"> 
        <img src="{{ URL::asset('img/hello.png') }}" style="width: 100%; height: auto;">
      </div>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your class</p>

    <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
        {{ csrf_field() }}

        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }} has-feedback">
            <input type="email" id="email" class="form-control" name="email" placeholder="Email" value="{{ old('email') }}" required autofocus>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>
        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }} has-feedback">
            <input type="password" id="password" class="form-control" placeholder="Password" name="password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
        </div>
        <div class="row">
          <div class="col-xs-8">
           {{--  <div class="checkbox icheck">
                <label>
                    <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : ''}}> Remember Me
                </label>
            </div> --}}
            <a href="register" class="text-center">Register a new account</a>
          </div>
        <!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
          </div>
        <!-- /.col -->
      </div>
    </form>

{{--     <a href="#">I forgot my password</a><br>   --}}    

  </div>
  <!-- /.login-box-body -->
  <div style="text-align: center; color: #666; margin-top: 2em;">
    Powered by Mlab
  </div>
</div>
<!-- /.login-box -->
@endsection

@section('script')

<script>
    $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-green',
          radioClass: 'iradio_square-green',
          increaseArea: '20%' // optional
        });
      });
</script>

@endsection