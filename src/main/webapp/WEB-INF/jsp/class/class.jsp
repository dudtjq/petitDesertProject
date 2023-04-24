<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petit Desert Class</title>

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
		
			<div class="text-center pt-4 pb-2">
					<h4 class="font-weight-bold">클래스</h4>
					<h1 class="font-weight-bold">Class</h1>
			</div>
			
			<c:if test="${checkNumber == 1}">
			<div class="addInput pt-3 d-block justify-content-center">
				
				<div class="d-flex justify-content-center pt-2"><input id="menuNameInput" type="text" class="form-control col-4" placeholder="클래스명"></div>
				<div class="d-flex justify-content-center pt-2"><input id="priceInput" type="text" class="form-control col-4" placeholder="소개"></div>
				<div class="d-flex justify-content-center pt-2"><input id="introduceInput" type="text" class="form-control col-4" placeholder="가격"></div>
				
				
				<div class="add d-flex justify-content-between pt-2">
					<div class="d-flex uploadIcon pl-4 pb-4" id="imageUploadBtn"><i class="bi bi-card-image"></i></div>
					<input type="file" id="fileInput" class="pl-2 d-none">
					<div class="pr-4">
						<button type="button" class="uploadBtn btn btn-warning text-white font-weight-bold pt-2 " id="upBtn">등록</button>
					</div>
				</div>
			</div>
		</c:if>
		
		<div class="d-flex justify-content-center pt-5 d-flex flex-wrap row">
		
			<div class="menu d-flex">
			
				<div class="menu2 pl-2 pb-3">
					<div class="menu2 font-weight-bold d-none">커피</div><!-- 안보이게 할 예정  -->
					<img class="menu2" alt="사진" width="200" height="200" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAyMDNfMjk1%2FMDAxNjc1MzkzMTYyNTgx.L_4ySL6dJ75wzwRyJ2YOJg1RB8VVB94OCAW5tCkDf3Yg.RieIVDeZ3jtJsGdFfZMZ0a-u2xpxv4Hgbw-lY9preO0g.JPEG.appidbwls%2FIMG_2338.jpg&type=a340">
					<div class="font-weight-bold menu2">마들렌</div>
					<div class="font-weight-bold menu2">이쁘장한 마들렌을 어렵지않고 재미 있게 만들기</div>
					<a type="button" class="priceBtn btn" href="#">120,000원</a>
					<button type="button" class="deleteBtn1 btn-sm bg-danger text-white border-0" data-menu-id="${menu.id}" data-toggle="modal" data-target="#moreModal">삭제</button>
				</div>
			
			</div>
		
		</div>
		
		
	
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

</body>
</html>