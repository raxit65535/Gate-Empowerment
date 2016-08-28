<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.secureinfosoft.java.QuestionAdd"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

	HttpSession student = request.getSession();
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
    
    <title>Add Question Action</title>
    
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
    
    String _department = request.getParameter("department");
    String _subject  = request.getParameter("subject");
    String _chapter = request.getParameter("chapter");
    String _question = request.getParameter("question");
    String _a = request.getParameter("a");
    String _b = request.getParameter("b");
    String _c = request.getParameter("c");
    String _d = request.getParameter("d");
    String _answer = request.getParameter("answer");
    String _description = request.getParameter("description");
    String _donation = "0";
    String uuid = null;
   	UUID idone = UUID.randomUUID();
   	uuid = idone.toString(); 
    
    
    boolean fofo = QuestionAdd.checkque(_question);
    
    if(fofo == true)
    {
    
    int status = QuestionAdd.addquestion(_department , _subject , _chapter , _question , _a , _b , _c , _d , _answer , _description , _donation,uuid);
    
    if(status > 0)
    {
    	response.sendRedirect("AptitudeQueAdd.jsp?msg=question added successfully...&status=1");
    }
    
    else
    {
    response.sendRedirect("AptitudeQueAdd.jsp?msg=error in adding question...&status=0");
    }
    }
    else
    {
    	response.sendRedirect("AptitudeQueAdd.jsp?msg=question already exists...&status=0");
    }
    
     %>
  </body>
</html>
