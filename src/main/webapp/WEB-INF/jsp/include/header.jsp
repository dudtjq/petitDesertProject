<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<header class="header d-flex justify-content-between align-items-center">
			<h1 class="text-center pl-4">Petit Desert</h1>
			<div class="d-flex justify-content-end pr-4"> <!-- 로그인시 샘플 화면 구성임  -->
				<c:if test="${not empty userId }">
					<div>${userLoginId}님<a href="/user/signout">로그아웃</a></div>
				</c:if>
				<c:if test="${empty userId }">
					<div><a href="/user/signin/view">로그인</a><a href="/user/signup/view">회원가입</a></div>
				</c:if>
			</div>	
		</header>