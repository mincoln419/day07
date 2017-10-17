<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%String rootPath=request.getContextPath();%>
<tr>
	<td>		
	
	<p><a href="<%=rootPath%>/index.jsp">HOME</a>||</p>
				<%			
			if(session.getAttribute("result")!=null){		
				%>		
		<%if(application.getAttribute("bbs")!=null){ %>
		<p><a href="<%=rootPath%>/menu/list.jsp">LIST</a>||</p>
		<%}else{%>
		<p><a href="<%=rootPath%>/index.jsp">LIST</a>||</p>
		<%}%>
		<p><a href="<%=rootPath%>/menu/add.jsp">ADD</a>||</p>
		<p><a href="#">menu3</a>||</p>
		<p><a href="#">menu4</a>||</p>
		
		
	<%}else{%>	
	
		<p><a href="<%=rootPath%>/Login/login.jsp">LIST</a>||</p>
		<p><a href="<%=rootPath%>/Login/login.jsp">ADD</a>||</p>
		<p><a href="#">menu3</a>||</p>
		<p><a href="#">menu4</a>||</p>	
	
	
	<%} %>
	
	
	
	</td>
	
	
</body>
</html>