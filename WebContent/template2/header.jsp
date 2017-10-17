<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="com.hb.util.*, java.util.*"    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
String rootPath=request.getParameter("path");
%>
<body background="<%=rootPath%>/imgs/head.jpg">
<table align="center">
<tr>
	<td colspan="2">
		<img width="800" height="103" alt="" src="<%=rootPath%>/Img/head.jpg">
		<%if(session.getAttribute("result")!=null){		
		%>
		<%
		String name=(String)session.getAttribute("result");
		%>		
		<a href="<%=rootPath%>/Login/logout.jsp">로그아웃||</a>		
		<p><%=name%>님 로그인중입니다</p>
		<%}else{		
		if(application.getAttribute("users")!=null){
		%><br>		
		<a href="<%=rootPath%>/Login/login.jsp">로그인||</a>
		<%}else{%>
		<a href="<%=rootPath%>/index.jsp">로그인||</a>
		<%}%>
			<a href="<%=rootPath%>/Login/join.jsp">회원가입</a>
		<%}%>
	
		
	</td>
</tr>

</body>
</html>