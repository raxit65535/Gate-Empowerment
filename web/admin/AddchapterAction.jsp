<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.secureinfosoft.java.ChapterAdd"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

	HttpSession admin = request.getSession();
	String email = (String)admin.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("error.jsp");
	}

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Add chapter Action</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <%
  	String dept = request.getParameter("department");
  	String sub = request.getParameter("subject");
  	String chap = request.getParameter("chapter");
  
  
  boolean tushar = ChapterAdd.check(chap,dept,sub);
	
	if(tushar == true)
	{
	
		int k = ChapterAdd.insert(dept,sub,chap);
		if(k>0)
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addchapters.jsp?msg=chapter successsfully added&status=1 ");
		}
		else
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addchapters.jsp?msg=Error In adding chapter&status=0");
		}
	}
	else
	{
		response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addchapters.jsp?msg=this subject already exist&status=0");
	}
   
   
  
   %>
    
  </body>
</html>
