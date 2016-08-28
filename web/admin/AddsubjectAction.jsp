<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.secureinfosoft.java.SubjectAdd"%>
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
    
    <title>Add subject Action</title>
    
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
   
	boolean tushar = SubjectAdd.check(sub);
	
	if(tushar == true)
	{
	
		int k = SubjectAdd.insert(dept,sub);
		if(k>0)
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addsubject.jsp?msg=subject successsfully added&status=1 ");
		}
		else
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addsubject.jsp?msg=Error In addming Subject&status=0");
		}
	}
	else
	{
		response.sendRedirect("http://raxit:8080/GATE-Empowerment/admin/addsubject.jsp?msg=this subject already exist&status=0");
	}
   
   
    
   
    %>
  </body>
</html>
