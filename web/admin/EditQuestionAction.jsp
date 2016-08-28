<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.java.EditQuestion"%>
<%@page import="com.secureinfosoft.java.QuestionAdd"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
HttpSession admin = request.getSession();
String heli =(String)admin.getAttribute("email");

if(heli == null)
{
	response.sendRedirect("error.jsp");
}

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Edit Question</title>
    
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
    
    	String department = request.getParameter("department");
    	String subject = request.getParameter("subject");
    	String chapter = request.getParameter("chapter");
    	String question = request.getParameter("question");
    	String a = request.getParameter("a");
    	String b = request.getParameter("b");
    	String c = request.getParameter("c");
    	String d = request.getParameter("d");
    	String answer = request.getParameter("answer");
    	String description = request.getParameter("description");
    	String donation = request.getParameter("donation");
    	String id = request.getParameter("id");
    	String q = request.getParameter("q");
    	
    	
    	
    	if(question.equals(q))
    	{
    	int status = EditQuestion.update(department,subject,chapter,question,a,b,c,d,description,answer,donation,id);	
    	
    	if(status >0)
    	{
    		response.sendRedirect("DeleteMessage.jsp?msg=Question Successfully updated...&status=1");
    	}
    	}
    	else
    	{
    		boolean rax = QuestionAdd.checkque(question);
    		if(rax == true)
    		{
    			int status = EditQuestion.update(department,subject,chapter,question,a,b,c,d,description,answer,donation,id);	
    	
    	        if(status >0)
    			{
    		      response.sendRedirect("DeleteMessage.jsp?msg=Question Successfully updated...&status=1");
    	        }
    			
    		}
    		else
    		{
    			response.sendRedirect("DeleteMessage.jsp?msg=Question already exits..&status=0");
    		}
    	}
    	
    	
    	
    
    
     %>
  </body>
</html>
