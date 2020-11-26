<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div th:if="${msg}">
		<span th:text="${msg}"></span>
	</div>
	<div>
		<span><a href="/admin/customize">Upload More</a></span>
	</div>
</body>
</html>