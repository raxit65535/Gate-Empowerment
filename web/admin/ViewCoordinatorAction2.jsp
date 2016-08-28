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
    
    <title>View Coordinator</title>
    
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
    String _search = request.getParameter("search");
    String _value = request.getParameter("value");
    
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    
    if(_search.equals("Name"))
    {
    Query q = sess.createQuery("From CoordinatorPOJO where name = :n");
    q.setString("n",_value);
    List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list(); 
    
   
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewCoordinatorDisplay2.jsp");
    
    }
    
    else if(_search.equals("Email"))
    {
    Query q = sess.createQuery("From CoordinatorPOJO where email = :n");
    q.setString("n",_value);
    List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list(); 
    
   
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewCoordinatorDisplay2.jsp");
    }
    
    else if(_search.equals("Department"))
    {
    Query q = sess.createQuery("From CoordinatorPOJO where department = :n");
    q.setString("n",_value);
    List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list(); 
    
  
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewCoordinatorDisplay2.jsp");
    }
    
    else if(_search.equals("Subject"))
    {
    Query q = sess.createQuery("From CoordinatorPOJO where subject = :n");
    q.setString("n",_value);
    List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list(); 
    
    
    request.getSession().setAttribute("data",l);
    response.sendRedirect("ViewCoordinatorDisplay2.jsp"); 
     }
     %>
  </body>
</html>
