<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Directone - Free Bootstrap 5 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

  <link rel="stylesheet" href="resources/blogpage/css/animate.css">
  <link rel="stylesheet" href="resources/blogpage/css/flaticon.css">
  <link rel="stylesheet" href="resources/blogpage/css/tiny-slider.css">
  <link rel="stylesheet" href="resources/blogpage/css/glightbox.min.css">
  <link rel="stylesheet" href="resources/blogpage/css/aos.css">
  <link rel="stylesheet" href="resources/blogpage/css/style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" src='resources/blogpage/js/blogListDW.js'></script>
<script type="text/javascript" src='http://code.jquery.com/jquery-latest.min.js'></script>
<script type="text/javascript" src='resources/blogpage/js/ajaxPost.js'></script>

</head>
<body>

	<nav class="navbar navbar-expand-lg  ftco-navbar-light">
		<div class="container-xl">
			<a class="navbar-brand d-flex align-items-center" href="index"> <span
				class="flaticon flaticon-compass"></span> <span class="">Festi+<small>Festival In Now</small>
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
		style="background-image: url('resources/blogpage/images/bg_3.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 pt-5 text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index">Home<i
								class="fa fa-chevron-right"></i></a></span> <span>Blog <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<a href="writeBlog"><h1 class="mb-0 bread">축제, 렛페 등 다양한 리뷰들을 만나보세요!</h1></a>
				</div>
			</div>
		</div>
	</section>

	<!-- 검색섹션 추가 -->
	<section class="ftco-section ftco-no-pb bg-light">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 mb-5 pb-md-3 heading-section">
          <div class="text-center w-100">
            <h2 class="mb-3">블로그 글들을 검색해 보세요!</h2>
          </div>
          <form class="search-property-1 mt-md-4" action = "blog?category=${category}&keyword=${keyword}">
            <div class="row g-0">
              <div class="col-md d-flex">
                <div class="form-group p-3 border-0">
                  <div class="form-field">
                    <div class="icon"><span class="fa fa-search"></span></div>
                    <input type="text" class="form-control" placeholder="검색어를 입력해 주세요." id='keyword' name='keyword'>
                  </div>
                </div>
              </div>
              <div class="col-md d-flex">
                <div class="form-group p-3">
                  <div class="form-field">
                    <div class="select-wrap">
                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
                      <select name="category" id='category' class="form-control">
                        <option value="nope">카테고리를 선택해 주세요.</option>
                        <option value="mem_id">작성자</option>
                        <option value="post_title">제목</option>
                        <option value="post_content">내용</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>	
              <div class="col-md d-flex" id = 'searchBtn'>
                <div class="form-group d-flex w-100 border-0">
                  <div class="form-field w-100 align-items-center d-flex align-items-stretch">
                    <input type='submit' class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3" value = '검색'>
                    <!-- <a href="blog" class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3"><span><i class="ion-ios-search"></i> Search</span></a> -->
                  </div>
                </div>	
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
	
	

	<section class="ftco-section bg-light">
		<div class="container-xl">
			<div class="row">
			
				<!-- 반복문으로 생성되는 블로그 리스트 -->
				<c:forEach items="${allList}" var="allList">
				<div class="col-md-3 d-flex">
					<div class="blog-entry justify-content-end" data-aos="fade-up"
						data-aos-duration="1000" data-aos-delay="100">
						<a href="gotoDetail?post_code=${allList.post_code}" class="block-20 img d-flex align-items-end gotoDetail" value='bl1' style="background-image: url('resources/blogpage/upload/${allList.img_save}');">
							<div class="list-team d-flex align-items-center mb-4">
								<div class="d-flex align-items-center">
									<div class="img" style="background-image: url(resources/blogpage/images/person_1.jpg);"></div>
									<h3 class="ml-2 mb-0">${allList.mem_id}</h3>
								</div>
								<div class="text-right">
									<span class="ion-ios-heart-empty"></span>
								</div>
							</div>
						</a>
						<div class="text">
							<p class="meta">
								<span>${allList.post_date}</span><a href="#">3 Comments</a>
							</p>
							<h3 class="heading mb-3">
								<a href="#">${allList.post_title}</a>
							</h3>
							<p>${allList.post_content}</p>
						</div>
					</div>
				</div>
				</c:forEach>
				
			</div>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<!-- <li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li> -->
							<c:forEach var='i' begin='1' end='${totalPage }'>
								<li><a href='blog?pageNum=${i}'>${i}</a></li>
							</c:forEach>
						</ul>
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


	<script src="resources/blogpage/js/bootstrap.bundle.min.js"></script>
	<script src="resources/blogpage/js/tiny-slider.js"></script>
	<script src="resources/blogpage/js/glightbox.min.js"></script>
	<script src="resources/blogpage/js/rellax.min.js"></script>
	<script src="resources/blogpage/js/aos.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/blogpage/js/google-map.js"></script>
	<script src="resources/blogpage/js/main.js"></script>



</body>
</html>