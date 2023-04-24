<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾아 오시는 길</title>

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
		
		<div class="map d-flex justify-content-center pt-5">
			<img alt="PetitDesert 지도 사진" width="50%" src="https://simg.pstatic.net/static.map/image?caller=smarteditor&markers=color%3A0x11cc73%7Csize%3Amid%7Cpos%3A127.3027144%2037.6501884%7CviewSizeRatio%3A0.6%7Ctype%3Ad&w=886&h=415&scale=1&version=1.2">
		</div>
		<div class="introduce d-block justify-content-center ">
			<div class="pt-4 font-weight-bold">위치 : 경기도 남양주시 화도읍 경춘로 1922번 11-22 1층</div>
			<div class="pt-2 font-weight-bold">이용 시간 : 09 : 00 ~ 22 : 00</div>
			<div class="pt-2 font-weight-bold">예약 문의 : 010-0000-0000</div>
			<div class="pt-2 font-weight-bold">가계 번호 : 031-000-0000</div>
		</div>
		
		
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	
	</div>

</body>
</html>