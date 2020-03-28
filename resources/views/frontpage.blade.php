<!DOCTYPE html>

<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>TORSREAN	</title>
		
		<!-- Core CSS -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/css/main.css" rel="stylesheet">
		
		<!-- AddOn/Plugin CSS -->
		<link href="assets/css/green.css" rel="stylesheet" title="Color">
		<link href="assets/css/owl.carousel.css" rel="stylesheet">
		
		<!-- Fonts -->
		<link href="http://fonts.googleapis.com/css?family=Lato:400,900,300,700" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,400italic,700italic" rel="stylesheet">
		
		<!-- Icons/Glyphs -->
		<link href="assets/fonts/fontello.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
		
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		
		<header>
			<div class="navbar">
				
		
				
				<div class="yamm" style="min-height: 10vh;">
					<div class="navbar-collapse collapse">
						<div class="container">
							
							<!-- ============================================================= LOGO ============================================================= -->
							
							<a class="navbar-brand" href="index.html"><img src="assets/images/logo.svg" class="logo" alt=""></a>
							
							<!-- ============================================================= LOGO : END ============================================================= -->
							
							
							<!-- ============================================================= MAIN NAVIGATION ============================================================= -->
							
							<ul class="nav navbar-nav">
								
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">About us</a>
									
									
								</li><!-- /.dropdown -->
								
								<!-- ============================================================= MEGA MENU ============================================================= -->
								
								<li class="dropdown yamm-fullwidth">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Start learning</a>
									
									
								</li><!-- /.yamm-fullwidth -->
								
								<!-- ============================================================= MEGA MENU : END ============================================================= -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact Us</a>
									
									
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
			
			<!-- ============================================================= SECTION – HERO ============================================================= -->
		
			<section id="hero" class="img-bg-bottom img-bg-soft" style="background-image: url(123.png); height: 89vh;">
				<div class="container inner">
					<div class="row">
						<div class="col-sm-10" style="background-color: #F2F5F7; opacity: 0.8;">
							<header>
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
							        <!-- /.col -->
							          <div class="col-xs-4">
							            <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
							          </div>
							        <!-- /.col -->
							      </div>
							    </form>
							</header>
						</div><!-- /.col -->
					</div><!-- ./row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION – HERO : END ============================================================= -->
			
			
			<!-- ============================================================= SECTION – WHO WE ARE ============================================================= -->
			
			<section id="who-we-are" style="background-color: #F2F5F7;">
				<div class="container inner-md">
					<div class="row inner-top-xs">
						
						<div class="col-sm-6 inner-right-xs inner-bottom-xs">
							<h2>Who we are</h2>
							<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut reporemni aut labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu ptatemp dolupta oreprerum tibusam. Eumenis et consent accullignis dentibea autem inisita posae volor conecus resto explabo.</p>
						</div><!-- /.col -->
						
						<div class="col-sm-6 inner-left-xs inner-bottom-xs">
							<h2>What we do</h2>
							<p>Laceaque quiae sitiorem rest non restibusaes es tumquam core posaeremni volor remped modis volor. Doloreiur qui commolu dolor oreprerum tibusam. Eumenis et consent accullignis dentibea autem inisita posae volor conecus resto explabo. Magnis modipsae que lib voloratati andigen daepeditem quiate ut reporemni aut labor.</p>
						</div><!-- /.col -->
						
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION – WHO WE ARE : END ============================================================= -->	
			
		</main>
		
		<!-- ============================================================= MAIN : END ============================================================= -->
		
		
		<!-- ============================================================= FOOTER ============================================================= -->
		
		<footer class="dark-bg">
			<div class="container inner">
				<div class="row">
					
					<div class="col-sm-6 inner">
						<h4>Contact Us</h4>
						<p>Doloreiur quia commolu ptatemp dolupta oreprerum tibusam eumenis et consent accullignis dentibea autem inisita.</p>
						<ul class="contacts">
							<li><i class="icon-location contact"></i> 84 Street, City, State 24813</li>
							<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
							<li><a href="#"><i class="icon-mail-1 contact"></i> info@reen.com</a></li>
						</ul><!-- /.contacts -->
					</div><!-- /.col -->
					
					
				</div><!-- /.row --> 
			</div><!-- .container -->
		  
		</footer>
		
		<!-- ============================================================= FOOTER : END ============================================================= -->
		
		<!-- JavaScripts placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.min.js"></script>
		<script src="assets/js/jquery.form.js"></script>
		<script src="assets/js/jquery.validate.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/aos.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/jquery.isotope.min.js"></script>
		<script src="assets/js/imagesloaded.pkgd.min.js"></script>
		<script src="assets/js/jquery.easytabs.min.js"></script>
		<script src="assets/js/viewport-units-buggyfill.js"></script>
		<script src="assets/js/scripts.js"></script>
		
		
		
	</body>
</html>