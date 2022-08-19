<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Festival</title>
<!--방금 추가함   -->
<script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
<script src="resources/js/*.js"></script>
<script type="text/javascript"></script>
<!--위에꺼추가  -->
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

<link rel="stylesheet" href="resources/festival/css/animate.css">
<link rel="stylesheet" href="resources/festival/css/flaticon.css">
<link rel="stylesheet" href="resources/festival/css/tiny-slider.css">
<link rel="stylesheet" href="resources/festival/css/glightbox.min.css">
<link rel="stylesheet" href="resources/festival/css/aos.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
   type="text/css" />
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
            
            let sid = $("#sessionid").val();
            
            $.ajax({
               type :'get',
               url :'lovefind',
               data :{'sid' : sid},
               dataType : 'json',
               success : function(result){
                  for(i of result){
                     
                  }
               }
               
            });
            
    });
    
    function heart(festcode){
    
       let sid = $("#sessionid").val();
       let heart = $("#"+festcode+"heart");
       
       heart.removeAttr('class');
       $.ajax({
          type :'get',
          url : 'love',
          data : {'festcode' : festcode, 'sid' : sid},
          success : function(result){
             if(result=="insert"){
                heart.attr('class', 'ion-ios-heart');
                
             }else{
                heart.attr('class', 'ion-ios-heart-empty');
             }
          },
          error:function(err){
             alert('에러');
             console.log(err);
          }
       });   
    }
    
</script>
</head>
<body>
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

    
   <nav class="navbar navbar-expand-lg  ftco-navbar-light">
      <div class="container-xl">
         <a class="navbar-brand d-flex align-items-center" href="index">
            <span class="flaticon flaticon-compass"></span>
            <span class="">Festi+ <small>FESTIVAL IN NOW</small></span>
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
      style="background-image: url('resources/images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 pt-5 text-center">
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="index">Home <i
                        class="fa fa-chevron-right"></i></a></span> <span>축제 <i
                     class="fa fa-chevron-right"></i></span>
               </p>
               <h1 class="mb-0 bread">축제 목록</h1>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-no-pb bg-light">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-8 mb-5 pb-md-3 heading-section">
               <div class="text-center w-100">
                  <h2 class="mb-3">가고싶은 축제를 찾아보세요!</h2>
               </div>



               <form action="festival" class="search-property-1 mt-md-4">
                  <div class="row g-0">
                     <div class="col-md d-flex">
                        <!-- 해시태그 삽입 부분 -->
                        <p>
                           <a class="btn btn-primary" data-bs-toggle="collapse"
                              href="#collapseExample" role="button" aria-expanded="false"
                              aria-controls="collapseExample"> # </a>
                        </p>

                        <div class="form-group p-3 border-0">
                           <div class="form-field">
                              <div class="icon">
                                 <span class="fa fa-search"></span>
                              </div>
                              <input type="text" class="form-control" id="keyword" name="keyword" placeholder="검색어">
                           </div>
                        </div>
                     </div>
                     <div class="col-md d-flex">
                        <div class="form-group d-flex w-100 border-0">
                           <div
                              class="form-field w-100 align-items-center d-flex align-items-stretch">
                              <a href="#"
                                 class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3"><span><i
                                    class="ion-ios-search"></i> 검색</span></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
               <div class="collapse" id="collapseExample">
                  <div class="card card-body">
                     <div style="float: left;">

<!-- 지역 카테고리 -->
                        <div class="col-md d-flex" style="float:left; width:50%;">
                           <div class="form-group p-3">
                              <div class="form-field">
                                 <h3>지역</h3>
                                 <div class="select-wrap" style="display: inline-block;">
                                    <select name="" id="" class="form-select"
                                       aria-label="Default select example">
                                       <option value="">도</option>
                                       <option value="">서울</option>
                                       <option value="">인천 &amp; 경기</option>
                                       <option value="">강원도</option>
                                       <option value="">충청북도</option>
                                       <option value="">대전 &amp; 충남</option>
                                       <option value="">대구 &amp; 경북</option>
                                       <option value="">부산 &amp; 경남</option>
                                       <option value="">전라북도</option>
                                       <option value="">광주 &amp; 전남</option>
                                       <option value="">제주도</option>
                                    </select>
                                 </div>
                                 <div class="select-wrap" style="display: inline-block;">
                                    <select name="" id="" class="form-select"
                                       aria-label="Default select example">
                                       <option value="">시</option>
                                       <option value="">경주</option>
                                       <option value="">김천</option>
                                       <option value="">구미</option>
                                       <option value="">대구</option>
                                       <option value="">상주</option>
                                       <option value="">안동</option>
                                       <option value="">영덕</option>
                                       <option value="">영주</option>
                                       <option value="">영천</option>
                                       <option value="">예천</option>
                                       <option value="">포항</option>
                                    </select>
                                 </div>
                              </div>
                           </div>
                        </div>

