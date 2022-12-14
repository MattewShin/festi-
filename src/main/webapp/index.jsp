<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String mem_id = (String) session.getAttribute("mem_id");
	out.print(mem_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!--방금 추가함   -->
<link rel="stylesheet" href="resources/style/stylecss.css" type="text/css">
<script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
<script src="resources/js/*.js"></script>

<!--위에꺼추가  -->

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/flaticon.css">
	<link rel="stylesheet" href="resources/css/tiny-slider.css">
	<link rel="stylesheet" href="resources/css/glightbox.min.css">
	<link rel="stylesheet" href="resources/css/aos.css">
	<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
<script type="text/javascript">
window.onload=function(){
	location.href="index";
	};
</script>

<!-- <div class="py-1 top-wrap">
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
 
	<section class="hero-wrap" style="background-image: url('resources/images/bg_1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-lg-8 text-center pb-5">
					<div class="row justify-content-center">
						<div class="col-lg-9">
							<h1 class="">Festi+ 오신 것을 환영합니다!</h1>
							<p>마음에 드는 축제가 없으면 너님이 직접 만드세요.</p>
						</div>
					</div>
					<form action="#" class="search-property-1 mt-md-5">
						<div class="row g-0">
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="fa fa-search"></span></div>
										<input type="text" class="form-control" placeholder="What are you looking for?">
									</div>
								</div>
							</div>
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="icon"><span class="ion-ios-pin"></span></div>
										<input type="text" class="form-control" placeholder="Search Location">
									</div>
								</div>
							</div>
							<div class="col-md d-flex">
								<div class="form-group p-3">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="" id="" class="form-control">
												<option value="">All Categories</option>
												<option value="">Food &amp; Drinks</option>
												<option value="">Hotel</option>
												<option value="">Shopping</option>
												<option value="">Beauty</option>
												<option value="">Fitness</option>
												<option value="">Bar &amp; Club</option>
												<option value="">Games</option>
												<option value="">Places</option>
												<option value="">Circus</option>
												<option value="">Theater</option>
												<option value="">Sports</option>
												<option value="">Health</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md d-flex">
								<div class="form-group d-flex w-100 border-0">
									<div class="form-field w-100 align-items-center d-flex align-items-stretch">
										<a href="#" class="btn btn-primary d-block w-100 d-flex align-items-center justify-content-center py-3"><span><i class="ion-ios-search"></i> Search</span></a>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
		<div class="container">
			<div class="row g-0">
				<div class="col-md-12 services-wrap">
					<div class="row g-3">
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-food-and-drink"></span></div>
								<div class="text">
									<h2>Food &amp; Drink</h2>
									<p class="list"><span>103</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
							<a href="#" class="services active">
								<div class="icon"><span class="flaticon-review"></span></div>
								<div class="text">
									<h2>Hotels</h2>
									<p class="list"><span>40</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-online-shopping"></span></div>
								<div class="text">
									<h2>Shopping</h2>
									<p class="list"><span>100</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-cream"></span></div>
								<div class="text">
									<h2>Beauty</h2>
									<p class="list"><span>36</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-diet"></span></div>
								<div class="text">
									<h2>Fitness</h2>
									<p class="list"><span>30</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-night-club"></span></div>
								<div class="text">
									<h2>Bar &amp; Club</h2>
									<p class="list"><span>12</span> Listings</p>
								</div>
							</a>
						</div>

						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-joystick"></span></div>
								<div class="text">
									<h2>Games</h2>
									<p class="list"><span>103</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-meeting-point"></span></div>
								<div class="text">
									<h2>Places</h2>
									<p class="list"><span>40</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-amusement-park"></span></div>
								<div class="text">
									<h2>Circus</h2>
									<p class="list"><span>100</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-cinema"></span></div>
								<div class="text">
									<h2>Theater</h2>
									<p class="list"><span>36</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-sport"></span></div>
								<div class="text">
									<h2>Sports</h2>
									<p class="list"><span>30</span> Listings</p>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-lg-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
							<a href="#" class="services">
								<div class="icon"><span class="flaticon-healthy-food"></span></div>
								<div class="text">
									<h2>Health</h2>
									<p class="list"><span>12</span> Listings</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8 heading-section text-center mb-5" data-aos="fade-up" data-aos-duration="1000">
					<span class="subheading">Our Listing</span>
					<h2 class="mb-4">인기축제</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
					<div class="listing-wrap">
						<a href="resources/images/list-1.jpg" class="img img-property d-flex align-items-center justify-content-center glightbox" style="background-image: url(resources/images/list-1.jpg);">
							<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
						</a>
						<div class="text text-center">
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-food-and-drink"></span>
							</div>
							<span class="subheading">Food &amp; Drinks</span>
							<h3><a href="#">Japanese Restaurant</a></h3>
							<ul class="">
								<li><p><span class="ion-ios-pin"></span> Suite 721 New York NY 10016</p></li>
								<li><p><span class="fa fa-phone"></span> +00 123 456 7890</p></li>
							</ul>
							<div class="info-wrap2 d-flex align-items-center">
								<p class="review"><span class="rev">Review <small>5.0/5</small></span> <span class="ico ion-ios-star"></span><small>(100)</small></p>
								<p class="heart">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="ion-ios-heart-empty"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
					<div class="listing-wrap">
						<a href="resources/images/list-2.jpg" class="img img-property d-flex align-items-center justify-content-center glightbox" style="background-image: url(resources/images/list-2.jpg);">
							<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
						</a>
						<div class="text text-center">
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-review"></span>
							</div>
							<span class="subheading">Hotel</span>
							<h3><a href="#">Harbor Lights Hotel</a></h3>
							<ul class="">
								<li><p><span class="ion-ios-pin"></span> Suite 721 New York NY 10016</p></li>
								<li><p><span class="fa fa-phone"></span> +00 123 456 7890</p></li>
							</ul>
							<div class="info-wrap2 d-flex align-items-center">
								<p class="review"><span class="rev">Review <small>5.0/5</small></span> <span class="ico ion-ios-star"></span><small>(100)</small></p>
								<p class="heart">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="ion-ios-heart-empty"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
					<div class="listing-wrap">
						<a href="resources/images/list-3.jpg" class="img img-property d-flex align-items-center justify-content-center glightbox" style="background-image: url(resources/images/list-3.jpg);">
							<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
						</a>
						<div class="text text-center">
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-online-shopping"></span>
							</div>
							<span class="subheading">Shopping</span>
							<h3><a href="#">MS Center Mall of Asia</a></h3>
							<ul class="">
								<li><p><span class="ion-ios-pin"></span> Suite 721 New York NY 10016</p></li>
								<li><p><span class="fa fa-phone"></span> +00 123 456 7890</p></li>
							</ul>
							<div class="info-wrap2 d-flex align-items-center">
								<p class="review"><span class="rev">Review <small>5.0/5</small></span> <span class="ico ion-ios-star"></span><small>(100)</small></p>
								<p class="heart">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="ion-ios-heart-empty"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
					<div class="listing-wrap">
						<a href="resources/images/list-4.jpg" class="img img-property d-flex align-items-center justify-content-center glightbox" style="background-image: url(resources/images/list-4.jpg);">
							<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
						</a>
						<div class="text text-center">
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-food-and-drink"></span>
							</div>
							<span class="subheading">Gym Fitness</span>
							<h3><a href="#">Maxout Fitness Gym</a></h3>
							<ul class="">
								<li><p><span class="ion-ios-pin"></span> Suite 721 New York NY 10016</p></li>
								<li><p><span class="fa fa-phone"></span> +00 123 456 7890</p></li>
							</ul>
							<div class="info-wrap2 d-flex align-items-center">
								<p class="review"><span class="rev">Review <small>5.0/5</small></span> <span class="ico ion-ios-star"></span><small>(100)</small></p>
								<p class="heart">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="ion-ios-heart-empty"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-intro bg-light">
		<div class="container">
			<div class="row g-0">
				<div class="col-md-4 d-flex align-items-stretch">
					<div class="img w-100" style="background-image: url(resources/images/intro.jpg);"></div>
				</div>
				<div class="col-md-8 aside-stretch aside">
					<div class="row py-md-4">
						<div class="col-md-8 d-flex align-items-center ">
							<div class="text pt-5 pb-md-5 pb-3 pl-md-5 px-4">
								<div class="subheading">Special Offers</div>
								<h2>We Have Special Offers Every Now and Then</h2>
							</div>
						</div>
						<div class="col-md-4 d-flex align-items-center">
							<div class="px-4 px-md-0 pb-4 pb-md-0">
								<p><a href="#" class="btn btn-darken py-3 px-4">Show Special Offers</a></p>
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
				<div class="col-md-8 heading-section text-center mb-5" data-aos="fade-up" data-aos-duration="1000">
					<span class="subheading">Listing</span>
					<h2 class="mb-4">축제 정보</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
					<div class="listing-wrap">
						<a href="resources/images/list-5.jpg" class="img img-property d-flex align-items-center justify-content-center glightbox" style="background-image: url(resources/images/list-5.jpg);">
							<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
						</a>
						<div class="text text-center">
						
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-food-and-drink"></span>
							</div>
							<span class="subheading">Beauty</span>
							<h3><a href="#">Japanese Restaurant</a></h3>
							<ul class="">
								<li><p><span class="ion-ios-pin"></span> Suite 721 New York NY 10016</p></li>
								<li><p><span class="fa fa-phone"></span> +00 123 456 7890</p></li>
							</ul>
							<div class="info-wrap2 d-flex align-items-center">
								<p class="review"><span class="rev">Review <small>5.0/5</small></span> <span class="ico ion-ios-star"></span><small>(100)</small></p>
								<p class="heart">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="ion-ios-heart-empty"></span></a>
								</p>
							</div>
							
						</div>
					</div>
				</div>
			</div>
				
		
	</section>

	<section class="ftco-section ftco-about-section ftco-no-pt ftco-no-pb"> 						
		<div class="container-xl">
			<div class="row g-xl-5">
				<div class="col-md-5 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
				<c:forEach items="${img}" var="img">
					<div class="img w-100" style="background-image: url('resources/letfe/upload/${img.img_save}')"></div>
				</c:forEach>
				</div>
 				<c:forEach items="${letfe}" var="letfe">   
				<div class="col-md-7 py-5 heading-section" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
					<div class="py-md-5">
						<span class="subheading">Let's Festival</span>
						<h2 class="mb-4">${letfe.lf_name}</h2>
						<p>${letfe.lf_content}</p>
						<div class="row py-5 g-2">

							<div class="col-md-6 col-lg-3 d-flex align-items-stretch">
								<div class="counter-wrap" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
									<div class="text">
										<span class="d-block number gradient-text"><span id="count2" class="counter" data-count="${letfe.lf_party}"></span></span>
										<p>참여신청인원</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 d-flex align-items-stretch">
								<div class="counter-wrap" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
									<div class="text">
										<span class="d-block number gradient-text"><span id="count2" class="counter" data-count="${letfe.lf_party_max}"></span></span>
										<p>참여마감인원</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
 					</c:forEach>  
			</div>
		</div>
	</section>



	<section class="ftco-section testimony-section bg-light">
		<div class="container-xl">
			<div class="row justify-content-center pb-4">
				<div class="col-md-7 text-center heading-section" data-aos="fade-up" data-aos-duration="1000">
					<span class="subheading">Testimonial</span>
					<h2 class="mb-3">에프터 온라인 물품</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
					<div class="carousel-testimony">
						<div class="item">
							<div class="testimony-wrap">
								<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
									<div class="text">
										<p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
										<div class="d-flex align-items-center">
											<div class="user-img" style="background-image: url(resources/images/person_1.jpg)"></div>
											<div class="pl-3 tx">
												<p class="name">Roger Scott</p>
												<span class="position">Marketing Manager</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap">
									<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
										<div class="text">
											<p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
											<div class="d-flex align-items-center">
												<div class="user-img" style="background-image: url(resources/images/person_2.jpg)"></div>
												<div class="pl-3 tx">
													<p class="name">Roger Scott</p>
													<span class="position">Marketing Manager</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="testimony-wrap">
										<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
											<div class="text">
												<p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
												<div class="d-flex align-items-center">
													<div class="user-img" style="background-image: url(resources/images/person_3.jpg)"></div>
													<div class="pl-3 tx">
														<p class="name">Roger Scott</p>
														<span class="position">Marketing Manager</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="testimony-wrap">
											<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
												<div class="text">
													<p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
													<div class="d-flex align-items-center">
														<div class="user-img" style="background-image: url(resources/images/person_1.jpg)"></div>
														<div class="pl-3 tx">
															<p class="name">Roger Scott</p>
															<span class="position">Marketing Manager</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="testimony-wrap">
												<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
													<div class="text">
														<p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
														<div class="d-flex align-items-center">
															<div class="user-img" style="background-image: url(resources/images/person_2.jpg)"></div>
															<div class="pl-3 tx">
																<p class="name">Roger Scott</p>
																<span class="position">Marketing Manager</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

						<section class="img v-section ftco-section">
							<div class="overlay"></div>
							<div class="container-xl">
								<div class="row justify-content-center">
									<div class="col-md-8 heading-section heading-section-white text-center mb-5" data-aos="fade-up" data-aos-duration="1000">
										<span class="subheading">Let's Find Out</span>
										<h2 class="mb-4">축제 홍보 영상 ( 밑에 링크 연결 정도? )</h2>
									</div>
								</div>
								<div class="row justify-content-center">
									<div class="col-md-12" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
										<div class="vid-img img d-flex align-items-center justify-content-center" style="background-image: url(resources/images/bg_2.jpg);">
											<a href="https://vimeo.com/115041822" class="icon-video glightbox d-flex align-items-center justify-content-center">
												<span class="ion-ios-play"></span>
											</a>
										</div>
									</div>
								</div>
								<div class="row m-md-5 mt-4 pt-lg-4">
									<div class="col-md-3 d-flex align-items-stretch">
										<div class="services text-center" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
											<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
											<div class="text">
												<h2>1. Choose A <br>Category</h2>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 d-flex align-items-stretch">
										<div class="services text-center" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
											<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
											<div class="text">
												<h2>2. Find What You <br>Want</h2>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 d-flex align-items-stretch">
										<div class="services text-center" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
											<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
											<div class="text">
												<h2>3. Select The Best <br>Place</h2>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 d-flex align-items-stretch">
										<div class="services text-center" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
											<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
											<div class="text">
												<h2>4. Explore The <br>Place</h2>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

						<section class="ftco-section bg-light">
							<div class="container-xl">
								<div class="row justify-content-center mb-5">
									<div class="col-md-7 heading-section text-center" data-aos="fade-up" data-aos-duration="1000">
										<span class="subheading">Our Blog</span>
										<h2>미정 ( 삭제도 가능 )</h2>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3 d-flex">
										<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
											<a href="blog-single.html" class="block-20 img d-flex align-items-end" style="background-image: url('resources/images/image_1.jpg');">
												<div class="list-team d-flex align-items-center mb-4">
													<div class="d-flex align-items-center">
														<div class="img" style="background-image: url(resources/images/person_1.jpg);"></div>
														<h3 class="ml-2 mb-0">John Dorf</h3>
													</div>
													<div class="text-right">
														<span class="ion-ios-heart-empty"></span>
													</div>
												</div>
											</a>
											<div class="text">
												<p class="meta"><span>Dec. 05, 2020</span><a href="#">3 Comments</a></p>
												<h3 class="heading mb-3"><a href="#">Explore The Best Restaurant in New York</a></h3>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 d-flex">
										<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
											<a href="blog-single.html" class="block-20 img d-flex align-items-end" style="background-image: url('resources/images/image_2.jpg');">
												<div class="list-team d-flex align-items-center mb-4">
													<div class="d-flex align-items-center">
														<div class="img" style="background-image: url(resources/images/person_1.jpg);"></div>
														<h3 class="ml-2 mb-0">John Dorf</h3>
													</div>
													<div class="text-right">
														<span class="ion-ios-heart-empty"></span>
													</div>
												</div>
											</a>
											<div class="text">
												<p class="meta"><span>Dec. 05, 2020</span><a href="#">3 Comments</a></p>
												<h3 class="heading mb-3"><a href="#">Explore The Best Restaurant in New York</a></h3>
												<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 d-flex">
										<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
											<a href="blog-single.html" class="block-20 img d-flex align-items-end" style="background-image: url('resources/images/image_3.jpg');">
												<div class="list-team d-flex align-items-center mb-4">
													<div class="d-flex align-items-center">
														<div class="img" style="background-image: url(resources/images/person_1.jpg);"></div>
														<h3 class="ml-2 mb-0">John Dorf</h3>
													</div>
													<div class="text-right">
														<span class="ion-ios-heart-empty"></span>
													</div>
												</div>
											</a>
											<div class="text">
												<p class="meta"><span>Dec. 05, 2020</span><a href="#">3 Comments</a></p>
												<h3 class="heading mb-3"><a href="#">Explore The Best Restaurant in New York</a mb-3></h3>
													<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>              
												</div>
											</div>
										</div>
										<div class="col-md-3 d-flex">
											<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
												<a href="blog-single.html" class="block-20 img d-flex align-items-end" style="background-image: url('resources/images/image_4.jpg');">
													<div class="list-team d-flex align-items-center mb-4">
														<div class="d-flex align-items-center">
															<div class="img" style="background-image: url(resources/images/person_1.jpg);"></div>
															<h3 class="ml-2 mb-0">John Dorf</h3>
														</div>
														<div class="text-right">
															<span class="ion-ios-heart-empty"></span>
														</div>
													</div>
												</a>
												<div class="text">
													<p class="meta"><span>Dec. 05, 2020</span><a href="#">3 Comments</a></p>
													<h3 class="heading mb-3"><a href="#">Explore The Best Restaurant in New York</a mb-3></h3>
														<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>              
													</div>
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


									<script src="resources/js/bootstrap.bundle.min.js"></script>
									<script src="resources/js/tiny-slider.js"></script>
									<script src="resources/js/glightbox.min.js"></script>
									<script src="resources/js/rellax.min.js"></script>
									<script src="resources/js/aos.js"></script>
									<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
									<script src="resources/js/google-map.js"></script>
									<script src="resources/js/main.js"></script>
					

</body>
</html>