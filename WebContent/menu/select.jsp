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
<table align="center">
<tr>
	<td colspan="2">
		<img width="800" height="103" alt="" src="<%=rootPath%>/Img/head.jpg">
		<%if(session.getAttribute("result")!=null){%><a href="<%=rootPath%>/Login/logout.jsp">�α׾ƿ�</a>
		<%}else{%>
		<a href="<%=rootPath%>/Login/login.jsp">�α���</a>
		<%}%>
		<a href="#">ȸ������</a>
	</td>
	<jsp:include page="../template2/aside.jsp"></jsp:include>

	<td>
	<%
	String idx=request.getParameter("idx");
	JavaDao dao=new JavaDao();
	JavaDto bean=dao.selectOne(idx);
	
	
	%>
	
	
	
	<h1><%=idx%>�� ��������<%=session.getAttribute("result")%></h1>
	<p>
		���:<%=bean.getSabun()%>
	</p>
	
	<p>
		�̸�:<%=bean.getName()%>
	</p>
	
	<p>	
		��¥:<%=bean.getNalja()%>
	</p>
	
	<p>	
		�ݾ�:<%=bean.getPay()%>
	</p>
	
	</td>

</tr>

<jsp:include page="../template2/footer.jsp"></jsp:include>


</body>
	



</body>
</html>