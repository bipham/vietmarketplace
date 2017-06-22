<header id="header" class="">
  <nav class="navbar navbar-toggleable-md bg-faded">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Viet MarketPlace</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="active"><a href="{{route('Home')}}"><span class="glyphicon glyphicon-home"></span> Trang Chủ</a></li>
        <li class="sign-in"><a href="{{route('MyStore')}}"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng</a></li>
        <li class="sign-in"><a href="#">Bản đồ</a></li>
        <li class="sign-in"><a href="#">Matching</a></li>
        <li class=""><a href="#">Về chúng tôi</a></li>
      </ul>
      <ul class="navbar-nav my-2 my-lg-0">
        <li class="dropdown open">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          {{Auth::user()->username}}
          </button>
          <div class="dropdown-menu profile-dropdown" aria-labelledby="dropdownMenu1">
            <a class="dropdown-item" href="#">Hồ sơ</a>
            <a class="dropdown-item" href="{{url('logout')}}">Đăng xuất</a>
          </div>
        </li>
      </ul>
    </div>
  </nav>
  </header><!-- /header -->