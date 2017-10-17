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

<% 
String rootPath=request.getContextPath();
%>



<jsp:include page="/template2/header.jsp">
<jsp:param value="<%=rootPath %>" name="path"/> 
</jsp:include>
<jsp:include page="/template2/aside.jsp"></jsp:include>
<jsp:include page="/template2/menu.jsp"></jsp:include>
<jsp:include page="/template2/footer.jsp"></jsp:include>

<!-- />
1.표시만으로 닫을 수 있다
2.내부적으로 컴파일이 돼서 오류검사가 미리 이루어진다
3.형태만 html의 테그이고 실질은 java이다.
4.param값을 통해 절대경로가 아니라 상대경로로 표시할 수 있다.

-->
</body>
</html>