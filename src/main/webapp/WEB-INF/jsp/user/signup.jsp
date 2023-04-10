<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petit Desert 회원가입 회면</title>

	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  		
  		<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

		<div id="wrap">
			
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
				
			<c:import url="/WEB-INF/jsp/include/nav.jsp" />
				
			<section class="section justify-content-center">
					<div>
						<div class="login-box d-flex">
						<div class="w-100 p-4">
							<h1 class="text-center">Petit Desert</h1>
							<br>
							<div class="text-center"><b>정보 입력란</b></div>
						
							<div class="d-flex  mt-3">
								<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
								<button type="button" class="btn btn-warning text-white font-weight-bold btn-sm ml-2" id="duplicationBtn">중복확인</button>
							</div>
						
							<div class="small text-success d-none" id="idText1">사용가능한 아이디 입니다</div>
							<div class="small text-danger d-none" id="idText2">중복된 아이디 입니다</div>
						
							<input type="password" id="passwordInput" class="form-control mt-3" placeholder="패스워드">
							<input type="password" id="passwordCheckInput" class="form-control mt-3" placeholder="패스워드 확인">
							
							<input type="text" id="nameInput" class="form-control mt-3" placeholder="이름">
							<input type="text" id="emailInput" class="form-control mt-3" placeholder="이메일">
							
							<input type="text" id="numberInput" class="form-control mt-3" placeholder="확인숫자">
							
							<button type="button" id="signUpBtn" class="btn btn-warning text-white font-weight-bold btn-block mt-3">회원가입</button>
					
						</div>
						
					</div>
					<div class="d-flex justify-content-center">
						계정이 있으신가요? <a href="#">로그인</a>
					</div>
				</div>
		</section>
			</section>
			<hr>
			
				<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
			
			</div>

</body>
</html>