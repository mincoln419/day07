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
		<a href="<%=rootPath%>/Login/logout.jsp">�α׾ƿ�||</a>		
		<p><%=name%>�� �α������Դϴ�</p>
		<%}else{		
		if(application.getAttribute("users")!=null){
		%><br>		
		<a href="<%=rootPath%>/Login/login.jsp">�α���||</a>
		<%}else{%>
		<a href="<%=rootPath%>/index.jsp">�α���||</a>
		<%}%>
			<a href="<%=rootPath%>/Login/join.jsp">ȸ������</a>
		<%}%>
	
		
	</td>
</tr>

</body>
</html>