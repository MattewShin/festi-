<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--추가추가추가 0803 리스트 뽑아야되서 김민석  -->
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <!--추가 페이징처리  -->
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!--김민석 0809 추가 오후 3:16  -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String mem_id = (String) session.getAttribute("mem_id");
	out.print(mem_id);
%>	    
    
<!DOCTYPE html>
<html>

<!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD--><!--HEAD-->
<head>
  <title>Directone - Free Bootstrap 5 Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

  <link rel="stylesheet" href="resources/letfe/css/animate.css">
  <link rel="stylesheet" href="resources/letfe/css/flaticon.css">
  <link rel="stylesheet" href="resources/letfe/css/tiny-slider.css">
  <link rel="stylesheet" href="resources/letfe/css/glightbox.min.css">
  <link rel="stylesheet" href="resources/letfe/css/aos.css">
  <link rel="stylesheet" href="resources/letfe/css/style.css">
  
  <script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 maxDate: 365,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 maxDate: 365,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
</script>





  <!--자동완성처리 (2) 추가   -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--END 자동완성처리 (2) 추가 END  -->






<!-- Bootstrap 사용 부분 -->
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
      crossorigin="anonymous">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>



<!--렛페스티벌 등록 로그인 후 이용  -->
<script type="text/javascript">
$(document).ready(function(){
	
	$('#letfe_regist_btn').on('click',function(){	//등록버튼이 눌렸을 때 hidden 에 로그인된 mem_id가 없다면 alert or 있다면 letfe-reg1 등록 1페이지로 넘기기
		
		if($('#mem_id').val() == ''){
			alert('로그인 후 이용해주세요');
		}else{
			location.href="letfe-reg1"
		}
	})//onclick end
}); //document end
</script>








  
</head>
<!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD--><!--END--><!--HEAD-->



<!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY--><!--BODY-->
<body> 

<input style="text" id="mem_id" name="mem_id" value="${mem_id}">

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
					<li class="nav-item"><a class="nav-link" href="letfe">Let's
							Festival</a></li>
					<li class="nav-item"><a class="nav-link" href="aon">After_online</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
				</ul>
       
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




<!-- ::  배경화면 :: -->
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/letfe/images/letsfestival2.png');">
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
<!--END ::  배경화면 :: END-->
		
		
  
  
<!--**** 검색 창 전체 섹션 시작 *****-->

		  <section class="ftco-section bg-light">
				<div class="col text-center" style="margin-top: -7%;">
							<div class="row"><!--row  -->
									<div class="row mt-5"><!--row mt-5  -->
												<div class="block-27" style="margin-bottom: 1%;"><!--block-27  -->
									
		
		
		<div class="row no-gutters slider-text align-items-center justify-content-center">
									<div class="col-md-8 mb-5 pb-md-3 heading-section" style="margin-bottom: 0rem !important;">
										<div class="text-center w-100">
											
											
											<h2 class="mb-3" style="margin-bottom: 0rem !important;">LET'S FESTIVAL!</h2>
									
									
										</div>
									</div>


<!--*****LF_NAME(렛페명) + LF_SIM_ADDR(렛페주소명) 검색창***** -->

<div class="col-lg-8 text-center pb-5" style="padding-bottom: 0rem !important;">			
		<div class="row justify-content-center"></div>
					
			<form class="search-property-1 mt-md-5" action="letfe" method="post" ><!--컨트롤러 FORM :: LETFE  //  방식 : POST-->
						<div class="row g-0">
							
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="fa fa-search"></span></div>
										<input type="text" id="lf_name" name="lf_name" class="form-control" value="${lf_name}" placeholder="렛페 축제 검색!" style="border-radius: 21px;">
							
									</div>
								</div>
							</div>
							
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="ion-ios-pin"></span></div>
										
										<input type="text"  id="lf_sim_addr" name="lf_sim_addr"  value="${lf_sim_addr}" class="form-control" placeholder="어디로 갈까요?" style="border-radius: 21px;">
									
									</div>
								</div>
							</div>
					
							
							<div class="col-md d-flex">
								<div class="form-group d-flex w-100 border-0">
									<div class="form-field w-100 align-items-center d-flex align-items-stretch">
										<input type="submit" class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3" value="검색" style="border-radius: 21px;">
									</div>
								</div>
							</div>
							
							
						</div>
					</form>
				</div>
			</div>					
			
			
			
