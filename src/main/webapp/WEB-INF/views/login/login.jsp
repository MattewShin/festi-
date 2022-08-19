<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>

	<meta name="google-signin-client_id" content="417930366748-7e04n3abfq5g559gdmrbhtp5ofo6j0f6.apps.googleusercontent.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Festi +사이트에 어서오세요">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="resources/login/css/loginNicepage.css" media="screen">
<link rel="stylesheet" href="resources/login/css/login.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/login/js/loginJquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/login/js/loginNicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "resources/login/images/default-logo.png"
}</script>

<script type="text/javascript" src = 'http://code.jquery.com/jquery-latest.min.js'></script>

<script type="text/javascript">
$(function(){

	/* $('#googleLoginBtn').click(function(){
		$.ajax({
	        url: 'googleLogin',
	        type: 'get',
	    }).done(function (res) {
	        location.href = res;
	    });
	});
	
	function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	    });
	  } */
	
	/* $('#loginBtn').click(function() {
		let mem_id = $('#mem_id').val();
		let mem_pwd = $('#mem_pwd').val();
		console.log(mem_id);
		console.log(mem_pwd);
		
		$.ajax({
			type : 'post',
			url : 'loginCheck',
			data : {mem_id : mem_id, mem_pwd : mem_pwd},
			dataType : 'text',
			success : function(result){
				if(result == 'fail'){
					alert("로그인 실패");
					
				}
				else{
					alert("로그인 성공");
					location.href="index";
				}
				
			},
			error : function(err){
				alert('ajax 통신 실패' + err);
				console.log(err);
				
			}
			
		});	//end of ajax
		
	});	//end of click */
});	//end of function
</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-overlap-contrast u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-d932"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="resources/login/images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-5 u-text-hover-palette-2-base" href="index" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-5 u-text-hover-palette-2-base" href="festival" style="padding: 10px 20px;">FESTIVAL</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-5 u-text-hover-palette-2-base" href="letfe" style="padding: 10px 20px;">LET'S FESTIVAL</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-5 u-text-hover-palette-2-base" href="aon" style="padding: 10px 20px;">AFTER-ONLINE</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-5 u-text-hover-palette-2-base" href="blog" style="padding: 10px 20px;">BLOG</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="index">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="festival">FESTIVAL</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="letfe">LET'S FESTIVAL</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="aon">AFTER-ONLINE</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="blog">BLOG</a></li>
</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-shading u-uploaded-video u-video u-section-1" id="sec-b9d9">
      <div class="u-background-video u-expanded" style="filter: brightness(0.6);">
        <div class="embed-responsive">
          <video src="resources/login/videos/loginMovie.mp4" class="embed-responsive-item" data-autoplay="1" loop="loop" muted="muted" autoplay="autoplay" playsinline>
            <!-- <source src="resources/login/videos/loginMovie.mp4" type="video/undefined">
            <p>Your browser does not support HTML5 video.</p> -->
          </video>
        </div>
      </div>
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-align-center u-text u-text-default u-text-1">Festi +<br>사이트에 어서오세요
        </h1>
        <div class="u-form u-grey-80 u-radius-10 u-form-1">
          <form action='loginCheck' method="POST" class="u-clearfix u-form-spacing-10 u-inner-form" source="custom" id="loginForm" style="padding: 10px;">
            <div class="u-form-group u-label-none">
              <label for="name-35b8" class="u-custom-font u-label u-text-font u-label-1">아이디</label>
              <input type="text" placeholder="아이디" id="mem_id" name="mem_id" class="u-border-1 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="required" style="ime-mode: inactive;">
            </div>
            <div class="u-form-group u-label-none">
              <label for="email-35b8" class="u-custom-font u-label u-text-font u-label-2">비밀번호</label>
              <input type="password" placeholder="비밀번호" id="mem_pwd" name="mem_pwd" class="u-border-1 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="required">
            </div>
            <div class="u-align-right u-form-group u-form-submit u-label-none">
            <!-- 구글 로그인 구현 버튼 -->
            	<!-- <div id="googleLoginBtn" style="cursor: pointer">
			<img id="googleLoginImg" src="resources/blogpage/images/btn_google_signin_dark_normal_web.png">
		</div>
		<a href="index" onclick="signOut();">Sign out</a> -->
              <input type="submit" value="로그인" id="loginBtn" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-radius-10 u-btn-1">
              <!-- <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-radius-10 u-btn-1">로그인<br> -->
            </div>
            <!-- <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse"> -->
          </form>
        </div>
        <a href="https://nicepage.com/k/card-html-templates" class="u-border-2 u-border-grey-10 u-btn u-btn-round u-button-style u-hover-custom-color-1 u-none u-radius-10 u-text-hover-white u-btn-2">아이디 찾기</a>
        <a href="https://nicepage.com/c/education-website-templates" class="u-border-2 u-border-grey-10 u-btn u-btn-round u-button-style u-hover-custom-color-1 u-none u-radius-10 u-text-hover-white u-btn-3">비밀번호 찾기</a>
        <a href="regist" class="u-border-2 u-border-grey-10 u-btn u-btn-round u-button-style u-hover-custom-color-1 u-none u-radius-10 u-text-hover-white u-btn-4">회원가입</a>
      </div>
      
      	<!-- 카카오 로그인 -->
		<script type="text/javascript"
			src="https://developers.kakao.com/sdk/js/kakao.min.js"
			charset="utf-8"></script>
		<!-- <script type="text/javascript">
			$(document).ready(function() {
				Kakao.init('36e2e10a1097f8f8b443f04606fc6b1e');
				Kakao.isInitialized();
			});

			function loginWithKakao() {
				Kakao.Auth.authorize({
					redirectUri : 'http://localhost:8080/zfinalz/kakaoLogin'
				}); // 등록한 리다이렉트uri 입력
			}
		</script>
 -->

<!-- 카카오 로그인 -->
<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=36e2e10a1097f8f8b443f04606fc6b1e&redirect_uri=http://localhost:8080/zfinalz/kakaoLogin&response_type=code"> 
	<!-- REST_API키 및 REDIRECT_URi는 본인걸로 수정하세요 -->
	<!-- 저는 redirect_uri을 http://localhost:8080/member/kakaoLogin로 했습니다. -->
	<!-- 본인걸로 수정 시 띄어쓰기 절대 하지 마세요. 오류납니다. -->
	
		<img src="${pageContext.request.contextPath}/resources/login/images/kakao_login_medium_wide.png" style="height: 42px; position: absolute; bottom: 31px; left: 806px;" >
      		<!-- 이미지는 카카오 개발자센터에서 제공하는 login 이미지를 사용했습니다. -->
		
 </a> 
      
      
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-8ec6"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.cc" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  
</body></html>