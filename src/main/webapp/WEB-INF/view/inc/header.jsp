<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>

<%@page
   import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
   import="com.mycar.web.security.MycarAuthenticationSuccessHandler"%>

<%Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   Object principal = auth.getPrincipal();
   String name =auth.getName();
%>

<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<script src="/js/inc/header.js"></script>
<link href="/css/admin/reset.css" type="text/css" rel="stylesheet">
<link href="/css/inc/header.css" type="text/css" rel="stylesheet">

<header id="header">
   <section class="logo">
      <div>
         <a href="/main/index"><img src = "/Image/logo.png" width = "60px" height = "60px";> </a>
      </div>
   </section>
   <section class="headerBtn">
      <ul>
         <li><a href="/recommend/customize">내 차 추천</a></li>
         <li><a href="/dictionary/main">자동차 알쓸신잡</a></li>
         <li><a href="/community/main">커뮤니티</a></li>
         <li><a href="/company/main">회사 소개</a></li>
         <li><a href="">고객지원</a></li>
         
      </ul>
   </section>
   <section class="login">
      <div>
         <s:authorize access="isAnonymous()">
            <a href="/member/signup">회원가입</a>
         </s:authorize>
      </div>
      <br>
      <div>
         <s:authorize access="isAnonymous()">
            <a href="/member/login">로그인</a>
         </s:authorize>
         
         <s:authorize access="isAuthenticated()">
            <li><a href="/member/logout">로그아웃</a></li>
         </s:authorize>
         
         <s:authorize access="isAuthenticated()">
            <%=name%>님 반갑습니다
         </s:authorize>      
         
         <s:authorize access="hasAuthority('ADMIN')">
            <li><a href="/admin/main">관리자페이지</a></li>
         </s:authorize>
      </div>
   </section>
</header>