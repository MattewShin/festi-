<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>



<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

<script>
/** 우편번호 찾기 */
function execDaumPostcode() {
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
              $("#postcode").val(data.zonecode);
              $("#address").val(data.roadAddress);
            }
        }).open();
    });
}
</script>








<!--blog.jsp  -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

  <link rel="stylesheet" href="resources/letfe/css/animate.css"><!--경로지정  -->
  <link rel="stylesheet" href="resources/letfe/css/flaticon.css"><!--경로지정  -->
  <link rel="stylesheet" href="resources/letfe/css/tiny-slider.css"><!--경로지정  -->
  <link rel="stylesheet" href="resources/letfe/css/glightbox.min.css"><!--경로지정  -->
  <link rel="stylesheet" href="resources/letfe/css/aos.css"><!--경로지정  -->
  <link rel="stylesheet" href="resources/letfe/css/style.css"><!--경로지정  -->
<!--blog.jsp  -->

<!--nicepage  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="$10 Off withEmail Signup, $10 Off withEmail Signup">
    <meta name="description" content="">
    <title>3 축제 상세입력</title>
  
  
    <link rel="stylesheet" href="resources/letfe/css/ms-nicepage.css" media="screen">
	<link rel="stylesheet" href="resources/letfe/css/ms-3-축제-상세입력.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ms-jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ms-nicepage.js" defer=""></script>
    
    
			<!--에이젝슨!!!!  -->
			   		<!-- 	 <script src="resources/letfe/js/ms-exmaple.js"></script> -->
			<!--에이젝슨!!!!  -->
    
    
    <meta name="generator" content="Nicepage 4.14.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<script type="application/ld+json" >{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""}
</script>

    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="3 축제 상세입력">
    <meta property="og:type" content="website">
<!--nicepage  -->


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="u-body u-xl-mode" >
 
 
 
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

  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/letsfestival2.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 pt-5 text-center">
          <p class="breadcrumbs"><span class="mr-2"><a href="index">Home <i class="fa fa-chevron-right"></i></a></span> <span>렛페 <i class="fa fa-chevron-right"></i></span></p>
          <h1 class="mb-0 bread">테스트용 렛페</h1>
        </div>
      </div>
    </div>
  </section>
 <!--blog.jsp  -->
 
 
 
 <section class="u-clearfix u-image u-section-1" id="sec-060d" data-image-width="2736" data-image-height="1824">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h4 class="u-custom-font u-font-montserrat u-text u-text-1"><span class="u-file-icon u-icon u-icon-1"><img src="resources/images/179351.png" alt=""></span> &nbsp;축제 상세 입력
            </h4>
            <div class="u-expanded-width u-form u-form-1">
                      
            
            <!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그-->
            <!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그-->
            <!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그--><!--폼태그-->
 <br/>       
        		<!--이미지 넘기려면 enctype="multipart/form-data" TAG 안에 부여  -->
<!--           <form action="savelefe2update" method="post" enctype="multipart/form-data">                   
 	           대표 이미지 선택 : <input type="file" name="files" ><br/>     -->       
 	           
 	           <!-- 이미지 업로드 다른 방법 -->            
               <form id="frm" name="frm" action="savelefe2update" method="post" enctype="multipart/form-data">                   
              		
   						이미지 업로드 : <input type="file" name="files" ><br/>  
   				
					 
   간단 장소명  <input type="text"  placeholder="lf_place" name="lf_place" id="address-dfdc"  class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10"> 
                    

  <label class="col-md-2 offset-md-3 col-form-label">
    주&nbsp;&nbsp;소&nbsp;&nbsp;<span class="m--font-orange vertical-middle">*</span>
  </label>
    <input type="text" class="form-control m-input" name="lf_postnum" id="postcode" placeholder="우편번호" readonly />
    <button type="button" class="btn btn-info m-btn--air" onclick="execDaumPostcode()">우편번호 찾기</button>
    <input
      type="text"
      class="form-control m-input m--margin-top-10"
      name="lf_sim_addr"
      id="address"
      placeholder="도로명 주소"
      readonly />
    <input
      type="text"
      class="form-control m-input m--margin-top-10"
      name="lf_detail_addr"
      placeholder="상세 주소"
      required
    /> 
<br/>          
         
          <!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
          
          
           한 줄 소개 <input type="text" placeholder="lf_info" id="text-f524" name="lf_info" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10"><!--lf_info  -->
           특이사항 <input type="text" placeholder="lf_memo" id="text-f524" name="lf_memo" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10"><!--lf_memo  -->
 			내용		<textarea rows="4" cols="50" id="textarea-b765" name="lf_content" class="u-border-2 u-border-grey-5 u-grey-5 u-input u-input-rectangle u-radius-10" placeholder="lf_content"></textarea><!--lf_content  -->
 			  <!--내꺼일단 주석 영범이형고친거 해보게  -->
 			   <!--    <input type="submit" value="저장" id="a1" >    -->
 			   
 			   	  <div class="u-align-center u-form-group u-form-submit">
               
           		<input type=button class="u-active-palette-2-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius-10 u-btn-1" name="letfe-befor1" value="이  전" class="u-form-control" onclick="location.href='./example'">
         		<input type="submit" class="u-active-palette-2-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius-10 u-btn-1" name="letfe-next2" value="저  장" class="u-form-control" > <!-- 최종온클릭이동 -->
 			    
 			   </div>
			</form>
 			   
 			   




<!--               다중 업로드...
              <form action="upload_ok2" method="post" enctype="multipart/form-data">
		다중 이미지 선택 : <input type="file" multiple="multiple" name="files"> 
					<input type="submit" value="저장">
				</form>  -->
              
              
              
              
              
            </div>
      

          </div>
        </div>
      </div>
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
  
</body></html>
