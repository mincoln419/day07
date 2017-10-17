<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.hb.util.*, java.util.*" 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%String rootPath=request.getContextPath();%>

	<jsp:include page="../template2/header.jsp">
	<jsp:param value="<%=rootPath%>" name="path"/>
	</jsp:include>
	<jsp:include page="../template2/aside.jsp"></jsp:include>


	<td>
		<h1>로그인페이지</h1>
		
<% 

boolean chk=false;
if("POST".equals(request.getMethod())){
	ArrayList<HashMap> users=(ArrayList)application.getAttribute("users");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	for(int i=0;i<users.size();i++){
		HashMap<String,String> user=users.get(i);
		if(user.get("id").equals(id)&&user.get("pw").equals(pw)){			
		session.setAttribute("result", user.get("name"));
		chk=true;
		break;		
	}
}
	
	if(chk){
	%>
	<h1>LOGIN 성공</h1>
	<%}else{%>		
	<h1>LOGIN 실패</h1>	
	<%}
	
	
}else{

%>
		
		
		
		<form action="login.jsp" method="post">
		<p>
		아이디:<input type="text" name="id">
		</p>
		<p>		
		비밀번호:<input type="password" name="pw">
		</p>
		<p>		
			<input type="submit" value="LOGIN">
			<input type="reset" value="CANCLE">
		</p>
		</form>
		
		
	</td>
<%}%>
</tr>

<jsp:include page="../template2/footer.jsp"></jsp:include>


</body>
	
</body>
</html>