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
		
		<div class="d-flex justify-content-center pt-5 pb-4">
			<div><h3 class="font-weight-bold">클래스 예약 관리 목록</h3></div>
		</div>
		
	<div class="d-flex justify-content-center">
		<table class="reservationList table text-center">
			<thead>
				<tr>
					<th>번호</th>
					<th>클래스명</th>
					<th>신청자</th>
					<th>신청일자</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>쁘띠갸또</td>
					<td>이영섭</td>
					<td>2023-04-28 12:00:00</td>
					<td class="text-info">확정</td>
				</tr>
				<tr>
					<td>2</td>
					<td>구움과자</td>
					<td>이지민</td>
					<td>2023-04-29 14:00:00</td>
					<td class="text-danger">취소</td>
				</tr>
				<tr>
					<td>3</td>
					<td>케이크</td>
					<td>빵쟁이</td>
					<td>2023-04-30 10:00:00</td>
					<td class="text-success">대기중</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="d-flex justify-content-end">
		<a type="button" class="backBtn btn text-white bg-warning" href="/class/new_class/view?category=쁘띠갸또">돌아가기</a>
	</div>
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

</body>
</html>