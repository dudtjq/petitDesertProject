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
		
		<div class="d-flex justify-content-end pt-3">
			<a type="button" class="listBtn btn text-white bg-warning" href="/reservation/class_list/view">목록보기</a>
		</div>
		
			<div class="text-center pt-4 pb-2">
					<h4 class="font-weight-bold">클래스</h4>
					<h1 class="font-weight-bold">Class</h1>
					
					
			</div>
			
		<div>
		
			<nav class="nav d-flex justify-content-center align-items-center border border-warning border-4 pt-1">
			
				<ul class="nav nav-fill">
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/class/new_class/view?category=쁘띠갸또">쁘띠갸또</a></li>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/class/new_class/view?category=구움과자">구움과자</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/class/new_class/view?category=케이크">케이크</a>
				</ul>
					
			</nav>
		
		</div>	
			
		
			
		<c:if test="${checkNumber == 1}">
			<div class="addInput pt-3 d-block justify-content-center">
				
				<div class="d-flex justify-content-center pt-2"><input id="classNameInput" type="text" class="form-control col-4" placeholder="클래스명"></div>
				<div class="d-flex justify-content-center pt-2"><input id="introduceInput" type="text" class="form-control col-4" placeholder="소개"></div>
				<div class="d-flex justify-content-center pt-2"><input id="priceInput" type="text" class="form-control col-4" placeholder="가격"></div>
				<div class="d-flex justify-content-center pt-2"><input id="categoryInput" type="text" class="form-control col-4" placeholder="카테고리"></div>
				
				<div class="add d-flex justify-content-between pt-2">
					<div class="d-flex uploadIcon pl-4 pb-4" id="imageUploadBtn"><i class="bi bi-card-image"></i></div>
					<input type="file" id="fileInput" class="pl-2 d-none">
					<div class="pr-4">
					<button type="button" class="uploadBtn btn btn-warning text-white font-weight-bold pt-2 " id="upBtn">등록</button>
					</div>
				</div>
			</div>
		</c:if>
		
		

		<div class="text-center pt-3 pb-1">
			<div class="font-weight-bold"><h4>Petit Desert만의 품격, 프리미엄한 클래스</h4></div>
		</div>
			
	
		
		<div class="d-flex justify-content-center pt-5 d-flex flex-wrap row">
			<c:forEach var="lesson" items="${LessonList}">
				<div class="class d-flex">
			
					<div class="class2 text-center pl-2 pb-3">
						<div class="menu2 font-weight-bold d-none">${lesson.category}</div><!-- 안보이게 할 예정  -->
						<img class="menu2" alt="${lesson.category}사진" width="200" height="200" src="${lesson.imagePath}">
						<div class="font-weight-bold menu2">${lesson.className}</div>
						<div class="font-weight-bold menu2">${lesson.introduce}</div>
						<div class="d-flex justify-content-between form-control border-0">
							<a type="button" class="priceBtn btn text-white" href="/reservation/class_reservation/view">${lesson.price}</a>
							<button type="button" class="deleteBtn1 btn-sm bg-danger text-white border-0" data-class-id="${lesson.id}" data-toggle="modal" data-target="#moreModal">삭제</button>
						</div>
					</div>
			
				</div>
			</c:forEach>	
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
				
				let lessonId = $(this).data("class-id");
				
				$.ajax({
					
						type:"get"
						, url:"/class/class/delete"
						, data:{"lessonId":lessonId}
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
				
				let classId = $(this).data("class-id");
				location.reload();
				
			});
			
			
			// 버튼을 누르게 되면 모달 화면이 보이게 하게끔 연결
			$(".deleteBtn1").on("click", function(){
	 			
	 			let classId = $(this).data("class-id")
	 		
	 			// data-class-id ="classId"
	 			$("#deleteBtn2").data("class-id", classId);
	 			
			});
			
			
			$("#imageUploadBtn").on("click", function(){
	 			// file input을 클릭한 동작을 수행한다.
	 			$("#fileInput").click();
	 			
	 		});
			
			$("#upBtn").on("click", function(){
				
				let className = $("#classNameInput").val();
				let introduce = $("#introduceInput").val();
				let price = $("#priceInput").val();
				let file = $("#fileInput")[0];
				let category = $("#categoryInput").val();
				
				if(className == ""){
					alert("클래스 이름을 입력하세요.");
					return;
				}
				
				if(introduce == ""){
					alert("클래스 소개를 입력하세요.");
					return;
				}
				
				if(price == ""){
					alert("가격을 입력하세요.");
					return;
				}
				
				if(category == ""){
					alert("카테고리를 입력하세요.");
					return;
				}
				
				if(file.files.length == 0){
	 				alert("파일을 선택하세요.");
	 				return;
	 			}
				
				
				
				var formData = new FormData();
	 			formData.append("className", className);
	 			formData.append("introduce", introduce);
	 			formData.append("price", price);	
	 			formData.append("category", category);
	 			formData.append("file", file.files[0]);
				
	 			console.log(file.files);
	 			
	 			$.ajax({
	 				type:"post"
	 				, url:"/class/class_up"
	 				, data:formData
	 				, enctype:"multipart/form-data"   // 파일 업로드 필수 항목
					// ajax 파일 업로드시 processDate와 contentType을 필수로 넣어준다!!
	 				, processData:false // 파일 업로드 필수 항목
					, contentType:false
					, classNameType:false// 파일 업로드 필수 항목
					, introduceType:false// 파일 업로드 필수 항목
					, priceType:false// 파일 업로드 필수 항목
					, categoryType:false// 파일 업로드 필수 항목
	 				, success:function(data){
	 					if(data.result == "success"){
	 						
	 						location.reload();
	 						
	 					}else{
	 						
	 						alert("업로드 실패");
	 						
	 					}
	 				}
	 				, error:function(){
	 					alert("업로드 에러");
	 				}
	 					
	 			});
				
			});
			
			
		});
		
	</script>	

</body>
</html>