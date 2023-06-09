<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  		
  		<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

<div id="wrap">
			
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
				
			<section class="section justify-content-center">
					<div>
						<div class="login-box d-flex">
						<div class="w-100 p-4">
							<h1 class="text-center">Petit Desert</h1>
							<br>
							<div class="text-center"><b>로그인</b></div>
						
							<form id="loginForm">					
								<div class="d-flex  mt-3">
									<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
								</div>
							
								<input type="password" id="passwordInput" class="form-control mt-3" placeholder="패스워드">
								
								<button type="submit" id="signInBtn" class="btn btn-warning text-white font-weight-bold btn-block mt-3">로그인</button>
							</form>
						</div>
						
					</div>
					<div class="d-flex justify-content-center">
						계정이 없으신가요? <a href="/user/signup/view">회원가입</a>
					</div>
				</div>
		</section>
		<hr>
			
				<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
			
		</div>
		<script>
		
			$(document).ready(function(){
				
				$("#loginForm").on("submit", function(e){
					
					// 이벤트가 가진 고유 기능과 속성을 취소한다.
					e.preventDefault();
					
					let loginId = $("#loginIdInput").val();
					let password = $("#passwordInput").val();
					
					if(loginId == ""){
						alert("아이디를 입력하세요.");
						return;
					}
					
					if(password == ""){
						alert("비밀번호를 입력하세요.");
						return;
					}
					
					$.ajax({
						
						type:"post"
						, url:"/user/signin"
						, data:{"loginId":loginId, "password":password}
						, success:function(data){
							
							if(data.result == "success"){
								
								location.href="/user/main/view";
					 			return;
								
							}else{
								
								alert("아이디와 비밀번호를 확인 해주세요.");
				 				return;
								
							}
						}
						, error:function(){
							
							alert("로그인 에러");
				 			return;
							
						}
						
						
					});
					
				});
				
			});
		
		</script>
			

</body>
</html>