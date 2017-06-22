<!--**************************
Created by: Anh Pham
Date: 23/02/2017
Version: 01
***************************-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>@yield('meta-title', 'VietMarket') - VietMarketPlace</title>
	<link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap.min.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/libs/font-awesome/css/font-awesome.min.css')}}"/>
	<link rel="stylesheet" href="{{asset('public/css/client/mystyle.css')}}"/>
</head>
<body>
	@include('client.header')
	<div role="main" ckass="main">
		@yield('top-information')

		@yield('content')

	</div>

	@include('layouts.footer')

	@yield('scripts')
	<script src="{{asset('public/libs/tether/tether.min.js')}}"></script>
	<script src="{{asset('public/libs/jquery/jquery.min.js')}}"></script>
	<script src="{{asset('public/libs/bootstrap/js/bootstrap.min.js')}}"></script>

</body>
</html>