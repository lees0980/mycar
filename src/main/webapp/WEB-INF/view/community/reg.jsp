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

<style>
.content{
	width:1000px;
	height:500px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="/css/main/community.css" rel="stylesheet">

<body>



	<div id="main">
		
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
								
								<td><input type="text" name="writer" value="<%=name%>" hidden/>
							</tr>
<!-- 							<tr> -->
<!-- 								<th>첨부파일</th> -->
<!-- 								<td><input type="file" name="file" /></td> -->
<!-- 							</tr> -->
							
						</tbody>
					</table>
							<tr>
								<td><textarea class="content" name="content"></textarea></td>
							</tr>
				</div>
				<div class="reg">
					<input type="submit" onClick="location.href='talk'" value="등록"/> <input type="button" value="취소" onClick="location.href='talk'" />
				</div>
			</form>



		</main>
	</div>
	
</body>