<!--*****시작일 검색창*****  -->	
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-lg-8 text-center pb-5" style="padding-bottom: 0rem !important;">
					<div class="row justify-content-center">
					</div>
					
					
					<form class="search-property-1 mt-md-5" action="letfe" method="post" >
						<div class="row g-0">
						
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="ion-ios-pin"></span></div>
										<input type="hidden" id="lf_name" name="lf_name" class="form-control" value="${lf_name}" placeholder="소규모 축제 검색!" style="border-radius: 21px;">
										<input type="text"  id="lf_start" name="lf_start"  value="${lf_start}" class="form-control" placeholder="시작일 2022-00-00"style="border-radius: 21px;">
									
									</div>
								</div>
							</div>	
							
							<div class="col-md d-flex">
								<div class="form-group d-flex w-100 border-0">
									<div class="form-field w-100 align-items-center d-flex align-items-stretch">
										<input type="submit" class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3" value="시작일 검색" style="border-radius: 21px;">
									</div>
								</div>
							</div>
						</div>
					</form>
					
					
				</div>
			</div>					
			
		
<!--****마감일 검색창*****   -->
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-lg-8 text-center pb-5">
					<div class="row justify-content-center"></div>
				
				
					<form class="search-property-1 mt-md-5" action="letfe" method="post" >
						<div class="row g-0">
						
								<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="ion-ios-pin"></span></div>
										<input type="hidden" id="lf_name" name="lf_name" class="form-control" value="${lf_name}" placeholder="소규모 축제 검색!" style="border-radius: 21px;">
										<input type="text"  id="lf_end" name="lf_end"  value="${lf_end}" class="form-control" placeholder="마감일 2022-00-00" style="border-radius: 21px;">
									
									</div>
								</div>
							</div>	
							<div class="col-md d-flex">
								<div class="form-group d-flex w-100 border-0">
									<div class="form-field w-100 align-items-center d-flex align-items-stretch">
										<input type="submit" class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3" value="마감일 검색" style="border-radius: 21px;">
									</div>
								</div>
							</div>
						</div>
					</form>
					
					
				</div>
			</div>			
			
				
				
<!--******렛페 등록 버튼********* -->

			<button id="letfe_regist_btn"
				class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3"
				style="color: white !important; 
				padding: -6px 12px; 
				background: #6190d5 !important; cursor: pointer; 
				letter-spacing: 1px; width: 24%; height: -11%; 
				position: absolute; padding: 0; 
				position: inherit; margin: 0; 
				display: table-caption; 
				margin-bottom: 5rem !important; 
				border: 0px solid #ff414d !important;">
				+let's festival 등록</button>



			</div>		<!--block-27  END-->
				</div>				<!--row mt-5  END-->
					</div>						<!--row end END-->
						</div>							 <!--col text-center END-->



<!--******렛페 리스트******  -->
		<div class="container-xl">
			<div class="row">

				<c:forEach items="${list}" var="list" varStatus="cnt">
					<input type="hidden" value="${list.img_code}">
					<input type="hidden" value="${list.lf_code}">
					<div class="col-md-3 d-flex">


						<div class="blog-entry justify-content-end" data-aos="fade-up"
							data-aos-duration="1000" data-aos-delay="100">



							<!-- 개같은 upload 폴더       resources 앞에 /하면 안됨      resources/letfe/upload/${list.img_save}  -->
							<a class="block-20 img d-flex align-items-end"
								href="blog-single-letfeInfo?lf_code=${list.lf_code}&img_code=${list.img_code}"
								style="background-image:url('resources/letfe/upload/${list.img_save}')">
								<%--  <img src="../resources/letfe/upload/${list.img_save}"> --%>
							</a>




							<div class="text">
								<p class="meta">
									<span>${list.img_reg}</span><a href="#">${list.lf_count}</a>
								</p>
								<h3 class="heading mb-3">
									<a href="#">${list.lf_name}</a>
								</h3>
								<p>${list.lf_info}</p>
							</div>
						</div>
					</div>

				</c:forEach>
				
				
				<!--*****페이징 번호*****  -->
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<c:forEach var="i" begin="1" end="${totalPage}">
								<a href="letfe?pageNUM=${i }">${i }</a>
							</c:forEach>
						</div>
					</div>
				</div>





			</div>
		</div>
	</section>
	
	
<!--*****FOOTER******  -->
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
	
	
	
	
	<script src="resources/letfe/js/input2.js"></script>
	<script src="resources/letfe/js/input.js"></script>
	<script src="resources/letfe/js/bootstrap.bundle.min.js"></script>
	<script src="resources/letfe/js/tiny-slider.js"></script>
	<script src="resources/letfe/js/glightbox.min.js"></script>
	<script src="resources/letfe/js/rellax.min.js"></script>
	<script src="resources/letfe/js/aos.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/letfe/js/google-map.js"></script>
	<script src="resources/letfe/js/main.js"></script>





</body>
    </html>