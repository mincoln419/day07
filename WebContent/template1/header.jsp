<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
String rootPath=request.getContextPath();
%>

<table align="center">
<tr>
	<td colspan="2">
		<img width="800" height="103" alt="" src="<%=rootPath%>/Img/head.jpg">
		<a href="<%=rootPath%>/Login/login.jsp">로그인</a>
		<a href="#">회원가입</a>
		
	</td>
</tr>
</table>
</body>
</html>