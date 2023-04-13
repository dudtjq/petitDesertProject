<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<nav class="nav d-flex justify-content-center align-items-center">
			
				<ul class="nav nav-fill">
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="/menu/menu_name_coffee/view">메뉴</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">클래스</a>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">찾아 오시는 길</a>
					<c:if test="${not empty userId }">
						<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">나의 정보</a>
					</c:if>
				</ul>
				
		</nav>