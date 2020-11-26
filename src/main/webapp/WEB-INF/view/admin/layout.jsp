<%-- <%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
	import="com.mycar.web.security.MycarAuthenticationSuccessHandler"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
	<tiles:insertAttribute name="header" />
	<div class="container">
        <aside class="asideLeft">
            <ul class="menu">
                <a href="customize"><li>차 등록/삭제</li></a>
                <a href="talk"><li>자유게시판 관리</li></a>
                <a href="qanda"><li>Q&A게시판 관리</li></a>
                <a href="shareItem"><li>나눔게시판 관리</li></a>
                <a href="column"><li>칼럼 관리</li></a>
                <a href="profile"><li>회원관리</li></a>
                <a href="parts"><li>부품관리</li></a>
            </ul>
        </aside>
        <main id="main">
            <p>관리자 페이지입니다.</p>
        </main>
        <aside id="asideRight">
            <p>어사이드</p>
        </aside>
    </div>
    <footer id="footer">
        <p>영역</p>
    </footer>
</body>
</html> --%>