<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. Date클래스를 이용해서 xxxx년xx월xx일 형태로 날짜를 생성
	쿠키이름은 show쿠키로 생성해주세요.
	*/
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String now = sdf.format(date);
	
	//쿠키문법
	Cookie coo = new Cookie("show", now);
	coo.setMaxAge(1000);
	response.addCookie(coo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie02.jsp">쿠키확인하기</a>
	
</body>
</html>