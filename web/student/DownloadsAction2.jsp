<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.MaterialPOJO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

 HttpSession student = request.getSession();
 String email = (String)student.getAttribute("email");
 String department = (String)student.getAttribute("department");
 if(email == null)
 {
 	response.sendRedirect("studentLogin.jsp");
 }

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Downloads Action</title>
    
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
    	String search = request.getParameter("search");
    	String value = request.getParameter("value");
    
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	
    	
    	if(search.equals("Name"))
    	{
    	Query q = sess.createQuery("From MaterialPOJO where department = :d and name = :n");
    	q.setString("d",department);
    	q.setString("n",value);
    	
    	List<MaterialPOJO> l = (List<MaterialPOJO>)q.list(); 
    	
    	request.getSession().setAttribute("data",l);
    	
    	response.sendRedirect("DownloadsDisplay2.jsp");
    	}
    	else
    	{
    	
    	
    	Query q = sess.createQuery("From MaterialPOJO where department = :d and subject = :s");
    	q.setString("d",department);
    	q.setString("s",value);
    	
    	List<MaterialPOJO> l = (List<MaterialPOJO>)q.list(); 
    	
    	request.getSession().setAttribute("data",l);
    	
    	response.sendRedirect("DownloadsDisplay2.jsp");
     }
     %>
  </body>
</html>
