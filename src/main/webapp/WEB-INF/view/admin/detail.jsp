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
                     <th>게시판</th>
                     <th>제목</th>
                     <th>작성일</th>
                     <th>조회수</th>
                  </tr>
               </thead>
               
               <tbody>
                     <c:forEach var="n" items="${list}">   
                     <tr>
                        <td><input type="checkbox" name ="id" value="${n.id}"></td>
                        <td>${n.userId}</td>
                        <td>${n.gesi}</td>
                        <td>${n.title}</td>
                        <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/></td>
                        <td>${n.hit}</td>
                     </tr>         
                  </c:forEach>
               </tbody>
               
            </table>
            <input type="submit" onclick="location.href='member'" value="삭제"><br><br>
            </form>
            <div class="indexer margin-top align-right">
				<h3 class="hidden"></h3>
		</div>
	</main>