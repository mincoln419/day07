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
	<jsp:param value="<%=rootPath%>" name="path"/>
	</jsp:include>
	<jsp:include page="../template2/aside.jsp"></jsp:include>

<%

if("POST".equals(request.getMethod())){
	if(!request.getParameter("pw").equals("pw2")){
		response.sendRedirect("join.jsp");		
	}else{
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	
	}
}
%>


	<td>
		<%String param1=request.getParameter("sabun").trim();
		String param2=request.getParameter("name").trim();
		int sabun=Integer.parseInt(param1);
		String name=param2;
		LoginDao dao=new LoginDao();
		boolean result2=dao.login(sabun,name);
		if(result2){
			//���� �������� result=true �� ����Ų��
			//session.setAttribute("loginBean", true);	//�� ��Ŀܿ� useBean�� ���ؼ� ��ü �������� ����ϴ� ��� 
			//session.setAtrribute�� session ��ĸ� �����ѵ�, �ؿ� ���� session, application, page, request �� 4���� ����� ����� �� �ִ�.
		%>
		<h1>�α��μ���</h1>
		
		<jsp:useBean class="com.hb.util.LoginDto" id="result" scope="session"></jsp:useBean>
			<jsp:setProperty value="<%=name%>" property="name" name="result"/>
		<p>
			<a href="logout.jsp">�α׾ƿ�</a>
		
		</p>
		
	
	<%}else{
		response.sendRedirect("login.jsp");
	}%>	
	
	
		
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
