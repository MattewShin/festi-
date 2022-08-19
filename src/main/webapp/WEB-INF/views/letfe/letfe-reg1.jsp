<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--김민석 0809 추가 오후 2:52  -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String mem_id = (String) session.getAttribute("mem_id");
	out.print(mem_id);
	
	
%>	



<!DOCTYPE html>
<html>
<head>
<title>Directone - Free Bootstrap 5 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/tiny-slider.css">
<link rel="stylesheet" href="resources/css/glightbox.min.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/style.css">


<!--영범형 추가 css 고치고-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="$10 Off withEmail Signup, $10 Off withEmail Signup">
    <meta name="description" content="">
<!--영범형 추가  -->



<!-- nice css & js -->
    <link rel="stylesheet" href="resources/letfe/css/ybnicepage.css" media="screen">
<link rel="stylesheet" href="resources/letfe/css/ms-2-축제상세입력.css" media="screen">
<!--렛퍼 폴더  -->
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ybjquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ybnicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
     




 <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="2 축제상세입력">
    <meta property="og:type" content="website">
</head>
<!-- <body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0"> -->
 <body class="u-body u-xl-mode" data-lang="en">


<!--blog.jsp  -->
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
			<a class="navbar-brand d-flex align-items-center" href="index"> <span
				class="flaticon flaticon-compass"></span> <span class="">Directone
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
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
				</ul>
				<!-- <p class="mb-0">
					<a href="#" class="btn btn-primary rounded"><span
						class="ion-ios-add"></span> Add Listing</a>
				</p>-->
				<c:choose>
				<c:when test="${empty mem_id}">
				<p class="mb-0"><a href="login" class="btn btn-primary rounded"><span class="ion-ios-add"></span>로그인</a></p>
				</c:when>
				<c:when test="${not empty mem_id}">
				<p class="mb-0"><a href="logout" class="btn btn-primary rounded"><span class="ion-ios-add"></span>로그아웃</a></p>
				</c:when>
				</c:choose>
			</div>
		</div>
	</nav>

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/letsfestival2.png');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 pt-5 text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>렛페 <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h1 class="mb-0 bread">렛페등록1</h1>
				</div>
			</div>
		</div>
	</section>
	 <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  --> <!--blog.jsp  -->
	
	

	
	<!--  <section class="u-clearfix u-image u-section-1" id="carousel_8dbd">
      <div class="u-clearfix u-sheet u-sheet-1"> 
         <img class="u-expanded-width u-image u-image-default u-image-1" src="resources/images/ybletfe1.jpg" alt="" data-image-width="2736" data-image-height="1824">  
        -->
	<section class="u-clearfix u-image u-section-1" id="carousel_aecd" data-image-width="2736" data-image-height="1824" >
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1"> <!-- 얘가범인이여씀 -->
     
       <!-- 동일 -->
         <div class="u-container-style u-group u-white u-group-1">      
          <div class="u-container-layout u-container-layout-1">
            <h4 class="u-custom-font u-font-montserrat u-text u-text-1">축제 분류 지정&nbsp;
            </h4>
            
            
            <div class="u-align-left u-border-3 u-border-grey-40 u-container-style u-group u-group-2">
              <div class="u-container-layout u-container-layout-2">
                <h6 class="u-text u-text-2"> ●​검수 신청 후, 축제 유형 변경은 고객센터를 통해서만 가능하오니, 신중히 선택해주세요!</h6>
	            <h6 class="u-text u-text-3"> ●검수 단계에서 검수 기준에 적합하지 않은 유형은 제외 될 수 있습니다.</h6>
              </div>
            </div>
            <div class="u-form u-form-1">
              
           
