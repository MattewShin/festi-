<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Festival</title>
<!--방금 추가함   -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="resources/js/*.js"></script>
<script type="text/javascript"></script>
<!--위에꺼추가  -->
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">


<link rel="stylesheet" href="resources/mypage/css/animate.css">
<link rel="stylesheet" href="resources/mypage/css/flaticon.css">
<link rel="stylesheet" href="resources/mypage/css/tiny-slider.css">
<link rel="stylesheet" href="resources/mypage/css/glightbox.min.css">
<link rel="stylesheet" href="resources/mypage/css/aos.css">
<link rel="stylesheet" href="resources/mypage/css/style.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />

 <link rel="stylesheet" href="resources/mypage/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/mypage/css/about.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.16.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
		}</script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>



</head>

   <nav class="navbar navbar-expand-lg  ftco-navbar-light">
      <div class="container-xl">
         <a class="navbar-brand d-flex align-items-center" href="index.html">
            <span class="flaticon flaticon-compass"></span> <span class="">Directone
               <small>Directory and Listing</small>
         </span>
         </a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
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
            <p class="mb-0">
               <a href="#" class="btn btn-primary rounded"><span
                  class="ion-ios-add"></span> Add Listing</a>
            </p>
         </div>
      </div>
   </nav>
   
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/mypage.png');">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-center justify-content-center">
           
         </div>
      </div>
   </section>

<body class="u-body u-xl-mode" data-lang="en">
   
<!-- Nicepage 설계 페이지 -->
     <section class="u-clearfix u-custom-color-3 u-section-1" id="sec-cc37">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-custom-color-3 u-expanded-width u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">
            
            <a class="u-text u-text-default u-text-1">기본정보수정</a>
            
            <div class="u-border-1 u-border-grey-15 u-border-no-bottom u-border-no-left u-border-no-top u-container-style u-group u-white u-group-2">
              <div class="u-container-layout u-container-layout-2">
                <div class="u-border-1 u-border-grey-15 u-border-no-bottom u-border-no-right u-border-no-top u-container-style u-group u-shape-rectangle u-white u-group-3">
                  <div class="u-container-layout u-container-layout-3">
                    
                    <form action="updateimg" method="post" enctype="multipart/form-data">
                    <img name="mem_profile" id="mem_profile" class="u-image u-image-round u-radius-50 u-image-1" src="resources/mypage/upload/${mypage.mem_profile}" alt="" data-image-width="1620" data-image-height="1080">
                    <input type="file" id="file" name="file" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
                    <input type="submit" id="insertBtn" value="이미지 등록" class="u-border-1 u-border-palette-2-base u-btn u-btn-round u-button-style u-gradient u-hover-white u-none u-radius-6 u-text-body-color u-text-hover-white u-btn-1"/>
                    <input type="submit" id="deleteBtn" value= "삭제" class="u-border-1 u-border-palette-2-base u-btn u-btn-round u-button-style u-gradient u-hover-white u-none u-radius-6 u-text-body-color u-text-hover-palette-2-base u-btn-2"/>
                    </form>
                    
                    <a class="u-text u-text-default u-text-2" href="">마이페이지</a>
                    <a class="u-text u-text-default u-text-3" href="my_blog">MY 블로그</a>
                    <a class="u-text u-text-default u-text-4" href="">장바구니</a>
                    <a class="u-text u-text-default u-text-5" href="">찜 목록&nbsp;</a>
                    <a class="u-text u-text-default u-text-6" href="">구매 내역</a>
                    <div class="u-border-1 u-border-palette-2-base u-container-style u-group u-palette-2-base u-group-4">
                      <div class="u-container-layout u-container-layout-4"></div>
                    </div>
                    <a class="u-text u-text-custom-color-1 u-text-default u-text-7">개인정보관리</a>
                    <a class="u-text u-text-default u-text-8" href="">문의/신고</a>
                  </div>
                </div>
              </div>
            </div>
            
            
            <div class="u-border-1 u-border-grey-15 u-container-style u-group u-radius-25 u-shape-round u-white u-group-5">
              <div class="u-container-layout u-container-layout-5">
                <div class="u-container-style u-expanded-width u-gradient u-group u-radius-25 u-shape-round u-group-6">
                  <div class="u-container-layout u-container-layout-6">
                    <h5 class="u-text u-text-default u-text-9">기본정보</h5>
                  </div>
                </div>
                <h6 class="u-text u-text-default u-text-10">이름</h6>
                <h5 class="u-text u-text-11">${sessionScope.mem_name}</h5>
                <h6 class="u-text u-text-default u-text-12">아이디</h6>
                <h5 class="u-text u-text-13">${sessionScope.mem_id}</h5>
                <h6 class="u-text u-text-default u-text-14">이메일</h6>
                <h5 class="u-text u-text-15">${mypage.mem_email}</h5>
              </div>
            </div>
            <div class="u-border-1 u-border-grey-15 u-container-style u-group u-radius-25 u-shape-round u-white u-group-7">
              <div class="u-container-layout u-container-layout-7">
                <div class="u-container-style u-expanded-width u-gradient u-group u-radius-25 u-shape-round u-group-8">
                  <div class="u-container-layout u-container-layout-8">
                    <h5 class="u-text u-text-default u-text-16">상세정보</h5>
                  </div>
                </div>
                <h5 class="u-text u-text-17">${mypage.mem_birth}</h5>
                <h6 class="u-text u-text-default u-text-18">생년월일</h6>
                <h5 class="u-text u-text-19">${mypage.mem_tel}</h5>
                <h6 class="u-text u-text-default u-text-20">전화번호</h6>
                <h5 class="u-text u-text-21">${mypage.mem_detail_addr}</h5>
                <h6 class="u-text u-text-default u-text-22">주소</h6>
                <div class="u-border-1 u-border-grey-10 u-container-style u-grey-5 u-group u-radius-25 u-shape-round u-group-9">
                  <div class="u-container-layout u-container-layout-9">
                    <p class="u-text u-text-23">${mypage.mem_content}<br>
                      <br>
                      <br>
                      <br>
                      <br>
                      <br>
                    </p>
                  </div>
                </div>
                <h6 class="u-text u-text-default u-text-24">내소개</h6>
                <a href="https://nicepage.com/c/medicine-science-html-templates" class="u-border-1 u-border-palette-2-base u-btn u-btn-round u-button-style u-gradient u-hover-white u-none u-radius-6 u-text-black u-text-hover-white u-btn-3">소개 등록</a>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </section>
    
 <!-- footer -->
 
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
                     <script>document.write(new Date().getFullYear());</script>
                     All rights reserved | This template is made with <i
                        class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
                        href="https://colorlib.com" target="_blank"
                        rel="nofollow noopener">Colorlib</a>
               </div>
            </div>
         </div>
      </div>
   </footer>


   <script src="resources/js/bootstrap.bundle.min.js"></script>
   <script src="resources/js/tiny-slider.js"></script>
   <script src="resources/js/glightbox.min.js"></script>
   <script src="resources/js/rellax.min.js"></script>
   <script src="resources/js/aos.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="resources/js/google-map.js"></script>
   <script src="resources/js/main.js"></script>


</body>
</html>