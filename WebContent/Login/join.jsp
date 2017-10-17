<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.hb.util.*" import="java.util.HashMap, java.util.ArrayList"
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
	if(!request.getParameter("pw").equals(request.getParameter("pwchk"))){
		
		response.sendRedirect("join.jsp?msg=PwErr");
		
		
	}else{
		ArrayList users=(ArrayList)application.getAttribute("users");
		if(users==null){
			users=new ArrayList();
			application.setAttribute("users",users);	
		}else{
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	HashMap<String,String> map=new HashMap<String, String>();
	map.put("id",id);
	map.put("pw",pw);
	map.put("name",name);
	users.add(map);
	
		session.setAttribute("users",users);

		%>
		<td>
		<h1>회원가입성공</h1>
		</td>
		<%
		
		
		}		
	}
}else{	
	%>
	
	<td>
	<%out.println("<h3>"+request.getParameter("msg"));%>
	<h1>JOIN US</h1>
	<form method="post">
		<table>
			<tr>
			<td bgcolor=#cccccc >아이디</td>
			<td>
			
			<input  type="text" name="id">
			</td>			
			</tr>
			<tr>
			<td bgcolor=#cccccc  >비밀번호</td>
			<td>
			<input type="password" name="pw">
			</td>	
			<td bgcolor=#cccccc >비밀번호 입력확인</td>
			<td>
			<input type="password" name="pwchk">
			</td>					
			</tr>
			<tr>
			<td bgcolor=#cccccc>이름</td>
			<td>
			<input type="text" name="name">
			</td>			
			</tr>
			<tr>
			<td colspan="2">
			
			<input type="submit" value="Join">
			<input type="reset" value="Cancle">
			</td>
			
			</tr>
			
		
		</table>
	
	
	</form>
	
	
	</td>
	
	
	
<%}
%>
	
	</td>

	<jsp:include page="../template2/footer.jsp"/>

</body>
	



</body>
</html>
