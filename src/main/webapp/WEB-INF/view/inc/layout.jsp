<%@page import="java.util.List"%>
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
	<link href="/css/reset.css" type="text/css" rel="stylesheet" />
	<link href="/css/inc/layout.css" type="text/css" rel="stylesheet" />
	
</head>

<body id="body">
	<!------- header 부분 -------->
    <tiles:insertAttribute name="header"/>
    <main id="main">
        <!---------------- aside Left ------------------>
        <tiles:insertAttribute name="asideLeft"/>
        <!---------------- main ------------------>
        <tiles:insertAttribute name="main"/>
        <!---------------- aside Right ------------------>
        <tiles:insertAttribute name="asideRight"/>
    </main>
    <!---------------- Footer ------------------>
    <tiles:insertAttribute name="footer"/>
</body>
</html>