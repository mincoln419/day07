<%@page import="com.hb.util.*"%>
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
<jsp:include page="../template2/header.jsp">
<jsp:param value="<%=rootPath %>" name="path"/> 
</jsp:include>

<jsp:include page="../template2/aside.jsp">
<jsp:param value="<%=rootPath %>" name="path"/> 
</jsp:include>

<jsp:include page="../template2/footer.jsp">
<jsp:param value="<%=rootPath %>" name="path"/> 
</jsp:include>

</body>
</html>