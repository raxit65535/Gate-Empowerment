<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.secureinfosoft.java.AptitudeChapterAdd"%>
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
    
    <title>Aptitude chapter add action</title>
    
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
   
   String chapter = request.getParameter("chapter");
   
   boolean rax = AptitudeChapterAdd.checkchapter(chapter);
   
   
   if(rax == true)
   {
   	  int result = AptitudeChapterAdd.addchapter(chapter);
   	  
   	  if(result > 0)
   	  {
   	  		response.sendRedirect("AptitudeChapterAdd.jsp?msg=Chapter successfully added...&status=1");
   	  	
   	  }
   	  else
   	  {
   	  		response.sendRedirect("AptitudeChapterAdd.jsp?msg=error in adding chapter...&status=0");
   	  }
   }
   else
   {
   			response.sendRedirect("AptitudeChapterAdd.jsp?msg=this chapter already exists...&status=0");
   }
   
   
   
    %>
  </body>
</html>
