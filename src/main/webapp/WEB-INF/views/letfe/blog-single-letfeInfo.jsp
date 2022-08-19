<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="d"%>

<!--김민석 0809 추가 오후 3:16  -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String mem_id = (String) session.getAttribute("mem_id");
	out.print(mem_id);
%>	    


<!DOCTYPE html>
<html>
<head>
  <title>Directone - Free Bootstrap 5 Template by Colorlib</title>
  <meta charset="utf-8">																<!-- 이거 추가 -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, initial-scale=1.0">

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
  
  
  <!--카운트-->
 	<link rel="stylesheet" href="resources/letfe/css/cnt-nicepage.css" media="screen">
	<link rel="stylesheet" href="resources/letfe/css/count.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/letfe/js/cnt-jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/letfe/js/cnt-nicepage.js" defer=""></script>
  
  
  
    <link rel="stylesheet" href="resources/letfe/css/yb2nicepage.css">
<link rel="stylesheet" href="resources/letfe/css/yb2Home.css">

  <!-- meta 추가 -->
  <meta name="keywords" content="92, 25, 37, COMING SOON, Now It Is Your Time To Design">
  <meta name="description" content="">
  <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
  <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    

  
 <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""}
	</script>
		
<script type="text/javascript">

	var years = ${years}
	var months = ${months}
	var days = ${days}
	
	CountDownTimer((months+'/'+days+'/'+years), 'countdown'); // 2017년 1월 1일까지
	//CountDownTimer('08/08/2022 00:00 AM', 'newcountdown'); // 2018년 1월 1일까지, 시간을 표시하려면 01:00 AM과 같은 형식을 사용합니다.
	
	function CountDownTimer(dt, id)
	{
	var end = new Date(dt);
	
	var _second = 1000;
	var _minute = _second * 60;
	var _hour = _minute * 60;
	var _day = _hour * 24;
	var timer;
	
	function showRemaining() {
	var now = new Date();
	var distance = end - now;
	if (distance < 0) {
	
	clearInterval(timer);
	document.getElementById(id).innerHTML = '축제신청이 마감되었습니다.';
	
	return;
	}
	var days = Math.floor(distance / _day);
	var hours = Math.floor((distance % _day) / _hour);
	var minutes = Math.floor((distance % _hour) / _minute);
	var seconds = Math.floor((distance % _minute) / _second);
	
	document.getElementById(id).innerHTML = days + '일 ';
	document.getElementById(id).innerHTML += hours + '시간 ';
	document.getElementById(id).innerHTML += minutes + '분 ';
	document.getElementById(id).innerHTML += seconds + '초';
	}
	
	timer = setInterval(showRemaining, 1000);
	}


</script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){
	$('#party_join').on('click', function(){	
	
		
		if($('#mem_id').val() != ''){
			
			
			$.ajax({
			
				type:'get',
				url: 'partyCheck',
				data : {'mem_id' : $('#mem_id').val(), 'lf_code' : $('#lf_code').val()},
				dataType: 'json',
				success: function(result){ 
					alert("파티테이블 체크");
					console.log("통신 파티테이블 체크 결과");
					console.log(result);
					
					if(result == '0'){
						
					
						alert('파티에 참석되셨습니다.')
						party_join();
						insertPartyTable();
						
					}else{
											
						alert('이미 참가한 파티입니다.')
						
					}
					
				},
				error: function(){alert('틀림');}
			});
			
			
			
			
			
		}else{
			alert('로그인 후 이용해주세요!');
			
		}
		
		
		
		
		
		
		
		//party_join();
	//	insertPartyTable();

		
		})//'click',function(){ ::: END
		

});//$(document) ::: END


