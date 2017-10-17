<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		int idx=Integer.parseInt(request.getParameter("idx"));
		String[] params=new String[3];
				
		params[0]=request.getParameter("sub");
		params[1]=request.getParameter("name");
		params[2]=request.getParameter("content");
		
		
		ArrayList<String[]> bbs=(ArrayList<String[]>)application.getAttribute("bbs");
			
			bbs.remove(idx);
			
			bbs.add(idx,params);
				
				
				application.setAttribute("bbs", bbs);
				
				
				response.sendRedirect("../menu/list.jsp");
				
		%>



</body>
</html>