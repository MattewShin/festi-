<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ms-jquery.js" ></script>
    <script class="u-script" type="text/javascript" src="resources/letfe/js/ms-nicepage.js"></script>
    
    
			<!--에이젝슨!!!!  -->
			   		<!-- 	 <script src="resources/letfe/js/ms-exmaple.js"></script> -->
			<!--에이젝슨!!!!  -->
    
    
    <meta name="generator" content="Nicepage 4.14.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="3 축제 상세입력">
    <meta property="og:type" content="website">
<!--nicepage  -->


<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){
	
	max();
	
	
	
});//$(document) ::: END


function max(){
	$.ajax({
		url:'max',
		type:'get',
		data: { 'mem_id' : $('#mem_id').val()},
		dataType: 'json',
		success:function(result){
		
			alert("lf_code 가져오기");
		
			
		
			$('#lf_code').val(result);
		
			console.log("통신결과");
			console.log(result);
			
			master_putPt();
			
		},
		error: function(){alert('틀림');}
		
		
	});//에이젝스 끝
}

function master_putPt(){
	
	$.ajax({
		url:'master_putPt',
		type:'get',
		data : {'mem_id' : $('#mem_id').val(), 'lf_code' : $('#lf_code').val()},
		success: function(result){
			alert('방장 파티테이블에 미리 넣기');
		},error: function(){alert('틀림');}
		
	});//에이젝스 끝
	
	
}


</script>



















<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="u-body u-xl-mode" >
 

 <input type="text" id="mem_id" value="${mem_id}">
 <br>
  <input type="text" id="lf_code" name="lf_code" value="${lf_code}">
 
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
            
            
            
            <!--폼태그-->                                                                                                                                     <!--폼태그-->
         
 <br/>       
        		<!--이미지 넘기려면 enctype="multipart/form-data" TAG 안에 부여  -->
              <form action="savelefe2update" method="post" enctype="multipart/form-data">                   
             대표 이미지 선택 : <input type="file" name="file">                    
           <br/>
          
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
         		<input id="saveinfo" type="submit" class="u-active-palette-2-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-2-light-1 u-palette-2-base u-radius-10 u-btn-1" name="letfe-next2" value="저  장" class="u-form-control" > <!-- 최종온클릭이동 -->
 			    
 			   </div>
			</form>
 			   
 			   




        <!--       다중 업로드...
              <form action="upload_ok2" method="post" enctype="multipart/form-data">
		다중 이미지 선택 : <input type="file" multiple="multiple" name="files"> 
					<input type="submit" value="저장">
				</form> -->
              
              
              
              
              
            </div>
      

          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-4574">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>
    
    
    
    
    
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Offline Website Builder</span>
      </a>. 
    </section>
  
</body></html>
