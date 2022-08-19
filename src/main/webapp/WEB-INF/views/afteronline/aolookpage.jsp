<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">

<title>aolookpage</title>

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
	<link rel="stylesheet" href="resources/afteronline/css/aolookpage.css" media="screen">
	<script class="u-script" type="text/javascript" src="resources/afteronline/js/jquery-1.9.1.min.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="resources/afteronline/js/nicepage.js""="" defer=""></script>
<meta name="generator" content="Nicepage 4.15.11, nicepage.com">
	<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


</head>
<body>

  <div class="py-1 top-wrap">
    <div class="container-xl">
      <div class="row justify-content-between">

      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-lg  ftco-navbar-light">
    <div class="container-xl">
      <a class="navbar-brand d-flex align-items-center" href="index">
        <span class="flaticon flaticon-compass"></span>
        <span class="">Directone <small>Directory and Listing</small></span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
   				<ul class="navbar-nav m-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="listing">Listing</a></li>
					<li class="nav-item"><a class="nav-link" href="blog">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
					
					<!-- 추가  -->
					<li class="nav-item"><a class="nav-link" href="aon"> AfterOnline </a></li>
					
				</ul>
     </div>
    </div>
  </nav>
  
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/afteronline/images/wallpaperbetter.com_1920x1080.jpg');">
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
  </body>
  
<body class="u-body u-xl-mode">

    <section class="u-clearfix u-section-1" id="sec-74cf">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h3 class="u-text u-text-1">&nbsp;</h3>
        <img class="u-image u-image-1" src="resources/afteronline/aoupload/${goods.img_save}" data-image-width="506" data-image-height="638">
        <h3 class="u-text u-text-3">&nbsp;</h3>
        <a href="wish" class="u-btn u-button-style u-palette-3-base u-btn-1"> 찜&nbsp;</a><br><br/><br/><br/>
        <h4 class="u-text u-text-default u-text-4">상품명 :&nbsp;${goods.goods_name}</h4>
        <p class="u-text u-text-default u-text-5">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
        <h4 class="u-text u-text-default u-text-6">가​​격 :&nbsp;${goods.goods_price}</h4>
        <p class="u-text u-text-7">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
        <h4 class="u-text u-text-default u-text-8">재고 :&nbsp; ${goods.ao_stock}</h4>
        
<!--         <button class="u-btn u-button-style u-palette-5-base u-btn-2"value="-">
        <span class="u-file-icon u-icon">
			<img src="resources/afteronline/images/32320.png" alt="" id="Btn"> </span>&nbsp;</button>

        <p class="u-text u-text-default u-text-9" id="cnt">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
        
        <button class="u-btn u-button-style u-palette-5-base u-btn-3"value="+">
        <span class="u-file-icon u-icon">
			<img src="resources/afteronline/images/1237946.png" alt="" id="Btn"></span>&nbsp;</button> -->
        
<%--         <h4 class="u-text u-text-10">${godos.re_total} 원</h4>
        <h4 class="u-text u-text-default u-text-11">총 주문 금액 :&nbsp;</h4> --%>
        <a href="basket" class="u-btn u-button-style u-palette-1-light-2 u-btn-4"> 장바구니</a>
        <a href="aonorder?goods_code=${goods.goods_code}" class="u-btn u-button-style u-palette-2-base u-btn-5"> 주문</a>
        <h2 class="u-text u-text-default u-text-13">함께 보기 좋은 상품</h2>
        <div class="u-gallery u-layout-horizontal u-lightbox u-no-transition u-show-text-on-hover u-width-fixed u-gallery-1">
				<div class="u-gallery-inner">
					<div class="u-effect-fade u-gallery-item u-gallery-item-1">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-1" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-1">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
					<div class="u-effect-fade u-gallery-item u-gallery-item-2">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-2" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-2">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
					<div class="u-effect-fade u-gallery-item u-gallery-item-3">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-3" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-3">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
					<div class="u-effect-fade u-gallery-item u-gallery-item-4">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-4" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-4">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
					<div class="u-effect-fade u-gallery-item u-gallery-item-5">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-5" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-5">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
					<div class="u-effect-fade u-gallery-item u-gallery-item-6">
						<div class="u-back-slide" data-image-width="512" data-image-height="512">
							<img class="u-back-image u-back-image-6" src="resources/afteronline/images/zkapfkd.png">
						</div>
						<div class="u-over-slide u-shading u-over-slide-6">
							<h3 class="u-gallery-heading"></h3>
							<p class="u-gallery-text"></p>
						</div>
					</div>
				</div>
				<a
					class="u-absolute-vcenter u-gallery-nav u-gallery-nav-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-1"
					href="#" role="button"> <span aria-hidden="true">
					 <svg viewBox="0 0 451.847 451.847">
							<path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
									c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
									c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
				</span> 
				<span class="sr-only"> <svg viewBox="0 0 451.847 451.847">
							<path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
									c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
									c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
				</span>
				</a>
				 <a class="u-absolute-vcenter u-gallery-nav u-gallery-nav-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-2"
					href="#" role="button"> <span aria-hidden="true"> 
					<svg viewBox="0 0 451.846 451.847">
							<path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
									L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
									c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
				</span> <span class="sr-only"> <svg viewBox="0 0 451.846 451.847">
							<path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
									L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
									c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
				</span>
				</a>
			</div>
        <h3 class="u-text u-text-default u-text-14">상품 설명</h3>
        <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">${goods.goods_comment}</div>
        </div>
        <h4 class="u-text u-text-default u-text-15">상품 리뷰<span style="font-weight: 700;"></span>
        </h4>
        <a href="#" class="u-active-none u-border-2 u-border-palette-1-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-top-left-radius-0 u-top-right-radius-0 u-btn-6"> 전체 보기</a>
        <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-2">
          <div class="u-container-layout u-container-layout-2"></div>
        </div>
        <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-3">
          <div class="u-container-layout u-container-layout-3"></div>
        </div>
      </div>
    </section>
	<br/>


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
	<script src="resources/afteronline/js/js/aos.js"></script>
	<script src="resources/afteronline/js/js/main.js"></script>
</body>
</html>