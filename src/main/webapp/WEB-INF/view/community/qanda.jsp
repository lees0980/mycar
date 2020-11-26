<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
	import="com.mycar.web.security.MycarAuthenticationSuccessHandler"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
Object principal = auth.getPrincipal();
String name = auth.getName();
%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link href="/css/main/community.css" rel="stylesheet">
<script src="/js/community/test.js"></script>

<main id="center">
	<div class="notice margin-top">
		<h3 class="hidden">자유 게시판 목록</h3>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="w60">번호</th>
					<th class="expand">제목</th>
					<th class="w100">작성자</th>
					<th class="w100">작성일</th>
					<th class="w60">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.id}</td>
						<td class="title indent text-align-left"><a
							href="qanda/${n.id}">${n.title}</a></td>
						<td>${n.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/></td>
						<td>${n.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="indexer margin-top align-right">
		<h3 class="hidden"></h3>
		<div>
			<span class="text-orange text-strong">${param.p}</span> /
			${qandaPage} pages
		</div>
	</div>
	</div>
	<form class="table-form">
		<fieldset>
			<legend class="hidden">공지사항 검색 필드</legend>
			<label class="hidden">검색분류</label> <select name="f">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
			</select> <label class="hidden">검색어</label> <input type="text" name="q"
				value="" /> <input class="btn btn-search " type="submit"
				value="검색 " />
			<s:authorize access="isAuthenticated()">
				<input class="btn btn-reg" type="button"
					onclick="location.href='regQanda'" value="글쓰기" />
			</s:authorize>
			<s:authorize access="isAnonymous()">

				<input class="btn-reg" type="button"dksl
					onclick="location.href='/member/login'" value="글쓰기" />
			</s:authorize>
		</fieldset>
	</form>
	<ul class="pager">
		<c:forEach var="i" begin="1" end="${qandaPage}">
			<c:set var="orange" value="" />
			<c:if test="${i==param.p}">
				<c:set var="orange" value="-text- orange bold" />
			</c:if>
			<li><a class="${orange}" href="?p=${i}&t=&q=">${i}</a></li>
		</c:forEach>
	</ul>
</main>