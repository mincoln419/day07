<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.hb.util.*"
import="java.util.ArrayList" 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ADD PAGE</title>
</head>
<body>

<% 
String rootPath=request.getContextPath();

%>


	<jsp:include page="../template2/header.jsp">
	<jsp:param value="<%=rootPath%>" name="path"/>
	</jsp:include>
	<jsp:include page="../template2/aside.jsp"></jsp:include>

	<td>
		<h1>ADD PAGE</h1>
		<%
		
			ArrayList<String[]> bbs=(ArrayList<String[]>)application.getAttribute("bbs");
			if(bbs==null){
				bbs=new ArrayList();
			}	
		
			if("POST".equals(request.getMethod())){
				String[] params=new String[3];
				params[0]=request.getParameter("sub");
				params[1]=request.getParameter("name");
				params[2]=request.getParameter("content");
				
				
				bbs.add(params);
				application.setAttribute("bbs", bbs);
				
				
				response.sendRedirect("list.jsp");
				return;}
		%>
		
		
		<form action="add.jsp" method="post">
		
			<table border="0">
				<tr>
				<td>제목</td>
				<td>
				<input type="text" name="sub" size="50">
				</td>				
				</tr>
				<tr>
				<td>글쓴이</td>
				<td>
				<%String name=(String)session.getAttribute("result"); %>
				<input type="text" readonly="readonly" value="<%=name%>" name="name">
				</td>				
				</tr>
				<tr>
				<td>내용</td>
				<td>
				<textarea  rows="5" cols="50" name="content">
				
				</textarea>
				</td>				
				</tr>
				<tr>
				<td align="center" colspan="2">
					<input type="submit" value="작성">
					<input type="reset" value="취소">
				
				</td>
								
				</tr>
				
				
			
			</table>
		</form>
</tr>

<jsp:include page="../template2/footer.jsp"></jsp:include>


</body>
	



</body>
</html>