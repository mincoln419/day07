<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.ArrayList" %>
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
		<jsp:param value="." name="path"/>
	</jsp:include>
	<jsp:include page="../template2/aside.jsp">
	<jsp:param value="." name="path"/>
	</jsp:include>
	<%
		int idx=Integer.parseInt(request.getParameter("idx"));
		ArrayList<String[]> alist=(ArrayList<String[]>)application.getAttribute("bbs");
		String[] bean=alist.get(idx);
		%>	
	<td>
			<h1>DETAIL PAGE</h1>		
			<form action="reset.jsp?idx="<%=idx %>>
		<table border=1 cellspacing="0">
		
		<tr>
		<td>글번호></td>
		<td><input type="text" name="idx" value="<%=idx%>" readonly="readonly"></td>
		</tr>
		
		
		
		
		<tr>
		
		<td width="200">

		제목</td>
		
		<td  width="600">
		<input type="text" value="<%=bean[0] %>" name="sub">
		</td>
						
		</tr>
			
		<tr>
		<td>글쓴이</td>	
		<td>
		<input type="text" readonly="readonly" value="<%=bean[1] %>" name="name">
		</td>
		</tr>
		
		<tr>
		<td colspan="2">
		
		<textarea name="content"><%=bean[2] %></textarea>
		</td>
		
		</tr>
		
		<tr>
		<td>
		<input type="submit" value="수정완료">
		
		</td>
		</tr>
		
		
		</table>
	
	</form>
</td>

	<jsp:include page="../template2/footer.jsp">
		<jsp:param value=". " name="path"/>
	</jsp:include>

</body>
</html>