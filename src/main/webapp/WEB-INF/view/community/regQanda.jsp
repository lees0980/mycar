<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
	import="com.mycar.web.security.MycarAuthenticationSuccessHandler"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
Object principal = auth.getPrincipal();
String name = auth.getName();
%>


<body>



	<div id="main">
		<aside id="aside">
			<div id="menu">
				<ul class="M01">
					<li><a href="talk">자유게시판</a></li>
					<li><a href="qanda">QnA</a></li>
					<li><a href="shareitem">공유</a></li>
					<li><a href="column">컬럼</a></li>
				</ul>
			</div>
		</aside>
		<main id="board">
			<form enctype="multipart/form-data" method="post">
				<div class="board">
					<table class="table">
						<tbody>
							<tr>
								<th>제목</th>
								<td><input type="text" name="title" /></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="writer" value="<%=name%>" readonly/>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td><input type="file" name="file" /></td>
							</tr>
							<tr>
								<td><textarea class="content" name="content"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="reg">
					<input type="submit" onClick="location.href='qanda'" value="등록"/> <input type="submit" value="취소" />
				</div>
			</form>



		</main>
	</div>
	
</body>
