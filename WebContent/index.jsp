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
1.ǥ�ø����� ���� �� �ִ�
2.���������� �������� �ż� �����˻簡 �̸� �̷������
3.���¸� html�� �ױ��̰� ������ java�̴�.
4.param���� ���� �����ΰ� �ƴ϶� ����η� ǥ���� �� �ִ�.

-->
</body>
</html>