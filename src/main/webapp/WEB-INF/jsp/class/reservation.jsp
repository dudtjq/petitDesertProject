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
				쁘띠 Dessert의 수업 레시피는 업장 생산 레시피를 기본으로 합니다. 온라인에서 쉽게 접할 수 있는 레시피는 때로는 깊이나 디테일이 부족하여 완성도가 떨어질 때가 많습니다. 
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
			        <tbody class="cal-body"></tbody>
			      </table>
			    </div>
			  </div>
			  
			   <div class="pt-4"></div>
			  <div class="border border1 border-top border-2"></div>
			 
			  
			<div id="time" class="time d-flex justify-content-center pt-5 d-flex flex-wrap row">
				<button type="button" title="text" class="timeBtn bg-warning text-white">10:00</button>
			</div>  
			
			<hr>
	
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>	
	
	<script>
	
	const init = {
			  monList: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			  dayList: ['일요일', '월요일', '화요일', '수요일', '목요일', 'Friday', 'Saturday'],
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

			const $calBody = document.querySelector('.cal-body');
			const $btnNext = document.querySelector('.btn-cal.next');
			const $btnPrev = document.querySelector('.btn-cal.prev');

			/**
			 * @param {number} date
			 * @param {number} dayIn
			*/
			function loadDate (date, dayIn) {
			  document.querySelector('.cal-date').textContent = date;
			  document.querySelector('.cal-day').textContent = init.dayList[dayIn];
			}

			/**
			 * @param {date} fullDate
			 */
			function loadYYMM (fullDate) {
			  let yy = fullDate.getFullYear();
			  let mm = fullDate.getMonth();
			  let firstDay = init.getFirstDay(yy, mm);
			  let lastDay = init.getLastDay(yy, mm);
			  let markToday;  // for marking today date
			  
			  if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
			    markToday = init.today.getDate();
			  }

			  document.querySelector('.cal-month').textContent = init.monList[mm];
			  document.querySelector('.cal-year').textContent = yy;

			  let trtd = '';
			  let startCount;
			  let countDay = 0;
			  for (let i = 0; i < 6; i++) {
			    trtd += '<tr>';
			    for (let j = 0; j < 7; j++) {
			      if (i === 0 && !startCount && j === firstDay.getDay()) {
			        startCount = 1;
			      }
			      if (!startCount) {
			        trtd += '<td>'
			      } else {
			        let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
			        trtd += '<td class="day';
			        trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
			        trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
			      }
			      trtd += (startCount) ? ++countDay : '';
			      if (countDay === lastDay.getDate()) { 
			        startCount = 0; 
			      }
			      trtd += '</td>';
			    }
			    trtd += '</tr>';
			  }
			  $calBody.innerHTML = trtd;
			}

			/**
			 * @param {string} val
			 */
			function createNewList (val) {
			  let id = new Date().getTime() + '';
			  let yy = init.activeDate.getFullYear();
			  let mm = init.activeDate.getMonth() + 1;
			  let dd = init.activeDate.getDate();
			  const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

			  let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

			  let eventData = {};
			  eventData['date'] = date;
			  eventData['memo'] = val;
			  eventData['complete'] = false;
			  eventData['id'] = id;
			  init.event.push(eventData);
			  $todoList.appendChild(createLi(id, val, date));
			}

			loadYYMM(init.today);
			loadDate(init.today.getDate(), init.today.getDay());

			$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
			$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

			$calBody.addEventListener('click', (e) => {
			  if (e.target.classList.contains('day')) {
			    if (init.activeDTag) {
			      init.activeDTag.classList.remove('day-active');
			    }
			    let day = Number(e.target.textContent);
			    loadDate(day, e.target.cellIndex);
			    e.target.classList.add('day-active');
			    init.activeDTag = e.target;
			    init.activeDate.setDate(day);
			    reloadTodo();
			  }
			});
	
	</script>


</body>
</html>