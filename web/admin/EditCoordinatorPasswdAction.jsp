<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.secureinfosoft.java.MD5password"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Edit coordinator password Action</title>
    
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
   
   	String jadi = request.getParameter("pass");
   	String lallu = request.getParameter("p");
   	String uuid  = request.getParameter("uu");
   	String update = null;
   	
   			
   	
   	
   	if(jadi.equals(lallu))
   	{
   	
   		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("Update CoordinatorPOJO set password = :p where uuid = :u");
		q.setString("p",jadi);
		q.setString("u",uuid);
		int result = q.executeUpdate();
		t.commit();
		sess.close();
		
		response.sendRedirect("DeleteMessage.jsp?msg=Password Successfully Updated...&status=1");
   	}
   	else
   	{
   			try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=jadi;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		update = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(update);
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("Update CoordinatorPOJO set password = :p where uuid = :u");
		q.setString("p",update);
		q.setString("u",uuid);
		int result = q.executeUpdate();
		t.commit();
		sess.close();
		
		response.sendRedirect("DeleteMessage.jsp?msg=Password Successfully Updated...&status=1");
   		
   	}
   
   
   
    %>
  </body>
</html>
