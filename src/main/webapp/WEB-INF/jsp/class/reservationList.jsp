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
					<th></th>
				</tr>
			</thead>
			<c:forEach var="reservation" items="${reservationList}" varStatus="status">
			<tbody>
				<tr>
					<td>${status.count}</td>
					<td>${reservation.className}</td>
					<td>${reservation.name}</td>
					<td><fmt:formatDate value="${reservation.reservationDay}" pattern="yyyy년 MM월 dd일" />
					 <fmt:formatDate value="${reservation.reservationTime}" pattern="HH:mm:ss" /></td>
					<td class="text-info"><a href="#">${reservation.situation}</a></td>
					<td><button type="button" class="deleteBtn1 btn-sm bg-danger text-white border-0" data-reservation-id="${reservation.id}" data-toggle="modal" data-target="#moreModal">삭제</button></td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
	
	<div class="d-flex justify-content-end">
		<a type="button" class="backBtn btn text-white bg-warning" href="/class/new_class/view?category=쁘띠갸또">돌아가기</a>
	</div>
		<hr>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="moreModal" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-body text-center">
	      	<div class="modal-header">
        		<h5 class="modal-title" id="exampleModalLabel">Petit Desert</h5>
      		</div>
		    <div class="modal-body">
		       삭제 하시겠습니까?
		    </div>
		    <div class="modal-footer">
		       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="cancelBtn">취소</button>
		       <button type="button" class="btn btn-primary" id="deleteBtn2">삭제</button>
		    </div>
	  	 </div>
	    
	    </div>
	  </div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// 삭제
			$("#deleteBtn2").on("click", function(){
				
				let id = $(this).data("reservation-id");
				
				$.ajax({
					
						type:"get"
						, url:"/reservation/reservation/delete"
						, data:{"id":id}
						, success:function(data){
							
							if(data.result =="success"){
								location.reload();
							}else{
								alert("삭제 실패")
							}
							
						}
						, error:function(){
							
							alert("삭제 오류")
							
						}
					
				});
				
			});
			
			// 취소 시 그대로
			$("#cancelBtn").on("click", function(){
				
				let classId = $(this).data("reservation-id");
				location.reload();
				
			});
			
			// 버튼을 누르게 되면 모달 화면이 보이게 하게끔 연결
			$(".deleteBtn1").on("click", function(){
	 			
	 			let classId = $(this).data("reservation-id")
	 		
	 			// data-class-id ="classId"
	 			$("#deleteBtn2").data("reservation-id", classId);
	 			
			});
		
		});
	
	</script>
		

</body>
</html>