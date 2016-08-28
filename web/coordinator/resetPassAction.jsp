<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.secureinfosoft.java.*" %>
<%@ page import="java.security.MessageDigest" %>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Reset Passwd Action</title>
    
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
    int status = 0;
    String uu = request.getParameter("uuid");
    String p1= request.getParameter("cnpass");
    System.out.println(p1);
     System.out.println(uu);
    String passwd = null;
    try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=p1;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		passwd = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(passwd);
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("Update CoordinatorPOJO set password = :p where uuid = :u");
		q.setString("p",passwd);
		q.setString("u",uu);
		status = q.executeUpdate();
		t.commit();
		sess.close();
		
		
		if(status > 0)
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/coordinator/resetPass.jsp?msg=Password successfully updatd...");
		} 
		else
		{
			response.sendRedirect("http://raxit:8080/GATE-Empowerment/coordinator/resetPass.jsp?msg=error updateing password...try again...");
		}
    
     %>
  </body>
</html>
