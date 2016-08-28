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
    
    <title>purformance graph action</title>
    
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
    
    
    String graph = request.getParameter("graph");
    
    
    if(graph.equals("subject"))
    {
    
    	String subject = request.getParameter("subject");
    	String student1 = request.getParameter("student");
    	String type = request.getParameter("type");
    	
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From StudentMarksPOJO where department = :d and subject = :s and type = :t and email = :e");
		q.setString("d",department);
		q.setString("s",subject);
		q.setString("t",type);
		q.setString("e",student1);
		
		
		List<StudentMarksPOJO>  l = (List<StudentMarksPOJO>)q.list();  	
		
		request.getSession().setAttribute("graph",l);
		response.sendRedirect("Graph.jsp?who="+student1);
    
    
    }
    else if(graph.equals("chapter"))
    {
    
        String subject = request.getParameter("subject");
    	String student1 = request.getParameter("student");
    	
    	String chapter = request.getParameter("chapter");
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From StudentMarksPOJO where department = :d and subject = :s and chapter = :ch  and email = :e");
		q.setString("d",department);
		q.setString("s",subject);
		q.setString("ch",chapter);

		q.setString("e",student1);
		
		
		List<StudentMarksPOJO>  l = (List<StudentMarksPOJO>)q.list();  	
		
		request.getSession().setAttribute("graph",l);
		response.sendRedirect("Graph.jsp?who="+student1);
    
    }
    else if(graph.equals("Aptitude"))
    {
    
    	String subject = request.getParameter("subject");
    	String student1 = request.getParameter("student");
    	
    	String chapter = request.getParameter("chapter");
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From StudentMarksPOJO where subject = :s and chapter = :ch  and email = :e");
		//q.setString("d",department);
		q.setString("s",subject);
		q.setString("ch",chapter);
		q.setString("e",student1);
		
		
		List<StudentMarksPOJO>  l = (List<StudentMarksPOJO>)q.list();  	
		
		request.getSession().setAttribute("graph",l);
		response.sendRedirect("Graph.jsp?who="+student1);
    
    }
    
     %>
    
    
  </body>
</html>