<!--                 <div class="u-form-agree u-form-group u-form-group-1">
                  <input type="checkbox" id="agree-a472" name="agree" class="u-agree-checkbox" required="">
                  <label for="agree-a472" class="u-label u-label-1">이용약관에 동의하십니까? </label>
                </div> -->
                
                <div class="u-form-group u-form-select u-form-group-2">
                  <label for="select-0e5b" class="u-label u-label-2">대분류</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-0e5b" name="fest_scatcode" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10" onchange="itemChange()">
                      <option>음악</option>
                      <option>주류</option>
                      <option>음식</option>
                      <option>미술</option>
                      <option>민속/전통</option>
                      <option>인물/역사</option>
                      <option>계절</option>
                      <option>특산물</option>
                      <option>자연/생태</option>
                      <option>교육/체험</option>
                      <option>스포츠/레저</option>
                      <option>행사</option>
                      <option>산업</option>
                    </select>
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                  </div>
                </div>
               <!-- class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" -->
              <form action="saveReg" method="get" class="u-clearfix u-form-spacing-15">
                <div class="u-form-group u-form-select u-form-group-3">
                  <label for="select-6510" class="u-label u-label-3">소분류</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-6510" name="lf_scatname" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10">
                     <option>락</option>
                     <option>발라드</option>
                     <option>힙합</option>                    
                    </select>
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                    
                  </div>
                  
                </div>
                
                 <div class="u-form-group u-form-select u-form-group-4">
                  <label for="select-6511" class="u-label u-label-3">[참여] 최대 인원</label>
                  <div class="u-form-select-wrapper">
                  <select id="select-6511" name="lf_party_max" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10">
               		<svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                     <option value="10">10</option>
                     <option value="20">20</option>
                     <option value="30">30</option>       
                   
                     </select>
                  </div>
                  
                </div>
                
              <!--문제**********submit 안넘어감  -->
                <div class="u-align-right u-form-group u-form-submit">
                  <!-- <a href="#" class="u-active-palette-2-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius-10 u-btn-1">다음&nbsp;<br>
                  </a> -->
                  <input type="submit" class="u-active-palette-2-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius-10 u-btn-1" name="letfe-next2" value="다  음" class="u-form-control">
                </div>
                
                <!--문제**********submit 안넘어감  -->
             
                    <!--위 submit 안먹어서 임시로 추가 -->
<!--                          <a href="letfe/lefe-reigst-third" data-page-id="470906911" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-2-base u-radius-14 u-btn-3">이거 </a>  -->
       
               		<!-- submit 안먹어서 임시로 추가 -->
               		      <input type="hidden" name="mem_id" value="${mem_id}">
              
               	
              <!--   <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse"> -->
              </form>
              
            </div>
          </div>
        </div>
</div>
    </section>
    
    
    
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-design" target="_blank">
        <span>Website Design Ideas</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Layout generator</span>
      </a>. 
    </section>
	
	  <footer class="ftco-footer">
            <div class="container-xl">
      
              <div class="row mb-5 pb-5 justify-content-between">
                <div class="col-md-6 col-lg">
                  <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2 logo d-flex">
                      <a class="navbar-brand align-items-center" href="index">
                        <span class="">Directone <small>Directory and Listing</small></span>
                      </a>
                    </h2>
                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
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
                    <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About Us</a></li>
                    <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Account</a></li>
                    <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Listing</a></li>
                    <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Pricing Packages</a></li>
                    <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Pricing Packages</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-2">
               <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact Us</a></li>
                  <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Terms &amp; Conditions</a></li>
                  <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy</a></li>
                  <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Feedbacks</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-2">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Categories</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Food &amp; Drinks</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Hotels</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Shopping</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Beauty</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Fitness</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Bar &amp; Club</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Have a Questions?</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li><span class="icon fa fa-map marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                  <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                  <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
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
              <p class="mb-0" style="color: rgba(255,255,255,.5); font-size: 13px;">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" rel="nofollow noopener">Colorlib</a>

              </div>
            </div>
          </div>
        </div>
      </footer>


      <script src="resources/letfe/js/bootstrap.bundle.min.js"></script>
      <script src="resources/letfe/js/tiny-slider.js"></script>
      <script src="resources/letfe/js/glightbox.min.js"></script>
      <script src="resources/letfe/js/rellax.min.js"></script>
      <script src="resources/letfe/js/aos.js"></script>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
      <script src="resources/letfe/js/google-map.js"></script>
      <script src="resources/letfe/js/main.js"></script>
      <script src="resources/letfe/js/letfe-reg1.js"></script>
	
	
	
</body>
</html>