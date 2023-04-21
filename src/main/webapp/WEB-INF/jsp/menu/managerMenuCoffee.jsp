<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메뉴 커피</title>

	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  		
  		<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>



	<div id="wrap">
		
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		
		<div class="text-center">
				<h3 class="font-weight-bold">메뉴</h3>
				<h3 class="font-weight-bold">MENU</h3>
		</div>
		
		<div>
		
			<nav class="nav d-flex justify-content-center align-items-center border border-warning border-4">
			
				<ul class="nav nav-fill">
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_coffee/view">음료</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_coffee/view?category=베이커리">베이커리</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_coffee/view?category=디저트">디저트</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_coffee/view?category=샌드위치">샌드위치</a>
				</ul>
					
			</nav>
		
		</div>	
		
		<div class="text-center pt-4">
			<div><h3 class="font-weight-bold">Coffee</h3></div>
			<div class="font-weight-bold">Petit Desert만의 프리미엄 커피</div>
		</div>
		
		
		<div class="addBtn pl-2 pb-2 pt-5">
			<a type="button" class="btn btn-warning text-white font-weight-bold" href="/menu/menu_name_up/view">등록하기</a>
		</div>
		
		<div class="d-flex justify-content-center pt-5 d-flex flex-wrap row">
		
			
			<div class="menu text-center d-flex">
				
				<div class="menu2 pl-2 pb-3">
					<div class="menu2 font-weight-bold d-none">커피</div><!-- 안보이게 할 예정  -->
					<img class="menu2" alt="${menuName} 사진" width="200" height="200" src="${imagePath}">
					<div class="font-weight-bold menu2">${menu.menuName}</div>
					<div class="font-weight-bold menu2">${menu.price}</div>
					<div class="font-weight-bold small menu2">${menu.introduce}</div>
				</div>
					
			</div>
			
		</div>
			
			
			
			
		
		
		
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>

	


</body>
</html>