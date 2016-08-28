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
    
    <title>View Chapter</title>
    
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
    String dep = request.getParameter("search");
   
    admin.setAttribute("search_dept",dep);
    
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From ChapterPOJO where department = :d");
    q.setString("d",dep);
    List<ChapterPOJO> l = (List<ChapterPOJO>)q.list(); 
    
    t.commit();
    sess.close();
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewChapterDisplay2.jsp");
    
     %>
  </body>
</html>
