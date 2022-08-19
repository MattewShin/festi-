<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="글쓰기">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="resources/blogpage/css/writeNicepage.css" media="screen">
<link rel="stylesheet" href="resources/blogpage/css/writeBlog.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/blogpage/js/writeJquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/blogpage/js/writeNicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.11, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
     <!-- css 추가 -->
 	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/flaticon.css">
	<link rel="stylesheet" href="resources/css/tiny-slider.css">
	<link rel="stylesheet" href="resources/css/glightbox.min.css">
	<link rel="stylesheet" href="resources/css/aos.css">
	<link rel="stylesheet" href="resources/css/style.css">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "resources/blogpage/images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-9d24"><div class="u-clearfix u-sheet u-sheet-1">
        
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-grey-10 u-text-hover-palette-2-base" href="index" style="padding: 10px 20px;"><h2>Festi+</h2></a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="index">Festi+</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-center u-clearfix u-image u-section-1" id="sec-ad16" data-image-width="1280" data-image-height="853">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-df1a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-default u-text-1">글쓰기</h1>
        <div class="u-form u-form-1">
        
          <form action="blogUpdate" method="POST" class="u-clearfix u-form-spacing-15 u-inner-form" style="padding: 15px;" name="form" enctype="multipart/form-data">
            <div class="u-form-group u-label-none">
              <label for="text-2775" class="u-form-control-hidden u-label"></label>
              <input type="hidden" name='post_code' value='${post.post_code}'>
              <input type="text" id="text-2775" name="post_title" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" placeholder="제목을 입력해 주세요." value='${post.post_title}'>
            </div>
            <div class="u-form-group u-form-select u-label-none">
              <label for="select-3720" class="u-label">Dropdown</label>
              <div class="u-form-select-wrapper">
                <select id="select-3720" name="postkind_name" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
                  <option value="자유">자유</option>
                  <option value="축제">축제</option>
                  <option value="렛츠페스티벌">렛츠페스티벌</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-label-none">
              <label for="text-cc58" class="u-label">Input</label>
              <input type="file" placeholder="파일첨부" id="text-cc58" name="file" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
            </div>
            <div class="u-form-group u-form-textarea u-label-none">
              <label for="textarea-d6ab" class="u-label">Textarea</label>
              <textarea rows="4" cols="50" id="textarea-d6ab" name="post_content" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" placeholder="내용을 입력해주세요.">${post.post_content}</textarea>
            </div>
            <div class="u-align-right u-form-group u-form-submit">
              <!-- <a href="perBlog" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-radius-10 u-btn-1">등록</a> -->
              <input type="submit" value="수정" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-radius-10 u-btn-1">
            </div>
            <!-- <div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
            <div class="u-form-send-error u-form-send-message">Unable to send your message. Please fix errors then try again.</div> -->
            <!-- <input type="hidden" value="" name="recaptchaResponse"> -->
          </form>
        </div>
      </div>
    </section>
    
    
<!--     <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-f1b3"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/css-templates" target="_blank">
        <span>CSS Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/static-site-generator" target="_blank">
        <span>Static Website Generator</span>
      </a>. 
    </section> -->

	<!-- 푸터 시작 -->
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
	<!-- 푸터 끝 -->  
</body></html>