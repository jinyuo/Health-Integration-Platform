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
<title>GARO ESTATE | Register page</title>
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

<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
        

      	function checkValid(){
    		 if($("#memberId").val()==""){
    			alert("아이디를 입력하세요.")
    			 $("#memberId").focus();
    			 return false;
    		 }
    		 if($("#memberPassword").val()==""){
    			alert("비밀번호를 입력하세요.")
    			  $("#memberId").focus();
    			 return false;
    		 }
    		 if($("#name").val()==""){
    				alert("이름을 입력하세요.")
    				  $("#name").focus();
    			 return false;
    		 }
    		 if($("#phone").val()==""){
    				alert("전화번호를 입력하세요.")
    				  $("#phone").focus();
    			 return false;
    		 }
    	
    	 }// 빈칸 유효성 체크 끝
    	 
        
		$(function(){
			$("#login").click(function(){
				if($(this).text() == "Login"){
					alert($(this).text())
            		location.href="register.jsp";
            	} else {
            		alert($(this).text());
            		location.href="front?command=login";
            	}
			}); 	
		});
        	
		
        </script>

<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function checkValid(){
		if($("#memberId").val()==""){
			alert("아이디를 입력하세요.")
			$("#memberId").focus();
			return false;
			}
		if($("#memberPassword").val()==""){
			alert("비밀번호를 입력하세요.")
			$("#memberId").focus();
			return false;
			}
		if($("#name").val()==""){
			alert("이름을 입력하세요.")
			$("#name").focus();
			return false;
			}
		if($("#phone").val()==""){
			alert("전화번호를 입력하세요.")
			$("#phone").focus();
			return false;
			}
		}// 빈칸 유효성 체크 끝

		$(function(){
			//아이디 중복 체크
			$("#memberId").keyup(function(){
				if($(this).val()==""){
					$("#span").text("   ");
					return;
				}
				$.ajax({
					type:"post",
					url:"idCheckServlet",
					dataType: "text",//서버에게 받은 응답결과 type(text, xml, html, json)\
					data : {memberId: $(this).val() } ,//서버에게 전송할 parameter
					success: function(result){
						$("#span").html(result);
					} ,
					error : function(err){
						console.log(err+"=> 오류발생");
					}
				});//ajax끝
			});//keyup끝
        	  
     		
 //////////////////////////////////////////////////////////////////////////////////////////////////////

 			$("#join").click(function(){
 				if($("#check").is(":checked")){ //사업자 인지 체크
 					$("#memberCheck").val(-1);  //사업자 회원(사업장 등록 가능)
 				}else{
 					$("#memberCheck").val(0);  //일반 회원
        		}	
			});	
		});
	});
</script>
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>

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
				<a class="navbar-brand" href="index.html"><img
					src="assets/img/logo.png" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<script type="text/javascript">alert(${curUserType});</script>
					<button id="login"class="navbar-btn nav-button wow bounceInRight login"data-wow-delay="0.4s"><c:choose><c:when test="${curUserType eq '0'}">Login</c:when><c:otherwise>Logout</c:otherwise></c:choose></button>
					<button class="navbar-btn nav-button wow fadeInRight"
						onclick=" window.open('submit-property.html')"
						data-wow-delay="0.5s">Submit</button>
				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a
						href="index.html" class="dropdown-toggle active"
						data-toggle="dropdown" data-hover="dropdown" data-delay="200">마이페이지
					</a></li>

					<li class="dropdown yamm-fw" data-wow-delay="0.1s"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">포인트 충전 </a></li>

					<li class="wow fadeInDown" data-wow-delay="0.4s"><a
						href="contact.html">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">회원가입 / 로그인</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- register-area -->
	<div class="register-area"
		style="background-color: rgb(249, 249, 249);">
		<div class="container">

			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 register-blocks">
						<h2>회원가입 :</h2>
						<form name="insertForm" action="front?command=memberInsert"
							method="post" onSubmit="return checkValid()">
							<div class="form-group">
								<label for="name">아이디</label> <input type="text"
									class="form-control" id="memberId" name="memberId"
									autocomplete="off"> <span id="span">아이디 중복 체크</span>
							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" id="memberPassword" name="memberPassword">
							</div>
							<div class="form-group">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="name" name="name">
							</div>
							<div class="form-group">
								<label for="phone">전화번호</label> <input type="text"
									class="form-control" id="phone" name="phone">
							</div>
							<div class="form-group">
								<label>사업자 여부</label> <input type="checkbox" name="check"
									id="check">체크시 사업자 등록가능 <input type="hidden"
									class="form-control" name="memberCheck" id="memberCheck">
							</div>


							<div class="text-center">
								<button type="submit" class="btn btn-default" id="join">가입하기</button>

							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks">
						<h2>로그인 :</h2>
						<form action="front?command=login" method="post">
							<div class="form-group">
								<label for="id">아이디</label> <input type="text"
									class="form-control" name="id">
							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-default">로그인</button>
							</div>
						</form>
						<br>

						<h2>소셜 로그인 :</h2>


						<p>
							<a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a>
							<a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a>
							<a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>
						</p>
					</div>

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
							<p>Lorem ipsum dolor cum necessitatibus su quisquam
								molestias. Vel unde, blanditiis.</p>
							<ul class="footer-adress">
								<li><i class="pe-7s-map-marker strong"> </i> 9089 your
									adress her</li>
								<li><i class="pe-7s-mail strong"> </i>
									email@yourcompany.com</li>
								<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
							</ul>
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