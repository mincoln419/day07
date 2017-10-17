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
		<p><a href="<%=rootPath%>/menu/list.jsp">리스트</a>||</p>
		<p><a href="<%=rootPath%>/menu/add.jsp">입력</a>||</p>
		<p><a href="#">menu3</a>||</p>
		<p><a href="#">menu4</a>||</p>
		
	</td>

	<td>
	
			
			<%
			//session.setAttribute("result", null);
			//세션 스코프로 result=false 를 기억시킨다
			//session.removeAttribute("result");// 세션을 지우는 방법
			session.invalidate();//세션 자체를 갱신하는 방법 등 모두 가능하다.
			%>	
		
		<h1>로그아웃성공</h1>	
		
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