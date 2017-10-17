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
			//세션 스코프로 result=true 를 기억시킨다
			//session.setAttribute("loginBean", true);	//이 방식외에 useBean을 통해서 객체 생성으로 기억하는 방법 
			//session.setAtrribute는 session 방식만 가능한데, 밑에 꺼는 session, application, page, request 등 4가지 방법을 사용할 수 있다.
		%>
		<h1>로그인성공</h1>
		
		<jsp:useBean class="com.hb.util.LoginDto" id="result" scope="session"></jsp:useBean>
			<jsp:setProperty value="<%=name%>" property="name" name="result"/>
		<p>
			<a href="logout.jsp">로그아웃</a>
		
		</p>
		
	
	<%}else{
		response.sendRedirect("login.jsp");
	}%>	
	
	
		
	</td>

</tr>

<tr>
	<td width="800" height="105" background="<%=rootPath%>/Img/foot.jpg" colspan="2">
		서울시 영등포구 당산동에 사는 김 모(여)씨는 헬스장에 3개월 등록했다. 한 달이 되지 않은 무렵 갑작스럽게 이전 통보를 받았다는 김 씨. 공사가 완료된 한 달 후 이전한 헬스장을 찾았으나 헬스가 아닌 크로스핏...
	</td>

</tr>


</table>


</body>
	



</body>
</html>
