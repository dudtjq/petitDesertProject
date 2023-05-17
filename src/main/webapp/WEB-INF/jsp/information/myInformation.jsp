<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  		
  		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  		<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>

	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="d-flex justify-content-center pt-5">
			<div><h3 class="list font-weight-bold text-center">나의 정보</h3></div>
		</div>
		
		<div class="d-flex justify-content-center"> 
			<table class="list table text-center">
			  <thead>
			    <tr>
			      <th scope="col"></th>
			      <th scope="col" class=""></th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">아이디</th>
			      <td>${userLoginId }</td>
			    </tr>
			    <tr>
			      <th scope="row">이름</th>
			      <td>${name}</td>
			    </tr>
			    <tr>
			      <th scope="row">이메일</th>
			      <td colspan="2">${email}</td>
			    </tr>
			    <tr>
			      <th scope="row">계정 숫자</th>
			      <td colspan="2">${checkNumber}</td>
			    </tr>
			  </tbody>
			</table>
		</div>
		
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>




</body>
</html>