<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication" %>
<%@page import="com.mycar.web.security.MycarAuthenticationSuccessHandler" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   Object principal = auth.getPrincipal();
   String name =auth.getName();
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <link href="/css/admin/reset.css" type="text/css" rel="stylesheet">
    <link href="/css/admin/admin.css" type="text/css" rel="stylesheet">
    <style>
    th{
       width: 60px;
    }
    </style>
</head>
	<main id="main">
    	<h3 class="hidden">회원관리</h3>
            <form class="comForm" action="deleteMember">
            <table class="comTable">
               <thead>
                  <tr>
                     <th>체크</th>
                     <th>아이디</th>
                     <th>이름</th>
                     <th>성별</th>
                     <th>전화번호</th>
                     <th>나이</th>
                  </tr>
               </thead>
               
               <tbody>
                     <c:forEach var="n" items="${list}">   
                     <tr>
                        <td><input type="checkbox" name ="id" value="${n.id}"></td>
                        <td><a href="/admin/member/${n.userId}">${n.userId}</a></td>
                        <td>${n.name}</td>
                        <td>${n.gender}</td>
                        <td>${n.phone}</td>
                        <td>${n.age}</td>
                     </tr>         
                  </c:forEach>
               </tbody>
               
            </table>
            <input type="submit" onclick="location.href='member'" value="삭제"><br><br>
            </form>
            <div class="indexer margin-top align-right">
				<h3 class="hidden"></h3>
		</div>
		<form class="comTable-form">
			<fieldset>
				<legend class="hidden">회원 검색 필드</legend>
				<label class="hidden">검색분류</label> 
				<select name="f">
					<option value="userId">아이디</option>
					<option value="name">이름</option>
					<option value="gender">성별</option>
					<option value="age">나이</option>
				</select> 
				<label class="hidden">검색어</label> 
				<input type="text" name="q" value="" /> 
				<input class="btn btn-search " type="submit" value="검색 " />
			</fieldset>
		</form>
		<ul class="pager">
			<c:forEach var="i" begin="1" end="${memberPage}">
				<c:set var="orange" value="" />
				<c:if test="${i==param.p}">
					<c:set var="orange" value="-text- orange bold" />
				</c:if>
				<li><a class="${orange}" href="?p=${i}&t=&q=">${i}</a></li>
			</c:forEach>
		</ul>
	</main>