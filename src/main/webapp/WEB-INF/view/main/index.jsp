<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>
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

<link href="/css/main/index.css" type="text/css" rel="stylesheet">
<script src="/js/recommend/index.js"></script>


<section class="center">
   <section class="column">
      <div>
      	<a href="/community/column/1">
      		<img src="/Image/column1.PNG" width="400px" height="300px"><br><br>
      		<span>[칼럼] 우리말 이름 자동차 모델은 어쩌다 자취를 감췄나</span>
      	</a>
      </div>
      <div>
      	<a href="/community/column/2">
      		<img src="/Image/column2.PNG" width="400px" height="300px"><br><br>
      		<span>[칼럼] 나에게 딱 맞는 자동차, 어딘가에 분명히 있다</span>
      	</a>
      </div>
      <div>
      	<a href="/community/column/3">
      		<img src="/Image/column3.PNG" width="400px" height="300px"><br><br>
      		<span>[칼럼] '배기량이 깡패'라는 사실을, 바이퍼는 그 존재로 입증했다</span>
      	</a>
      </div>
   </section>
   <section class="menulist">
      <div>
         <a href="/recommend/customize">내 차 추천</a>
      </div>
      <div>
         <a href="/dictionary/main">알쓸신잡</a>
      </div>
      <div>
         <a href="/community/main">커뮤니티</a>
      </div>
   </section>
</section>