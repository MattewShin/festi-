<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>orderok</title>
    
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

  <link rel="stylesheet" href="resources/afteronline/css/animate.css">
  <link rel="stylesheet" href="resources/afteronline/css/flaticon.css">
  <link rel="stylesheet" href="resources/afteronline/css/tiny-slider.css">
  <link rel="stylesheet" href="resources/afteronline/css/glightbox.min.css">
  <link rel="stylesheet" href="resources/afteronline/css/aos.css">
  <link rel="stylesheet" href="resources/afteronline/css/style.css"> 
    
    
    
    <link rel="stylesheet" href="resources/afteronline/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="resources/afteronline/css/orderok.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/afteronline/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/afteronline/js/nicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
  </head>
  
<body>

  <div class="py-1 top-wrap">
    <div class="container-xl">
      <div class="row justify-content-between">

        <div class="col-md topper d-flex mb-md-0 align-items-xl-center">
          <div class="text">
            <p class="con"><span>Free Call</span> <span>+1 234 456 78910</span></p>
          </div>
        </div>
        <div class="col-md topper d-flex mb-md-0 align-items-xl-center">
          <div class="text text-md-right">
            <p class="con"><a href="#">Facebook</a> <a href="#">Twitter</a> <a href="#">Dribbble</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-lg  ftco-navbar-light">
    <div class="container-xl">
      <a class="navbar-brand d-flex align-items-center" href="index">
        <span class="flaticon flaticon-compass"></span>
     <span class="">Festi+<small>Festival In Now</small>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
   				<ul class="navbar-nav m-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="festival">Festival</a></li>
					<li class="nav-item"><a class="nav-link" href="letfe">Let's Festival</a></li>
					<li class="nav-item"><a class="nav-link" href="aon">After_online</a></li>
					<li class="nav-item"><a class="nav-link" href="blog">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage">Mypage</a></li>
				</ul>
        <p class="mb-0"><a href="#" class="btn btn-primary rounded"><span class="ion-ios-add"></span> Add Listing</a></p>
      </div>
    </div>
  </nav>
  
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/wallpaperbetter.com_1920x1080.jpg');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 pt-5 text-center">
          <p class="breadcrumbs"><span class="mr-2"><a href="index">Home<i class="fa fa-chevron-right"></i></a></span>
           <span><a href="aon">After-Online<i class="fa fa-chevron-right"></i></a></span></p>
          <h1 class="mb-0 bread"> ${goods.goods_name}</h1>
        </div>
      </div>
    </div>
  </section>
  
  
  
  <body class="u-body u-xl-mode">  
    <section class="u-clearfix u-section-1" id="sec-5414">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-preserve-proportions u-image-1" src="resources/afteronline/images/check.png" alt="" data-image-width="56" data-image-height="56">
        <h2 class="u-text u-text-default u-text-1">주문이 완료 되었습니다.</h2>
        <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1"> 마이페이지&nbsp;<br>
        </a>
        <a href="index" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-5-base u-btn-2"> 홈으로</a>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <h4 class="u-text u-text-default u-text-2">주문 정보</h4>
        <h3 class="u-text u-text-default u-text-3">상품명 :&nbsp; ${goods.goods_name}</h3>
        <h3 class="u-text u-text-default u-text-4">수량 : ${goods.re_cnt}<span style="font-weight: 700;"></span>&nbsp;
        </h3>
        <h4 class="u-text u-text-5">총 주문 금액 : ${goods.re_cnt}</h4>
        <h4 class="u-text u-text-6">주문자 정보 :&nbsp;</h4>
        <h4 class="u-text u-text-7">배송지 정보 :&nbsp;</h4>
      </div>
    </section>
    
   <footer class="ftco-footer">
		<div class="container-xl">
			<div class="row mb-5 pb-5 justify-content-between">
				<div class="col-md-6 col-lg">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2 logo d-flex">
							<a class="navbar-brand align-items-center" href="index"> <span
								class="">Directone <small>Directory and Listing</small></span>
							</a>
						</h2>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<ul class="ftco-footer-social list-unstyled mt-2">
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li><a href="#"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-2">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Explore</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About
									Us</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Account</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Listing</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Pricing
									Packages</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Pricing
									Packages</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-2">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Quick Links</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact
									Us</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Terms
									&amp; Conditions</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Feedbacks</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-2">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Categories</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Food
									&amp; Drinks</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Hotels</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Shopping</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Beauty</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Fitness</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Bar
									&amp; Club</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon fa fa-map marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon fa fa-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span
										class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid px-0 py-5 bg-darken">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-12 text-center">
						<p class="mb-0"
							style="color: rgba(255, 255, 255, .5); font-size: 13px;">
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank"
								rel="nofollow noopener">Colorlib</a>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<script src="resources/afteronline/js/bootstrap.bundle.min.js"></script>
	<script src="resources/afteronline/js/tiny-slider.js"></script>
	<script src="resources/afteronline/js/glightbox.min.js"></script>
	<script src="resources/afteronline/js/rellax.min.js"></script>
	<script src="resources/afteronline/js//aos.js"></script>
	<script src="resources/afteronline/js/main.js"></script>
	<script src="resources/afteronline/js/aoupload.js"></script>

</body>
</html>