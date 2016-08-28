<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="com.secureinfosoft.java.Mail"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Forgot Password Action</title>
    
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
    
    String uid = null;
    
    String email = request.getParameter("email_id");
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From CoordinatorPOJO where email = :e");
    q.setString("e",email);
    List<CoordinatorPOJO> std = (List<CoordinatorPOJO>)q.list();
    
    if(std.size()>0)
    {
    	for(CoordinatorPOJO e :std)
    	{
    		uid = e.getUuid();
    	}
    	
    	Mail m = new Mail();
    	m.setTo(email);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("reSetPassword");
			m.setMessage("http://raxit:8080/GATE-Empowerment/coordinator/resetPass.jsp?"+uid);
			email = m.getTo();
			m.setFrom("GATE-Empowerment");
			
			int result;


			result = m.sendMail();
			if(result == 0)
			{
				response.sendRedirect("coordinatorLogin.jsp?msg=mail successfuly sent....!!");
			}
			else
			{
				response.sendRedirect("coordinatorLogin.jsp?msg=Error in sending mail....try again!!");
			}
    	
    }
    
    		else
    		{
    			response.sendRedirect("forgotPass.jsp?msg=no record exist for this email....!!");
    		}
    
    
     %>
  </body>
</html>
