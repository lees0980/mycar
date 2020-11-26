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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main/detail.css">
<section class="detail">
   <div class="test">
      <table class="table r table-hover">
         <tbody id=tbody>
            <tr>
               <th>제목</th>
               <td>${n.title}</td>
            </tr>
            <tr>
               <th>작성일</th>
               <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/></td>
            </tr>
            <tr>
               <th>작성자</th>
               <td>${n.writer}</td>
            </tr>
            <tr>
               <th>조회수</th>
               <td>${n.hit+1}</td>
            </tr>
         </tbody>
      </table>

      <div class="content">${n.content}</div>

      <s:authorize access="isAuthenticated()">
         <form enctype="multipart/form-data" method="post">
            <tr>
               <td><textarea class="reply" name="content"
                     placeholder="댓글 작성공간"></textarea></td>
            </tr>
            <tr>
               <td><input type="text" name="name" value="<%=name%>" hidden></td>
            </tr>
            <tr>
               <td><input type="text" name="talkId" value="${n.id}" hidden></td>
               <td><input type="text" name="qandaId" value="${n.id}" hidden></td>
               <td><input type="text" name="shareItemId" value="${n.id}" hidden></td>
               <td><input type="text" name="columnId" value="${n.id}" hidden></td>
            </tr>

            <input class="reg-reply" type="submit" value="댓글쓰기"> <br>
         </form>
      </s:authorize>

      <table class="table table-hover">
         <c:forEach var="t" items="${t}">
            <tr>
               <th>${t.name}</th>
               <th><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/></th>
            </tr>
            <tr>
               <th>${t.content}</th>
            </tr>
         </c:forEach>
      </table>
   </div>
</section>