<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>헬스로드 | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<!--End top header -->

	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index-5.html"><img
					src="assets/img/logo.png" alt=""></a>
				<!-- 로고이미지 바꾸기 -->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<button class="navbar-btn nav-button wow bounceInRight login"
						onclick=" window.open('register.html')" data-wow-delay="0.4s">로그인/회원가입</button>

				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s">
						<!-- 여기href 바꿔야함--> <a href="index.html"
						class="dropdown-toggle active" data-hover="dropdown"
						data-delay="200">마이페이지 </a>

					</li>


					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="property.html">포인트충전</a></li>
					<li class="dropdown yamm-fw" data-wow-delay="0.1s">
						<!-- 여기href 바꿔야함--> <a href="contact-3.html"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">서비스소개 </a>
					</li>

					<!-- <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li> -->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->


	<div class="slider-area">
		<div class="slider">
			<div id="bg-slider" class="owl-carousel owl-theme">
				<div class="item">
					<img src="${pageContext.request.contextPath}/assets/img/slide1/PushUp_Sample.jpg" alt="PushUp">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/assets/img/slide1/Train.jpeg" alt="Train">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/assets/img/slide1/sample3.png" alt="Dumbbell">
				</div>

			</div>
		</div>
		<div class="container slider-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<h2 style="color: black"> 나를 찾아오는 건강</h2>
					<p style="color: black"> 나의 건강을 시간과 장소에 구애받지 마세요. 언제 어디서든 나와 가장 가까운 헬스장을 찾아보세요</p>
					<div class="search-form wow pulse" data-wow-delay="0.8s">

						<form action="${pageContext.request.contextPath}/front?"
							class="form-inline">
							<div class="form-group">
								<!-- 컨트롤러 매칭을 위한 값 넘김 -->
								<input type="hidden" name="command" value="gymList">
								<!-- 								<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="-선택-" name="keyfield">
 -->
								<select id="basic" class="selectpicker show-tick form-control"
									name="keyfield">
									<option>선택</option>
									<option>주소</option>
									<option>이름</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Keyword" name="keyword">
							</div>
							<button class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- property area -->
	<div class="content-area recent-property"
		style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
		<div class="container">
			<div class="row">
				<div class="col-md-12  padding-top-40 properties-page">
					<div class="col-md-12 ">
						<div class="col-xs-10 page-subheader sorting pl0">

							<!-- <ul class="sort-by-list">
								<li class="active"><a href="javascript:void(0);"
									class="order_by_date" data-orderby="property_date"
									data-order="ASC"> 날짜 순 정렬 <i class="fa fa-sort-amount-asc"></i>
								</a></li>
								<li class=""><a href="javascript:void(0);"
									class="order_by_price" data-orderby="property_price"
									data-order="DESC"> 가격 순 정렬 <i
										class="fa fa-sort-numeric-desc"></i>
								</a></li>
							</ul>
							/ .sort-by-list

							<div class="items-per-page">
								<div class="sel">
									<select id="items_per_page" name="per_page">
										<option value="3">3</option>
										<option value="6">6</option>
										<option value="9">9</option>
										<option selected="selected" value="12">12</option>
										<option value="15">15</option>
										<option value="30">30</option>
										<option value="45">45</option>
										<option value="60">60</option>
									</select>
								</div>
								/ .sel
								<label for="items_per_page"><b>개 씩 보기 :</b></label>

							</div> -->
							<!--/ .items-per-page-->
						</div>

						<div class="col-xs-2 layout-switcher">
							<a class="layout-list" href="javascript:void(0);"> <i
								class="fa fa-th-list"></i>
							</a> <a class="layout-grid active" href="javascript:void(0);"> <i
								class="fa fa-th"></i>
							</a>
						</div>
						<!--/ .layout-switcher-->
					</div>
					<div class="col-md-12 ">
						<div id="list-type" class="proerty-th">

							<c:forEach items="${requestScope.list }" var="gymList">
								<div class="col-sm-6 col-md-3 p0">
									<c:if test="${empty list}">
										없음<br>
									</c:if>
									<div class="box-two proerty-item">
										<div class="item-thumb">
											<a href="${pageContext.request.contextPath}/front?command=gymDetail&code=${gymList.code}">
												<!-- <img src="assets/img/demo/property-3.jpg"></a> --> 
												<img src="${pageContext.request.contextPath}/save/gym/${gymList.fileName}">
												</a>
										</div>

										<div class="item-entry overflow">
											<h5>
												<a href="${pageContext.request.contextPath}/front?command=gymDetail&code=${gymList.code}">
													${gymList.name} </a>
											</h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b> 수용인원 :</b>
												${gymList.gymCapacity }명 </span> 
												<span class="proerty-price pull-right"> ${gymList.price} p
											</span><br>
											<p>${gymList.addr}</p>
											<p>${gymList.phoneNum}</p>
											<!--<p style="display: none;">Suspendisse ultricies
											Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
											ultricies commodo arcu nec pretium ...</p>
										 <div class="property-icon">
											<img src="img/icon/bed.png">(5)| <img
												src="img/icon/shawer.png">(2)| <img
												src="img/icon/cars.png">(1)
										</div> -->
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<!-- <div class="col-md-12">
						<div class="pull-right">
							<div class="pagination">
								<ul>
									<li><a href="#">이전</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">다음</a></li>
								</ul>
							</div>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>


	<!-- Footer area-->
	<div class="footer-area">

		<div class=" footer">
			<div class="container">
				<div class="row">

					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>About us</h4>
							<div class="footer-title-line"></div>

							<img src="assets/img/footer-logo.png" alt="" class="wow pulse"
								data-wow-delay="1s">
							<!-- 로고이미지 바꾸기 -->
							<p>Lorem ipsum dolor cum necessitatibus su quisquam
								molestias. Vel unde, blanditiis.</p>

						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>Quick links</h4>
							<div class="footer-title-line"></div>
							<ul class="footer-menu">
								<li><a href="properties.html">Properties</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="submit-property.html">Submit property </a></li>
								<li><a href="contact.html">Contact us</a></li>
								<li><a href="faq.html">fqa</a></li>
								<li><a href="faq.html">Terms </a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer">
							<h4>Last News</h4>
							<div class="footer-title-line"></div>
							<ul class="footer-blog">
								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>

								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>

								<li>
									<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
										<a href="single.html"> <img
											src="assets/img/demo/small-proerty-2.jpg">
										</a> <span class="blg-date">12-12-2016</span>

									</div>
									<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
										<h6>
											<a href="single.html">Add news functions </a>
										</h6>
										<p style="line-height: 17px; padding: 8px 2px;">Lorem
											ipsum dolor sit amet, nulla ...</p>
									</div>
								</li>


							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight animated">
						<div class="single-footer news-letter">
							<h4>Stay in touch</h4>
							<div class="footer-title-line"></div>
							<p>Lorem ipsum dolor sit amet, nulla suscipit similique
								quisquam molestias. Vel unde, blanditiis.</p>

							<form>
								<div class="input-group">
									<input class="form-control" type="text"
										placeholder="E-mail ... "> <span
										class="input-group-btn">
										<button class="btn btn-primary subscribe" type="button">
											<i class="pe-7s-paper-plane pe-2x"></i>
										</button>
									</span>
								</div>
								<!-- /input-group -->
							</form>

							<div class="social pull-right">
								<ul>
									<li><a class="wow fadeInUp animated"
										href="https://twitter.com/kimarotec"><i
											class="fa fa-twitter"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://www.facebook.com/kimarotec"
										data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i
											class="fa fa-google-plus"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i
											class="fa fa-instagram"></i></a></li>
									<li><a class="wow fadeInUp animated"
										href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i
											class="fa fa-dribbble"></i></a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="footer-copy text-center">
			<div class="container">
				<div class="row">
					<div class="pull-left">
						<span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a>
							, All rights reserved 2016
						</span>
					</div>
					<div class="bottom-menu pull-right">
						<ul>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.2s">Home</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.3s">Property</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.4s">Faq</a></li>
							<li><a class="wow fadeInUp animated" href="#"
								data-wow-delay="0.6s">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>


	<script src="assets/js/modernizr-2.6.2.min.js"></script>

	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>

	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>

	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/price-range.js"></script>

	<script src="assets/js/main.js"></script>

</body>
</html>