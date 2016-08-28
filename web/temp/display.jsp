<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>display</title>
    
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
  
  <center>
    <table>
    <tr>
    <th>oId</th>
    <th>FileName</th>    
    </tr>
    
    
    <%
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From Img");
    
    List<Img> fl = (List<Img>)q.list();
    
    for(Img e : fl)
    {
    	int id = e.getId();
    	String name = e.getImg();
    	//String filePath =config.getServletContext().getRealPath("/")+"downloads/"+name;
    	%>
    	<tr>
    	<td><%=id %></td>
    	<td><%=name %></td>
    	<td><a href="temp/download.jsp?<%=name%>" >Download</a></td>
    	</tr>
    	<%
    }
    
     %>
    
    
    
    
    </table>
    </center>
  </body>
</html>
