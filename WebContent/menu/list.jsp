<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.hb.util.*"
%>    
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


	<jsp:include page="../template2/header.jsp">
	<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template2/aside.jsp"></jsp:include>

	<td>
		<h1>LIST PAGE</h1>
		<%
		ArrayList<String[]> alist=(ArrayList<String[]>)application.getAttribute("bbs");
		
		%>
		<table border="1" cellspacing="0">
			<tr>
			<td >글번호</td>
			<td >제목</td>
			<td >글쓴이</td>						
			</tr>
			
			<%
			for(int i=alist.size()-1;i>=0;i--){
				String[] msg=alist.get(i);
			%>
			
			<tr>
			<td width="100"><%=i+1 %></td>
			<td width="300"><a href="<%=rootPath%>/BBS/detail.jsp?idx=<%=i %>"><%=msg[0]%></a></td>
			<td width="200"><%=msg[1]%></td>
			
			</tr>	
			
			
			<%
			}
			%>
		
		
		</table>
		
</td>



<jsp:include page="../template2/footer.jsp"></jsp:include>


</body>
	



</body>
</html>
