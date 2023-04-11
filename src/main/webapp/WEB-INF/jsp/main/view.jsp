<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petit Desert</title>

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
			<div class="pt-3">
				<div class="d-flex justify-content-start pl-5">
					<div class="text pt-3">
						<h4>Petit Desert 방문에 환영합니다!</h4>
						<b>맛있고 즐거움이 있는 디저트 <br>
						풍미가 가득 담긴 음료와 디저트 <br>
						편안하게 만들수 있는 디저트</b>
					</div>
				</div>
				<div class="img1 d-flex d-block">
					<img alt="커피 사진" width="100%" src="https://cdn.pixabay.com/photo/2017/08/01/02/04/coffee-2562810__340.jpg">
				</div>
				<div class="img2 d-block">
					<img alt="마들렌 사진" width="100%" src="https://media.istockphoto.com/id/1136781098/ko/%EC%82%AC%EC%A7%84/%EC%B4%88%EC%BD%9C%EB%A6%BF-%EC%BF%A0%ED%82%A4-%EC%A7%91%EC%97%90%EC%84%9C-%EB%A7%8C%EB%93%A0-%EC%B4%88%EC%BD%9C%EB%A6%BF-%EC%96%B4%EB%91%90%EC%9A%B4-%ED%85%8C%EC%9D%B4%EB%B8%94%EC%97%90-%EB%A7%88%EB%93%A4%EB%A0%8C-%ED%94%84%EB%9E%91%EC%8A%A4-%EC%9A%94%EB%A6%AC%EB%A5%BC-%EC%84%A0%EB%B3%B4%EC%9E%85%EB%8B%88%EB%8B%A4-%ED%8F%89%EB%A9%B4%EB%8F%84.jpg?s=612x612&w=0&k=20&c=togIz0nZlibxUdvP9vmES4eRqFFXCszdwEXOBKvdVX8=">
				</div>
				<div class="d-flex justify-content-center">
					<div class="img3 bg-warning d-block">
						<img alt="카페 내부 사진" width="100%" height="100%" src="https://cdn.pixabay.com/photo/2020/10/07/12/33/cafe-5635015__340.jpg">
					</div>
					<div class="img4 bg-success d-block">
						<img alt="에이드음료 사진" width="100%" height="100%" src="https://cdn.pixabay.com/photo/2015/11/23/12/13/cocktail-1058237__340.jpg">
					</div>
				</div>
			</div>	
		</section>
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	
	</div>


</body>
</html>