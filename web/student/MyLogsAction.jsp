<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    HttpSession student = request.getSession();
	String dpt = (String)student.getAttribute("department");
	String sub = (String)student.getAttribute("subject");
	String email = (String)student.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("studentLogin.jsp");
	}
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>my logs</title>
    
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
   
   		Session sess = HibernateUtil.getSessionFactory().openSession();
   		Transaction t = sess.beginTransaction();
   		Query q = sess.createQuery("From UserLogPOJO where email = :e and who = :w");
   		q.setString("e",email);
   		q.setString("w","0");
   		
   		List<UserLogPOJO> l = (List<UserLogPOJO>)q.list();
   		
   		request.getSession().setAttribute("data",l);
   		response.sendRedirect("MyLogsDisplay.jsp");
   
    %>
  </body>
</html>
