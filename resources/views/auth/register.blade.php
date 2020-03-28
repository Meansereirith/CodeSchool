@extends('layouts.app')

@section('content')
<body>      
        <!-- ============================================================= HEADER ============================================================= -->
        
        <header>
            <div class="navbar">  

                <div class="navbar-header">
                    <div class="container">
                        <!-- ============================================================= LOGO MOBILE ============================================================= -->
                        
                        <a class="navbar-brand" href="/"><img src="{{ URL::asset('img/logo.png') }}" class="logo" alt=""></a>
                        
                        <!-- ============================================================= LOGO MOBILE : END ============================================================= -->
                        
                        <a class="navbar-toggle btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a>
                        
                    </div><!-- /.container -->
                </div><!-- /.navbar-header -->

                <div class="yamm" style="min-height: 10vh;">
                    <div class="navbar-collapse collapse">
                        <div class="container">
                            
                            <!-- ============================================================= LOGO ============================================================= -->
                            
                            <a class="navbar-brand" href="/"><img src="{{ URL::asset('img/logo.png') }}" class="logo" alt=""></a>
                            
                            <!-- ============================================================= LOGO : END ============================================================= -->
                            
                            
                            <!-- ============================================================= MAIN NAVIGATION ============================================================= -->
                            
                            <ul class="nav navbar-nav">
                                 
                                <!-- ============================================================= MEGA MENU : END ============================================================= -->
                                
                                <li class="dropdown">
                                    <a href="#contactus" class="dropdown-toggle" data-toggle="dropdown">Contact Us</a>
                                    
                                    
                                </li><!-- /.dropdown -->
                                                                
                            </ul><!-- /.nav -->
                            
                            <!-- ============================================================= MAIN NAVIGATION : END ============================================================= -->
                            
                        </div><!-- /.container -->
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.yamm -->
            </div><!-- /.navbar -->
        </header>
        
        <!-- ============================================================= HEADER : END ============================================================= -->
        
        
        <!-- ============================================================= MAIN ============================================================= -->
        
        <main>
            
            <!-- ============================================================= SECTION – START LEARNING ============================================================= -->
        
            <section id="startlearning" class="img-bg-bottom img-bg-soft" style="background-image: url({{ URL::asset('img/background.png') }}); height: 89vh;">
                <div class="container inner">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6" style="background-color: white; opacity: 1; padding: 0 1.5em;">
                            <div>
                                <p class="login-box-msg" style="font-weight: bold; padding-top: 0.5em;">Get Updated Information</p>
                                <p id="hiddenmessage"></p>
                                <form class="form-horizontal" id="info" role="form" method="POST" action="{{ url('/home') }}">
                                    {{ csrf_field() }}
                                    
                                    <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }} has-feedback">
                                        <input id="name" type="text" class="form-control" placeholder="Enter your Name" name="name" value="{{ old('name') }}" required autofocus>
                                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                        @if ($errors->has('name'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }} has-feedback">
                                        <input id="email" type="email" class="form-control" placeholder="Enter your Email" name="email" value="{{ old('email') }}" required>
                                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                        @if ($errors->has('email'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <!-- <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }} has-feedback">
                                        <input id="password" type="password" class="form-control" placeholder="Enter your Password" name="password" required>
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                        @if ($errors->has('password'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('password') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group has-feedback">
                                        <input id="password-confirm" type="password" class="form-control" placeholder="Retype your Password" name="password_confirmation" required>
                                        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                                    </div> -->
                                  <div class="row">
                                    <div class="col-xs-4"></div>
                                    <div class="col-xs-4">
                                      <button type="submit" class="btn btn-primary btn-block btn-flat" style="margin-top: 0;">Submit</button>
                                    </div>
                                    <!-- /.col -->
                                  </div>
                                </form>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- ./row -->
                </div><!-- /.container -->
            </section>
            
            <!-- ============================================================= SECTION – START LEARNING : END ============================================================= -->
            
            
            <!-- ============================================================= SECTION – ABOUT US============================================================= -->
            
            <!-- ============================================================= SECTION – WHO WE ARE : END ============================================================= --> 
            
        </main>
        
        <!-- ============================================================= MAIN : END ============================================================= -->
        
        
        <!-- ============================================================= FOOTER ============================================================= -->
        
        <footer id="contactus" class="dark-bg">
            <div class="container inner">
                <div class="row">
                    
                    <div class="col-sm-6 inner">
                        <h4>Center of Executive, Professional, and Community Education <br> Zaman Univeristy</h4>
                        <p>Email: hsok@zamanuniversity.edu.kh</p>
       
                    </div><!-- /.col -->
                    
                    
                </div><!-- /.row --> 
            </div><!-- .container -->
          
        </footer>
        
        <!-- ============================================================= FOOTER : END ============================================================= -->
        
        <!-- JavaScripts placed at the end of the document so the pages load faster -->
        
@endsection

@section('script')
    
    <script>
        $('#info').on('submit',function(e){
            $.ajaxSetup({
                header:$('meta[name="_token"]').attr('content')
            })
            e.preventDefault(e);

            $.ajax({
                type:"POST",
                url:'/home',
                data: $(this).serialize(),
                success: function(data){
                    $("#hiddenmessage").addClass("alert alert-success").html("សូមអរគុណដែលបានចុះឈ្មោះដេីម្បីទទួលបានពត៌មានថ្មីៗពីតោះរៀន");
                    console.log("success");
                },
                error: function(data){
                    $("#hiddenmessage").addClass("alert alert-danger").html("Error, please check your email address again.");
                    console.log("error");
                }
            })
        });
    </script>
@endsection