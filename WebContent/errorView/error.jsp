<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.4.1.js"/></script>
    <script type="text/javascript">
    alert(0)
    //errCode 종류
    //1 로그인 에러
    //2 사업가 포인트충전
    //7 아이디가 중복
	if( "${errCode}" == 1){
		alert("아이디 혹은 패스워드가 틀립니다.");
		location.href="register.jsp";
	}else if( "${errCode}" == 5){
		alert("이미 등록된 사업자이거나 접근 권한이 없습니다.");
		location.href="mypage.html";
	}else if( "${errCode}" == 7){
		alert("중복된 아이디 입니다.");
		location.href="member_register.jsp";
	}
    </script>	
</head>
<body>
<h1>메세지 : </h1>
	
</body>
</html>