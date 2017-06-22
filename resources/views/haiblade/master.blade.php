<!--***********************
Truong Trieu Hai
2/03/2017
***************************-->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>VietMarketPlace</title>

	<meta name="description" content="Login Page">
	<meta name="author" content="ChouTruong">

	<link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap.min.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap-grid.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap-grid.min.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/libs/font-awesome/css/font-awesome.min.css')}}"/>

	<link rel="stylesheet" href="{{asset('public/css/client/mystyle.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/css/client/homepage.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/css/client/accountstyle.css')}}"/>
</head>

<body>
	@include('layouts.header')
	<div role="main" ckass="main">
		@yield('top-information')

		@yield('content')

		@yield('scripts')
	</div>

	@include('layouts.footer')

	<script src="{{asset('public/libs/tether/tether.min.js')}}"></script>
	<script src="{{asset('public/libs/jquery/jquery.min.js')}}"></script>
	<script src="{{asset('public/libs/jquery/starscripts.js')}}"></script>
	<script src="{{asset('public/libs/bootstrap/js/bootstrap.min.js')}}"></script>
</body>
</html>