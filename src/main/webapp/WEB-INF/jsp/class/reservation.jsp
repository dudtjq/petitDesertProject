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
  		<link rel="stylesheet" href="/static/css/CalenderStyle.css" type="text/css">
  		<script type="text/javascript" src="/static/js/calender.js"></script>
</head>
<body>
	
		<div id="wrap">
	
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			
			
			<div class="d-flex justify-content-center pt-5">
				<div><h3 class="font-weight-bold">클래스를 소개 합니다!</h3></div>
			</div>
			
			<div class="d-flex justify-content-center pt-3">
				<img alt="쁘띠갸또 사진" src="data:image/jpeg;base64,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">
			</div>
		
			<div class="d-flex justify-content-center pt-4 pb-4">
				<div class="font-weight-bold">Petit Desert에서 알려드리는 특별한 레시피</div>
			</div>
			<div class="border border1 border-top border-2"></div>
			
			<div class="d-flex justify-content-center pt-4">
				<img alt="구움과자 사진" width="500" height="300" src="data:image/jpeg;base64,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">
			</div>
			
			<div class="d-flex justify-content-center pt-4">
				<img alt="케이크 사진" width="500" height="300" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrUyupMxJFmC4EfJUin5sMcg55QNstuOd8bw&usqp=CAU">
			</div>
			
			<div class="text1 d-flex justify-content-start pt-3">
				<div><h4 class="font-weight-bold">누구나 좋아하는 맛보장 레시피!!</h4></div>
			</div>
			
			<div class="explanation text-center pb-4">
				Petit Dessert의 수업 레시피는 업장 생산 레시피를 기본으로 합니다. 온라인에서 쉽게 접할 수 있는 레시피는 때로는 깊이나 디테일이 부족하여 완성도가 떨어질 때가 많습니다. 
				샵 생산용 레시피를 고려하고 있는 분들께 자신있게 추천하는 정확하고 완성도 높은 레시피를 담았습니다.
				효율적인 생산과 좋은 맛을 기본으로 한 이 수업의 생산 레시피는 디저트 샵의 판매 메뉴로도 충분 할 뿐 아니라 좋은 재료를 활용한 전문가의 맛을 추구하는 까다로운 홈베이커 분들의 눈높이에도 충분합니다.
			</div>
			
			<div class="border border1 border-top border-2"></div>
			
			<div class="pt-4"></div>
			
			<div id="my-calendar" class="my-calendar clearfix">
			    <div class="clicked-date">
			      <div class="cal-day"></div>
			      <div class="cal-date"></div>
			    </div>
			    <div class="calendar-box">
			      <div class="ctr-box clearfix">
			        <button type="button" title="prev" class="btn-cal prev">
			        </button>
			        <span class="cal-month"></span>
			        <span class="cal-year"></span>
			        <button type="button" title="next" class="btn-cal next">
			        </button>
			      </div>
			      <table class="cal-table">
			        <thead>
			          <tr>
			            <th>일</th>
			            <th>월</th>
			            <th>화</th>
			            <th>수</th>
			            <th>목</th>
			            <th>금</th>
			            <th>토</th>
			          </tr>
			        </thead>
			        <tbody id="today" class="cal-body"></tbody>
			      </table>
			    </div>
			  </div>
			  
			   <div class="pt-3"></div>
			   
			  	<div class="border border1 border-top border-2"></div>
			  	
			  	<div class="hr border border1 border-top border-2"></div>
			  <div class="d-flex justify-content-start">
			  	
			  <div class="text2 pl-5 pr-5 pt-3 d-none">
			  	<div class="font-weight-bold">손쉽게 만드는 Petit Desert 클래스!</div>
			  	<br>
			  	Petit Dessert만의 특별한 레시피로 초보자 분들도 부담없이 맛있고 이쁘게 만들 수 있습니다!
				제빵 전문가가 옆에서 한분 한분 각각 봐드리며
				어렵지 않고 재미있게 즐기실 수 있습니다!

				이색데이트로도 재미있게 즐기 실 수 있습니다!<br>
				※취소 경우 5일전에 미리 알려주시면 감사하겠습니다.
			 
			   </div>
				<div id="time" class="time d-flex  justify-content-end align-items-start pr-5">
				
					<div class="timeBtns d-none pl-3 pr-3">
						<button type="button" name="time" title="text" id="timeBtn" class="timeBtn bg-warning text-white border-white" value="10:00:00">10:00</button>
						<button type="button" name="time" title="text" id="timeBtn" class="timeBtn bg-warning text-white border-white" value="12:00:00">12:00</button>
						<button type="button" name="time" title="text" id="timeBtn" class="timeBtn bg-warning text-white border-white" value="14:00:00">14:00</button>
						<button type="button" name="time" title="text" id="timeBtn" class="timeBtn bg-warning text-white border-white" value="16:00:00">16:00</button>
						<button type="button" name="time" title="text" id="timeBtn" class="timeBtn bg-warning text-white border-white" value="18:00:00">18:00</button>
					</div>
				</div>  
			</div>
			
			<div class="pt-5"></div>
			
	
				<div class="reservation d-none">
					<div class="reservation d-flex justify-content-center">                                                                                      <!-- param.으로 내가 얻고자 하는 값을 적용 시킬수 있음!! -->	
						<button type="button" id="reservationBtn" class="reservationBtn form-contol bg-warning text-white text-center pt-1 rounded border-white" data-lesson-id="${param.lessonId}">예약하기</button>
					</div>
				</div>
			
			<div class="pt-4"></div>
			<hr>
	
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
	
	</div>
	
	<script>
		
		$(document).ready(function(){
			
			var time = null;
			
			$(".timeBtns").on("click", function(){
				$(".reservation").removeClass("d-none");
				
			});
			
			$("#today").on("click", function(){
				 $(".text2").removeClass("d-none");
				 $(".timeBtns").removeClass("d-none");
				
			});
			
			
			$("button[name=time]").on('click', function() {
				// 시간을 누르게 되면 value 값을 확인 할 수 있음  
				 time = $(this).val();
				// value 속성이 찍힘
				// console.log(time);
			});
			
		
			$("#reservationBtn").on("click", function(){
			
				let lessonId = $(this).data("lesson-id");
			
				// 날짜 확인 완료
				// 선택한 날짜로 확인 완료
				let date = myCalender.activeDate.toISOString().split('T')[0];
				console.log(date);
				
				if(time != null){
					console.log(time);
				}
				
				
				
				
				$.ajax({
					type:"get"
					, url:"/reservation/class_reservation"
					, data:{"lessonId":lessonId ,"reservationDay":date, "reservationTime":time}
					, success:function(data){
						
						if(data.result == "success"){
							alert("예약 완료 입니다.");
							
							location.href="/class/new_class/view?category=쁘띠갸또";
							
						}else{
							alert("예약 실패");
						}
						
					}
					, error:function(){
						alert("예약 오류");
					}
					
				
				});
				
			});
			
			
			
		});
		
		// calender code
		
		let myCalender = {
				  monList: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				  dayList: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
				  today: new Date(),
				  monForChange: new Date().getMonth(),
				  activeDate: new Date(),
				  getFirstDay: (yy, mm) => new Date(yy, mm, 1),
				  getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
				  nextMonth: function () {
				    let d = new Date();
				    d.setDate(1);
				    d.setMonth(++this.monForChange);
				    this.activeDate = d;
				    return d;
				  },
				  prevMonth: function () {
				    let d = new Date();
				    d.setDate(1);
				    d.setMonth(--this.monForChange);
				    this.activeDate = d;
				    return d;
				  },
				  addZero: (num) => (num < 10) ? '0' + num : num,
				  activeDTag: null,
				  getIndex: function (node) {
				    let index = 0;
				    while (node = node.previousElementSibling) {
				      index++;
				    }
				    return index;
				  }
				};

			
				calender(myCalender);
	
	
	</script>

</body>
</html>