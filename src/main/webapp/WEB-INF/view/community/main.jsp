<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
	import="com.mycar.web.security.MycarAuthenticationSuccessHandler"%>

<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
Object principal = auth.getPrincipal();
String name = auth.getName();
%>

<link href="/css/main/community.css" type="text/css" rel="stylesheet">

<section id="center">
	<section class="community1">
		<div class="talkmenu communitymenu ">
			<a href="talk?p=1&t=&q=">자유게시판</a>
		</div>
		<div class="qandamenu communitymenu">
			<a href="qanda?p=1&t=&q=">QnA</a>
		</div>
	</section>
	<section class="community1">
		<div class="sharemenu communitymenu">
			<a href="shareitem?p=1&t=&q=">공유</a>
		</div>
		<div class="colmenu communitymenu">
			<a href="column">컬럼</a>
		</div>
	</section>
</section>




