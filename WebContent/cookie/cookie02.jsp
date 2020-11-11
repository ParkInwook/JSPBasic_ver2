<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	show쿠키가 있다면 쿠키가 가지고 있는 날짜를
	화면에 출력. 만약에 쿠키가 없으면 "쿠키가 없네용~" 출력
	
	*/
	//확인하는 곳
	Cookie[] arr = request.getCookies();
	String name = null; //쿠키값을 저장할 변수
	if(arr != null) { 
		for(Cookie c : arr) {
			if(c.getName().equals("show") ) {
				name = c.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(name == null) { %>
		쿠키가 없네용~
	<% } else {%>
		<%=name %>
	<% } %>
	
	
	
</body>
</html>