function party_join(){
	$.ajax({
		url: 'insertParty',
		type: 'get',
		data: { 'lf_code' : $('#lf_code').val()},
		dataType: 'json',
		success: function(result){
			alert("db확인");
			alert("밑에 lf_party 숫자 확인");
			alert("콘솔확인");
			
			$('#lf_party').text("");
			$('#lf_party').text(result);

			console.log("통신결과");
			console.log(result);
		},
		error: function(){alert('틀림');}
		
			
			
	});		
}

function insertPartyTable(){
	$.ajax({
		url:'insertPartyTable',
		type:'get',
		data:{'mem_id' : $('#mem_id').val(), 'lf_code' : $('#lf_code').val()},
		success: function(result){ 
			alert("파티테이블 인서트");
			console.log("통신 파티테이블 인서트 결과");
			console.log(result);
		},
		error: function(){alert('틀림');}
		
	
	
	});
	}



</script>

<!--카운트 글씨체  -->
  <style type="text/css">
    
    @font-face {
    font-family: 'OKCHAN';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-02@1.0/OKCHAN.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: '양진체';
    src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

p.u-text.u-text-2, p.u-text.u-text-4, p.u-text.u-text-6{
	font-family: 'OKCHAN';
}

h1.u-text.u-text-default.u-text-palette-3-base.u-title{
	font-family: '양진체';
}
    
    </style>
<!--END ::카운트 글씨체 ::END  -->


  
  <!-- meta 추가 -->
  
  <!-- css 추가 -->
  <link rel="stylesheet" href="resources/letfe/css/yb2nicepage.css" media="screen">
  <link rel="stylesheet" href="resources/letfe/css/yb2Home.css" media="screen">
  <!-- css 추가 -->
  
  
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

  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_3.jpg');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 pt-5 text-center">
          <p class="breadcrumbs"><span class="mr-2"><a href="index">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="index">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Blog Single <i class="fa fa-chevron-right"></i></span></p>
          <h1 class="mb-0 bread">렛페 상세 페이지</h1>
        </div>
      </div>
    </div>
  </section>
  
<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	<!-- 새로 맹근 html -->	




<body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en">
   
   
<input style="text" id="mem_id" name="mem_id" value="${mem_id}">
   
   
   
<c:forEach items="${letfe}" var="letfe">  
     
     
     
     
    <section class="u-clearfix u-section-1" id="sec-393d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-absolute-hcenter u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-2"></div>
      
    
        <div class="u-clearfix u-gutter-10 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
        
        
         <c:forEach items="${img}" var="img">  
         
         
            <!-- 대표 이미지 -->
              <div class="u-container-style u-image u-layout-cell u-left-cell u-size-27 u-image-1"  style="background-image:url('resources/letfe/upload/${img.img_save}')" data-image-width="1080" data-image-height="1080">
                <div class="u-container-layout u-valign-middle u-container-layout-1"></div>
              </div>
              
              
        </c:forEach> 
        
        
            <!-- 대표 이미지 -->          
            
            <!-- 프로필 이미지 -->
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-33 u-white u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div alt="" class="u-image u-image-circle u-image-2" src="" data-image-width="256" data-image-height="256"></div>
           <!-- 프로필 이미지 -->      
           
           
        <!--마진 **** -->   
        <div class="nameInfoPlusBtn" style="margin: 0px -3px 0px 67px;">
           <!-- 한줄 소개 -->
                  <h2 class="u-text u-text-1">${letfe.lf_name}</h2>
                  <p class="u-text u-text-2">${letfe.lf_info}</p>
<%--       	 	  <p>시작일:  ${letfe.lf_start}</p>     
				  <p>종료일:  ${letfe.lf_end}</p>     --%> 
      	 
      	 <div class="btn_Div" style="0px 0px 0px -1px">
      	 <!--마진 **** -->
      	 <div style="margin: -3px 0px 5px 60px;" class="u-text u-text-2">
		     <!-- 참가 신청 버튼 -->
		     <input type="button"  id="party_join" class="u-btn u-button-style u-gradient u-none u-text-body-alt-color u-btn-1" " value="이거렛체">
		     <!-- href="insertParty"  -->	     
        </div>
        
        
        <!--마진 **** -->
         <div style="margin: 67px 0px 6px 59px;" class="u-text u-text-2">
      	<!-- 찜 혹은 좋아요 버튼 -->
        <a href="" class="u-btn u-btn-round u-button-style u-gradient u-none u-radius-4 u-text-body-alt-color u-btn-2">
        <span class="u-icon u-text-white">
        <svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" style="width: 1em; height: 1em;">
        <path d="M53.333,224C23.936,224,0,247.936,0,277.333V448c0,29.397,23.936,53.333,53.333,53.333h64 c12.011,0,23.061-4.053,32-10.795V224H53.333z"></path>
        <path d="M512,304c0-12.821-5.077-24.768-13.888-33.579c9.963-10.901,15.04-25.515,13.653-40.725    c-2.496-27.115-26.923-48.363-55.637-48.363H324.352c6.528-19.819,16.981-56.149,16.981-85.333c0-46.272-39.317-85.333-64-85.333 c-22.165,0-37.995,12.48-38.677,12.992c-2.517,2.027-3.989,5.099-3.989,8.341v72.341l-61.44,133.099l-2.56,1.301v228.651    C188.032,475.584,210.005,480,224,480h195.819c23.232,0,43.563-15.659,48.341-37.269c2.453-11.115,1.024-22.315-3.861-32.043 c15.765-7.936,26.368-24.171,26.368-42.688c0-7.552-1.728-14.784-5.013-21.333C501.419,338.731,512,322.496,512,304z"></path></svg>
        <img></span>&nbsp;찜    	
        </a>
        
        </div>
        
         </div>
         
         
      	 </div>
      	 
       </div>                
              </div>                      
            </div>
          </div>
        </div>
    

           <input type="text" name="lf_code" id="lf_code" value="${letfe.lf_code}"><!--내가 어떤 데이터가 필요하지??  -->
     
           
             
        
        <!-- 수치 누적 박스  -->
         <div class="u-black u-expanded-width u-list u-list-1" id="sec-4d58">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1">
              
              <!--여기 css만 이상해서 style 추가 0812 김민석 오전 11:37 -->
                <h1  id="lf_count_id" class="u-text u-text-default u-text-palette-3-base u-title u-text-1" 
                data-animation-name="counter" data-animation-event="scroll" data-animation-duration="3000"
                style="margin: 40px 107.58699999999999px -3px;will-change: contents;">${letfe.lf_count}</h1>
                
                
                <!--여기 css만 이상해서 style 추가 0812 김민석 오전 11:37 -->
                <p class="u-text u-text-2" style="margin: 13px -24px 4px;margin-right: 22px;">조회수</p>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-2">
                <h1 id="lf_party" class="u-text u-text-default u-text-palette-3-base u-title u-text-3" data-animation-name="counter" data-animation-event="scroll" data-animation-duration="3000">${letfe.lf_party}</h1>
                <p class="u-text u-text-4">현재 참여 인원</p>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3">
                <h1 class="u-text u-text-default u-text-palette-3-base u-title u-text-5" data-animation-name="counter" data-animation-event="scroll" data-animation-duration="3000">${letfe.lf_party_max}</h1>
                <p class="u-text u-text-6">참여 제한 인원</p>
              </div>
            </div>
          </div>
        </div>
       <!-- 수치 누적 박스  -->
       

      <!-- 카운트 다운 --> 
        <h2 class="u-text u-text-default u-text-9"> COMING SOON</h2>
        <div class="u-countdown u-countdown-1" data-timer-id="b9bb" data-type="to-date" data-target-date="countdown" data-for="everyone" data-direction="down"><h2 id="countdown" style= font-weight:bold></h2>
      <h3>시작일: ${letfe.lf_start}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종료일: ${letfe.lf_end}</h3> 

        </div>
        <!-- 카운트 다운 --> 

        
        
        
        <div id="carousel-bd35" data-interval="5000" data-u-ride="carousel" class="u-carousel u-slider u-slider-1">
          <ol class="u-absolute-hcenter u-carousel-indicators u-hidden u-carousel-indicators-1">
            <li data-u-target="#carousel-bd35" class="u-active u-grey-30" data-u-slide-to="0"></li>
            <li data-u-target="#carousel-bd35" class="u-grey-30" data-u-slide-to="1"></li>
          </ol>
        <!-- 슬라이드 이미지 -->
        	<div class="result-images">
        	
		<!-- 업로드한 파일들을 forEach문을 이용해 <img> 태그에 표시 -->
			<c:forEach var="imageFileName" items="${ map.fileList}"  >
					<img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }">
			        <br><br><br>
			</c:forEach>         
			</div> <p> 
		<!-- 업로드한 파일들을 forEach문을 이용해 <img> 태그에 표시 -->	

        <!-- 슬라이드 이미지 -->  
          <div class="u-carousel-inner" role="listbox">
            <div class="u-active u-align-left u-carousel-item u-container-style u-image u-shading u-slide u-image-3" data-image-width="1280" data-image-height="716">
              <div class="u-container-layout u-container-layout-6"></div>
            </div>
            <div class="u-align-left u-carousel-item u-container-style u-image u-shading u-slide u-image-4" data-image-width="1280" data-image-height="716">
              <div class="u-container-layout u-container-layout-7"></div>
            </div>
          </div>
        <!-- 슬라이드 이미지 -->  
        
        <!-- 슬라이드 이전 버튼 -->
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-60 u-icon-circle u-spacing-9 u-carousel-control-1" href="#carousel-bd35" role="button" data-u-slide="prev">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
            </span>
            <span class="sr-only">+Previous</span>
          </a>
        <!-- 슬라이드 이전 버튼 -->
        
        <!-- 슬라이드 다음 버튼 -->
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-60 u-icon-circle u-spacing-9 u-carousel-control-2" href="#carousel-bd35" role="button" data-u-slide="next">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
            </span>
            <span class="sr-only">+Next</span>
          </a>
     	<!-- 슬라이드 다음 버튼 -->
        </div>
        
        <!-- 참가 신청 버튼 -->
        <a href="" class="u-btn u-button-style u-gradient u-none u-text-body-alt-color u-btn-1">렛페참가신청</a>
        <!-- 참가 신청 버튼 -->
      	<!-- 찜 혹은 좋아요 버튼 -->
        <a href="" class="u-btn u-btn-round u-button-style u-gradient u-none u-radius-4 u-text-body-alt-color u-btn-2"><span class="u-icon u-text-white"><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M53.333,224C23.936,224,0,247.936,0,277.333V448c0,29.397,23.936,53.333,53.333,53.333h64 c12.011,0,23.061-4.053,32-10.795V224H53.333z"></path><path d="M512,304c0-12.821-5.077-24.768-13.888-33.579c9.963-10.901,15.04-25.515,13.653-40.725    c-2.496-27.115-26.923-48.363-55.637-48.363H324.352c6.528-19.819,16.981-56.149,16.981-85.333c0-46.272-39.317-85.333-64-85.333 c-22.165,0-37.995,12.48-38.677,12.992c-2.517,2.027-3.989,5.099-3.989,8.341v72.341l-61.44,133.099l-2.56,1.301v228.651    C188.032,475.584,210.005,480,224,480h195.819c23.232,0,43.563-15.659,48.341-37.269c2.453-11.115,1.024-22.315-3.861-32.043 c15.765-7.936,26.368-24.171,26.368-42.688c0-7.552-1.728-14.784-5.013-21.333C501.419,338.731,512,322.496,512,304z"></path></svg><img></span>&nbsp;찜
    	<!-- 찜 혹은 좋아요 버튼 -->
        </a>
        
        <!-- 상세 설명 박스 -->
        <div class="u-container-style u-group u-palette-4-dark-2 u-group-1">
          <div class="u-container-layout u-container-layout-8">
