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

		
		
	</td>

</tr>

<tr>
	<td>		
		<p><a href="<%=rootPath%>/index.jsp">HOME</a>||</p>
		<p><a href="<%=rootPath%>/menu/list.jsp">����Ʈ</a>||</p>
		<p><a href="<%=rootPath%>/menu/add.jsp">�Է�</a>||</p>
		<p><a href="#">menu3</a>||</p>
		<p><a href="#">menu4</a>||</p>
		
	</td>

	<td>
	
			
			<%
			//session.setAttribute("result", null);
			//���� �������� result=false �� ����Ų��
			//session.removeAttribute("result");// ������ ����� ���
			session.invalidate();//���� ��ü�� �����ϴ� ��� �� ��� �����ϴ�.
			%>	
		
		<h1>�α׾ƿ�����</h1>	
		
	</td>

</tr>

<tr>
	<td width="800" height="105" background="<%=rootPath%>/Img/foot.jpg" colspan="2">
		����� �������� ��굿�� ��� �� ��(��)���� �ｺ�忡 3���� ����ߴ�. �� ���� ���� ���� ���� ���۽����� ���� �뺸�� �޾Ҵٴ� �� ��. ���簡 �Ϸ�� �� �� �� ������ �ｺ���� ã������ �ｺ�� �ƴ� ũ�ν���...
	</td>

</tr>


</table>


</body>
	



</body>
</html>