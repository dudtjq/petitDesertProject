<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<header class="header d-flex justify-content-between align-items-center">
			<h1 class="text-center pl-4">Petit Desert</h1>
			
				<nav class="nav d-flex justify-content-center align-items-center pt-2">
			
					<ul class="nav nav-fill">
						<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_up/view">메뉴</a>
						<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">클래스</a>
						<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/map/map/view">찾아 오시는 길</a>
						<c:if test="${not empty userId }">
							<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">나의 정보</a>
						</c:if>
					</ul>
				
				</nav>
		
			<div class="d-flex justify-content-end pr-4"> <!-- 로그인시 샘플 화면 구성임  -->
				<c:if test="${not empty userId }">
					<div>${userLoginId}님<a href="/user/signout">로그아웃</a></div>
				</c:if>
				<c:if test="${empty userId }">
					<div><a class="text-dark pr-2" href="/user/signin/view">로그인</a><a class="text-dark" href="/user/signup/view">회원가입</a></div>
				</c:if>
			</div>	
		</header>