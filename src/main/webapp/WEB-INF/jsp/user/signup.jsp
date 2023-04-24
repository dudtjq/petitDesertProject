<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 회면</title>

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
							<div class="text-center"><b>정보 입력란</b></div>
						
							<div class="mt-3 d-flex">
								<select id="choiceBox" class="form-control col-5">
								 	<option value='--선택--'>--선택--</option>
								 	<option value='1'>관리자</option>
	  								<option value='0'>일반회원</option>
								</select>
							</div>
						
							<div class="d-flex  mt-3">
								<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
								<button type="button" class="btn btn-warning text-white font-weight-bold btn-sm ml-2" id="duplicationBtn">중복확인</button>
							</div>
						
							<div class="small text-success d-none" id="useText">사용가능한 아이디 입니다</div>
							<div class="small text-danger d-none" id="duplicationText">중복된 아이디 입니다</div>
						
							<input type="password" id="passwordInput" class="form-control mt-3" placeholder="패스워드">
							<input type="password" id="passwordCheckInput" class="form-control mt-3" placeholder="패스워드 확인">
							
							<input type="text" id="nameInput" class="form-control mt-3" placeholder="이름">
							<input type="text" id="emailInput" class="form-control mt-3" placeholder="이메일">
						
							
											
							<button type="button" id="signUpBtn" class="btn btn-warning text-white font-weight-bold btn-block mt-3">회원가입</button>
					
						</div>
						
					</div>
					<div class="d-flex justify-content-center">
						계정이 있으신가요? <a href="/user/signin/view">로그인</a>
					</div>
				</div>
		</section>
			
			<hr>
			
				<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
			
			</div>
			
			<script>
			
				$(document).ready(function(){
					
		
					// 처음엔 중복체크가 진행이 안된 상태
					var isChecked = false;
					// 중복이 맞으면 추가가 되지 못하게 true로 셋팅!
					var isDuplicate = true;
					
					$("#loginIdInput").on("input", function(){
						// 초기화면 처럼 셋팅 진행
						isChecked = false;
						isDuplicateId = true;
						// 중복확인을 진행 안했으니 문구가 안보이게 하기.
						$("#useText").addClass("d-none");
					 	$("#duplicationText").addClass("d-none");
					});
					
					$("#duplicationBtn").on("click", function(){
						
						let loginId = $("#loginIdInput").val();
						
						if(loginId == ""){
							alert("아이디를 입력하세요.");
							return;
						}
						
						$.ajax({
							type:"get"
							, url:"/user/duplicate_id"
							, data:{"loginId":loginId}
							, success:function(data){
								
								// 중복체크 여부 저장 성공과 조건문 사이인 중가로 에다가 넣기!
								isChecked = true;
								
								isDuplicateId = data.duplicate_id;
								
								if(data.duplicate_id){
									// 중복
									$("#duplicationText").removeClass("d-none");
									$("#useText").addClass("d-none");
								
								}else{
									// 사용 가능
									$("#useText").removeClass("d-none");
									$("#duplicationText").addClass("d-none");
								
								}
								
							}
							, error:function(){
								alert("중복확인 에러.");
							}
						});
						
					});
					
					$("#signUpBtn").on("click", function(){
						
						let loginId = $("#loginIdInput").val();
						let password = $("#passwordInput").val();
						let passwordCheck = $("#passwordCheckInput").val();
						let name = $("#nameInput").val();
						let email = $("#emailInput").val();
						let choice =$("#choiceBox").val();
						
						// 회원 가입 버튼 이벤트 적용 확인
						// alert();
						
						if(choice == "--선택--"){
							alert("선택사항을 고르세요.");
							return;
						}
						
						
						if(loginId == ""){
							alert("아이디를 입력해주세요.");
							return;
						}
						
						if(!isChecked){
							alert("아이디 중복체크를 진행 해 주세요");
							return;
						}
						
						if(isDuplicateId){
							alert("아이디 중복되었습니다.");
							return;
						}
						
						if(password == ""){
							alert("비밀번호를 입력하세요.");
							return;
						}
						
						if(passwordCheck == ""){
							alert("패스워드 확인을 입력하세요.");
							return;
						}
						
						if(password != passwordCheck){
							alert("패스워드 일치하지 않습니다.");
							return;
						}
						
						if(name == ""){
							alert("이름을 입력하세요.");
							return;
						}
						
						if(email == ""){
							alert("이메일을 입력하세요.");
							return;
						}
						
						
						
						
						
						$.ajax({
							type:"post"
							, url:"/user/signup"
							, data:{"loginId":loginId, "password":password, "passwordCheck":passwordCheck, "name":name, "email":email, "checkNumber":choice}
							, success:function(data){
								if(data.result == "success"){
									// 로그인 페이지 만들면 location을 통해 url 쓰기
									//alert("회원가입 성공");
									location.href = "/user/signin/view";
								}else{
									alert("회원가입 실패");
								}
							}
							, error:function(){
								alert("회원가입 에러");
							}
							
						});
						
					});
				
				});
			
			
			
			</script>

</body>
</html>