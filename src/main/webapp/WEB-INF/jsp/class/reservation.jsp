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
</head>
<body>
	
		<div id="wrap">
	
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			
			<div class="d-flex justify-content-center pt-5">
				<div><h3 class="font-weight-bold">클래스를 소개 합니다!</h3></div>
			</div>
			
			<div class="d-flex justify-content-center pt-3">
				<img alt="쁘띠갸또 사진" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTRfMTc4%2FMDAxNTcxMDYwMjQ5NTIy.ch_3T3VmeX2aFYiEL99ZfPY7HE-9DdCiIImbP5DDtegg.pkMuBVkpkGkNGO7h4haF-9ZIO9hGSqE29n387xhCCssg.JPEG.vemy1004%2F1571060249311.jpg&type=a340">
			</div>
		
			<div class="d-flex justify-content-center pt-4 pb-4">
				<div class="font-weight-bold">Petit Desert에서 배울 수 있는 쁘띠갸또</div>
			</div>
			<div class="border border1 border-top border-2"></div>
			
			<div class="d-flex justify-content-center pt-4">
				<img alt="쁘띠갸또 사진" width="500" height="300" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTRfMTc4%2FMDAxNTcxMDYwMjQ5NTIy.ch_3T3VmeX2aFYiEL99ZfPY7HE-9DdCiIImbP5DDtegg.pkMuBVkpkGkNGO7h4haF-9ZIO9hGSqE29n387xhCCssg.JPEG.vemy1004%2F1571060249311.jpg&type=a340">
			</div>
			
			<div class="explanation pt-2 text-center">
				<b>쁘띠갸또</b> 는 레이어드 된 스폰지, 머랭, 빵등에 크림, 커스터드 크림, 가나쉬, 잼, 마치판 혹은 젤리와 과일 등으로 필링한 것입니다.  일반적인 케이크, 크림 등을 층층히 쌓거나 빵 대신 크림이 내용물의 대부분을 차지하여 파운드 케이크같은 종류의 케이크들보다 훨씬 더 부드럽습니다.
			</div>
			
			<div class="d-flex justify-content-center pt-4">
				<img alt="쁘띠갸또 사진" width="500" height="300" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTRfMTc4%2FMDAxNTcxMDYwMjQ5NTIy.ch_3T3VmeX2aFYiEL99ZfPY7HE-9DdCiIImbP5DDtegg.pkMuBVkpkGkNGO7h4haF-9ZIO9hGSqE29n387xhCCssg.JPEG.vemy1004%2F1571060249311.jpg&type=a340">
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
			
			<c:import url="/WEB-INF/jsp/class/reservationCalender.jsp" />
			  
			   <div class="pt-3"></div>
			   
			  	<div class="border border1 border-top border-2"></div>
			  	
			  	<div class="border border1 border-top border-2"></div>
			  <div class="d-flex justify-content-start">	
			  <div class="text2 pl-5 pt-3">
			  	<div class="font-weight-bold">손쉽게 만드는 Petit Desert 클래스!</div>
			  	<br>
			  	Petit Dessert만의 특별한 레시피로 초보자 분들도 부담없이 맛있고 이쁘게 만들 수 있습니다!
				제빵 전문가가 옆에서 한분 한분 각각 봐드리며
				어렵지 않고 재미있게 즐기실 수 있습니다!

				이색데이트로도 재미있게 즐기 실 수 있습니다!<br>
				※취소 경우 5일전에 미리 알려주시면 감사하겠습니다.
			 
			   </div>
				<div id="time" class="time d-flex justify-content-end align-items-start pr-5">
				
					<div class="">
						<button type="button" title="text" class="timeBtn bg-warning text-white border-white">10:00</button>
						<button type="button" title="text" class="timeBtn bg-warning text-white border-white">12:00</button>
						<button type="button" title="text" class="timeBtn bg-warning text-white border-white">14:00</button>
						<button type="button" title="text" class="timeBtn bg-warning text-white border-white">16:00</button>
						<button type="button" title="text" class="timeBtn bg-warning text-white border-white">18:00</button>
					</div>
				</div>  
			</div>
			
			<div class="pt-5"></div>
			
			<div class="reservation d-flex justify-content-center">
				<button type="button" id="reservationBtn" class="reservationBtn form-contol bg-warning text-white text-center pt-1 rounded border-white">예약하기</button>
			</div>
			<div class="pt-4"></div>
			<hr>
	
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
	
	</div>


</body>
</html>