<!-- 달력 카테고리 -->
                  <div class="col-md d-flex">
                           <div class="form-group p-3">
                              <div class="form-field">
                  <h3>달력</h3>
                  <div class="select-wrap" style="display: inline-block; float:left;">
                     시작일<input type="text" id="startDate" class="form-select" aria-label="Default select example" value="yyyy-mm-dd">
                  </div>
                  <div class="select-wrap" style="display: inline-block; float:left;">
                     마감일<input type="text" id="endDate" class="form-select" aria-label="Default select example" value="yyyy-mm-dd">
                  </div>
               </div>
            </div>
         </div>

<!-- 분류 카테고리 -->
                           <div class="col-md d-flex">
                           <div class="form-group p-3">
                              <div class="form-field">
                        <h3>분류</h3>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="drink"> <label class="form-check-label"
                              for="drink"> #주류 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="music"> <label class="form-check-label"
                              for="music"> #음악 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="art"> <label class="form-check-label"
                              for="art"> #미술 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="food"> <label class="form-check-label"
                              for="food"> #음식 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="traditional"> <label class="form-check-label"
                              for="traditional"> #민속/전통 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="human"> <label class="form-check-label"
                              for="human"> #인물/역사 </label>
                        </div>
                     </div>
                     
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="season"> <label class="form-check-label"
                              for="season"> #계절 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="spec"> <label class="form-check-label"
                              for="spec"> #특산물 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="nature"> <label class="form-check-label"
                              for="nature"> #자연/생태 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="class"> <label class="form-check-label"
                              for="class"> #교육/체험 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="sport"> <label class="form-check-label"
                              for="sport"> #스포츠/레저 </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="checkbox" value=""
                              id="industry"> <label class="form-check-label"
                              for="industry"> #산업 </label>
                        </div>
                     
                     </div>
                     </div>
                     </div>
         </div>
         </div>
         </div>

   </section>

   <section class="ftco-section bg-light">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-8 heading-section text-center mb-5"
               data-aos="fade-up" data-aos-duration="1000">
               <span class="subheading">축제</span>
               <h2 class="mb-4">축제 리스트</h2>
            </div>
         </div>
         
         <div class="row">
         <div style="display: inline-block; margin: 0 5px;  float: right;" align=right>
         <a class="new-link" href="">최신순 </a>|
         <a class="new-link" href="">인기순 </a>|
         <a class="new-link" href="">오픈 예정순</a>
         </div>
         <br/>
         <br/>
         <br/>
            <c:forEach items="${list}" var="fest">
            <div class="col-md-6 col-lg-3 d-flex align-items-stretch"
               data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
               <div class="listing-wrap">
                  <a href="resources/images/list-1.jpg"
                     class="img img-property d-flex align-items-center justify-content-center glightbox"
                     style="background-image: url(resources/images/list-1.jpg);">
                     <div
                        class="icon d-flex align-items-center justify-content-center">
                        <span class="fa fa-search"></span>
                     </div>
                  </a>
                  <div class="text text-center">
                     <div
                        class="icon d-flex align-items-center justify-content-center">
                        <span class="flaticon-food-and-drink"></span>
                     </div>
                     <span class="subheading">Food &amp; Drinks</span>
                     <h3>
                        <a href="blog-single?fest_code=${fest.fest_code }">${fest.fest_name }</a>
                     </h3>
                     <ul class="">
                        <li><p>
                              <span class="ion-ios-pin"></span> ${fest.fest_place }
                           </p></li>
                        <li><p>
                              <span class="fa fa-phone"></span> ${fest.fest_tel }
                           </p></li>
                     </ul>
                     <div class="info-wrap2 d-flex align-items-center">
                        <p class="review">
                           <span class="rev">리뷰 <small>5.0/5</small></span> <span
                              class="ico ion-ios-star"></span><small>(100)</small>
                        </p>
                        <p class="heart">
                           <a id="heart" onclick="javascript:heart(${fest.fest_code})"
                              class="d-flex align-items-center justify-content-center">
                              <span id="${fest.fest_code }heart" class="ion-ios-heart-empty">
                            <input type="hidden" id="festcode" name="festcode" value="${fest.fest_code }"/>
                           <input type="hidden" id="sessionid" name="sessionid" value="${sessionScope.mem_id }"/>
                              </span>
                              
                              </a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            </c:forEach>
<!-- 페이징 처리 -->
         <div class="row mt-5">
            <div class="col text-center">
               <div class="block-27">
                  <ul>
                     <li><a href="festival?pageNUM=${pageNUM-1 }">&lt;</a></li>
                  <c:forEach var="i" begin="1" end="${totalPage }">
               <li><a href="festival?pageNUM=${i }&keyword=${keyword}"> ${i } </a></li>
               </c:forEach>
                     <li><a href="festival?pageNUM=${pageNUM+1 }">&gt;</a></li>
                  </ul>
               </div>
            </div>
         </div>
         
         <div align=right>
            <p class="mb-0">
               <a href="addFestival" class="btn btn-primary rounded"><span
                  class="ion-ios-add"></span>축제 등록</a>
            </p>
         </div>
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