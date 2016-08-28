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
	HttpSession coordinator = request.getSession();
	String dpt = (String)coordinator.getAttribute("department");
	String sub = (String)coordinator.getAttribute("subject");
	String email = (String)coordinator.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("coordinatorLogin.jsp");
	}
 %>
 
 <html>
 <head>
     <title>QuestionDB</title>
    
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
   		Query q = sess.createQuery("From QuestionPOJO where department = :d and subject = :s");
   		q.setString("d",dpt);
   		q.setString("s",sub); 
   		
   		
   		List<QuestionPOJO> l = (List<QuestionPOJO>)q.list(); 
   		
   		request.getSession().setAttribute("data",l);
   		response.sendRedirect("QuestionDBDisplay.jsp");
    
     %>
  </body>
</html>
