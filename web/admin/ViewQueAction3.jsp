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
HttpSession admin = request.getSession();
String email =(String)admin.getAttribute("email");

if(email == null)
{
	response.sendRedirect("error.jsp");
}

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>View Question</title>
    
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
    String sub = request.getParameter("search");
    //HttpSession admin = request.getSession();
    admin.setAttribute("qsearch_subject",sub);
    String dep = (String)admin.getAttribute("qsearch_dept");
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From QuestionPOJO where department = :d and subject = :s");
    q.setString("d",dep);
    q.setString("s",sub);
    List<QuestionPOJO> l = (List<QuestionPOJO>)q.list(); 
    
    t.commit();
    sess.close();
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewQueDisplay3.jsp");
    
     %>
  </body>
</html>
