<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
  <title>Directone - Free Bootstrap 5 Template by Colorlib</title>
  <link rel="stylesheet" href="resources/style/stylecss.css" type="text/css">
<script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
<script src="resources/js/*.js"></script>
<script type="text/javascript"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

  <link rel="stylesheet" href="resources/festival/css/animate.css">
  <link rel="stylesheet" href="resources/festival/css/flaticon.css">
  <link rel="stylesheet" href="resources/festival/css/tiny-slider.css">
  <link rel="stylesheet" href="resources/festival/css/glightbox.min.css">
  <link rel="stylesheet" href="resources/festival/css/aos.css">
  <link rel="stylesheet" href="resources/festival/css/style3.css">
  <link rel="stylesheet" href="resources/festival/css/nicepage.css">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
  
  </head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script>
$(function(){
	getLcatList();
	

		$('#fest_lcatname').change(function(){
			let param = $('#fest_lcatname').val();
			console.log(param);
			
			$.ajax({
				type :'get',
				url : 'scat',
				data : {'lcat' : param},
				dataType : 'json',
				success : function(result){
					let sCat = $('#fest_scatname');
					sCat.empty();
					
					for(i of result){
						let list = $('<option>'+i+'</option>');
						sCat.append(list);
					}
					
				}
			})
		});
	
});

function getLcatList(){
	$.ajax({
		type :'get',
		url : 'lcat',
		dataType : 'json',
		success : function(result){
			console.log(result);
			let lCat = $('#fest_lcatname');
			lCat.empty();
			
			for(i of result){
				let list = $('<option>'+i+'</option>');
				lCat.append(list);
			}
		}
	})
}

</script>
<!--   <div class="py-1 top-wrap">
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
  </div> -->
  
  
  
   <nav class="navbar navbar-expand-lg  ftco-navbar-light">
    <div class="container-xl">
      <a class="navbar-brand d-flex align-items-center" href="index">
        <span class="flaticon flaticon-compass"></span>
        <span class="">Festi+<small>Festival in now</small></span>
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
       <!--  <p class="mb-0"><a href="#" class="btn btn-primary rounded"><span class="ion-ios-add"></span> Add Listing</a></p> -->
      </div>
    </div>
  </nav>
  
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/festival/images/image_3.jpg');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 pt-5 text-center">
          <h1 class="mb-0 bread">축제 등록</h1>
        </div>
      </div>
    </div>
  </section>
        
 </script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="u-align-center u-clearfix u-section-1" id="sec-ab78">
      <div class="u-clearfix u-sheet u-valign-top u-sheet-1">
        <div class="u-expanded-width u-form u-form-1">
          <form action="insertFestival" enctype="multipart/form-data" method="post" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;">
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="fest_name" class="u-label">제목</label>
              <input type="text" placeholder="제목" id="fest_name" name="fest_name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
            </div>
            <div class="u-form-email u-form-group u-form-group-2">
              <label for="fest_host" class="u-label">주최사</label>
              <input type="text" placeholder="주최사" id="fest_host" name="fest_host" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
            </div>
            <div class="u-form-group u-form-select u-form-group-3">
              <label for="fest_lcatname" class="u-label">축제대분류</label>
              <div class="u-form-select-wrapper">
                <select id="fest_lcatname" name="fest_lcatname" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
                  <option value="none">축제대분류</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-form-select u-form-group-4">
              <label for="fest_scatname" class="u-label">축제소분류</label>
              <div class="u-form-select-wrapper">
                <select id="fest_scatname" name="fest_scatname" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
                  <option value="none">축제소분류</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="fest_place" class="u-label">장소명</label>
              <input type="text" placeholder="장소명" id="fest_place" name="fest_place" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
            </div>
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="fest_tel" class="u-label">연락처</label>
              <input type="text" placeholder="연락처" id="fest_tel" name="fest_tel" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
            </div>
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="fest_email" class="u-label">이메일</label>
              <input type="text" placeholder="이메일" id="fest_email" name="fest_email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
            </div>
            <div class="u-form-date u-form-group u-form-group-5">
             	<input type="hidden" id="sample2_postcode" placeholder="우편번호" width=70%>
				<input type="button" onclick="sample2_execDaumPostcode()" value="주소 찾기" width=30%><br>
				<input type="text" id="fest_sim_addr" name="fest_sim_addr" placeholder="주소" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
				<input type="text" id="fest_detail_addr" name="fest_detail_addr" placeholder="상세주소" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
				<input type="hidden" id="sample2_extraAddress" placeholder="참고항목">
            </div>
            <div class="u-form-date u-form-group u-form-group-5">
              <label for="fest_startday" class="u-label">시작일</label>
              <input type="date" id="fest_startday" name="fest_startday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" >
            </div>
            <div class="u-form-date u-form-group u-form-group-6">
              <label for="fest_endday" class="u-label">종료일</label>
              <input type="date" id="fest_endday" name="fest_endday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" >
            </div>
            <div class="u-form-date u-form-group u-form-group-6">
              <label for="files" class="u-label">이미지 파일</label>
              <input type="file" id="files" name="files" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" multiple="multiple">
            </div>
            <div class="u-form-group u-form-message u-form-group-7">
              <label for="fest_content" class="u-label">내용</label>
              <textarea placeholder="내용" rows="4" cols="50" id="fest_content" name="fest_content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required=""></textarea>
            </div>
            <div class="u-align-center u-form-group u-form-submit u-form-group-8">
              <input type="submit" value="Submit" class="u-btn u-btn-submit u-button-style"/>
            </div>
            <div class="u-form-send-message u-form-send-success">등록되었습니다.</div>
            <div class="u-form-send-error u-form-send-message">오류 발생!</div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
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


<script src="resources/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/rellax.min.js"></script>
<script src="resources/js/aos.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="resources/js/google-map.js"></script>
<script src="resources/js/main.js"></script>


<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("fest_sim_addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("fest_detail_addr").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
</body>

</html>