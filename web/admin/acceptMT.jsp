<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
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
    
    <title>Accept Material</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><br>
    <% 
    String _id = request.getQueryString();
    String don = "0"; 
    Session sess = HibernateUtil.getSessionFactory().openSession(); 
    Transaction t = sess.beginTransaction(); 
    Query q = sess.createQuery("Update MaterialPOJO set donation = :d where id = :i"); 
    q.setString("d",don);
    q.setString("i",_id);
    
    int result = q.executeUpdate();
    t.commit();
    sess.close();
    
    response.sendRedirect("ViewDonationMaterialAction.jsp"); 
     %>
  </body>
</html>
