<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] arr = request.getCookies();
	
	String id = null; //아이디를 저장할 변수
	if(arr != null) {
		for(Cookie c : arr) {
			if(c.getName().equals("user_id")) {
				id = c.getValue(); //값
			}
		}
	}

	if(id == null) { //쿠키가 만료된 경우는 다시 처음으로.
		response.sendRedirect("cookie_login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %>님 환영합니다.


</body>
</html>