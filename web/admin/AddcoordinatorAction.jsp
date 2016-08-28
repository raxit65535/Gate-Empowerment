<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.secureinfosoft.java.CoordinatorAdd"%>
<%@page import="com.secureinfosoft.java.*"%>
<%@page import="java.security.MessageDigest"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

	HttpSession admin = request.getSession();
	String _email = (String)admin.getAttribute("email");
	
	if(_email == null)
	{
		response.sendRedirect("error.jsp");
	}

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Add coordinator</title>
    
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
    
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("pass");
    String department = request.getParameter("department");
    String subject = request.getParameter("subject");
    
    String password1 = null;
    UUID idone = UUID.randomUUID();
    String uuid = idone.toString();
    
    try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=password;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		password1 = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
    
   boolean tushar = CoordinatorAdd.check(email);
	
	if(tushar == true)
	{
	
		int k = CoordinatorAdd.insert(name,email,password1,department,uuid,subject);
		if(k>0)
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addcoordinator1.jsp?msg=coordinator successsfully added&status=1 ");
		}
		else
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addcoordinator1.jsp?msg=Error In addming coordinator&status=0");
		}
	}
	else
	{
		response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addcoordinator1.jsp?msg=this email id alreeady exist&status=0");
	}
   
   
  
    
     %>
  </body>
</html>