<%--           <d:forEach items="${letfe}" var="info" varStatus="cnt"> --%>
            <h2 class="u-align-center u-text u-text-default u-text-10">${letfe.lf_name}</h2>
            <div class="u-border-3 u-border-palette-3-base u-line u-line-horizontal u-line-3"></div>
            <p class="u-align-center u-text u-text-11">${letfe.lf_content} 
               
               <!-- 나중에라도 쓸 일 있으면 사용 가능 -->  
               <!-- <a href="" class="u-border-1 u-border-hover-palette-3-base u-border-white u-btn u-button-style u-none u-text-body-alt-color u-text-hover-palette-3-base u-btn-3">요기 글자를 링크 걸 수 있음</a>  -->
               <!-- 나중에라도 쓸 일 있으면 사용 가능 -->  
                              
            </p>
<%-- 	     </d:forEach> --%>
          </div>
        </div>
        
       <!-- 상세 설명 박스 --> 
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-4"></div>
        
        
       <!-- 지도 -->
<%--         <div class="u-expanded-width u-grey-light-2 u-map u-map-1">
          <div class="embed-responsive">
            <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Manhattan&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLWFkZHJlc3MlMjIlMkMlMjJhZGRyZXNzJTIyJTNBJTIyTWFuaGF0dGFuJTIyJTJDJTIyem9vbSUyMiUzQW51bGwlMkMlMjJ0eXBlSWQlMjIlM0ElMjJyb2FkJTIyJTJDJTIybGFuZyUyMiUzQW51bGwlMkMlMjJhcGlLZXklMjIlM0FudWxsJTJDJTIybWFya2VycyUyMiUzQSU1QiU1RCU3RA=="></iframe>
          </div>
        </div> --%>
        
        <!-- 카카오 지도 교체 -->
        <div id="map" style="width:1140px;height:400px;"></div>
         <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=756ac246e0cd870dd933a04d7df8bb5e"></script>  
         <script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		</script>
        
       <!-- 지도 -->
      </div>
      
    </section>
            </c:forEach> 
    <!-- 화면 상당 끌어올림 화살표 -->
    <span style="height: 64px; width: 64px; margin-left: 0px; margin-right: auto; margin-top: 0px; background-image: none; right: 20px; bottom: 20px; padding: 15px;" class="u-back-to-top u-icon u-icon-circle u-opacity u-opacity-85 u-palette-1-base" data-href="#">
        <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 551.13 551.13"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1d98"></use></svg>
        <svg class="u-svg-content" enable-background="new 0 0 551.13 551.13" viewBox="0 0 551.13 551.13" xmlns="http://www.w3.org/2000/svg" id="svg-1d98"><path d="m275.565 189.451 223.897 223.897h51.668l-275.565-275.565-275.565 275.565h51.668z"></path></svg>
    </span>
	<!-- 화면 상당 끌어올림 화살표 -->




  
  <!-- 푸터시작 -->

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

  <!-- 푸터끝 -->
  
<script src="resources/letfe/js/Lf-partyAjax.js"></script>
<script src="resources/letfe/js/bootstrap.bundle.min.js"></script>
<script src="resources/letfe/js/tiny-slider.js"></script>
<script src="resources/letfe/js/glightbox.min.js"></script>
<script src="resources/letfe/js/rellax.min.js"></script>

<script src="resources/letfe/js/aos.js"></script>

<script src="resources/letfe/js/main.js"></script>
<!-- 추가 -->
<script class="u-script" type="text/javascript" src="resources/letfe/js/yb2nicepage.js" ></script>
<script class="u-script" type="text/javascript" src="resources/letfe/js/yb2jquery.js" ></script>
<!-- 추가 -->

</body>
</html>