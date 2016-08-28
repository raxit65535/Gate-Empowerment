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
    
    <title>Delete Subject</title>
    
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
   
   		String id = request.getQueryString();
   		String subject = null;
   		//System.out.println(id);
   		
   		Session sess = HibernateUtil.getSessionFactory().openSession();
   		Transaction t = sess.beginTransaction();
   		Query q = sess.createQuery("From SubjectPOJO where id = :i");
   		q.setString("i",id);
   		List<SubjectPOJO> heli = (List<SubjectPOJO>)q.list();
   		t.commit();
   		//sess.close();
   		
   		for(SubjectPOJO e : heli)
   		{
   			subject = e.getSubject();
   		}
   		
   		Session sess1 = HibernateUtil.getSessionFactory().openSession();
   		Transaction t1 = sess1.beginTransaction();
   		Query q1 = sess1.createQuery("From ChapterPOJO where subject = :d");
   		q1.setString("d",subject);
   		List<ChapterPOJO> heli1 = (List<ChapterPOJO>)q1.list();
   		t1.commit();
   		//sess1.close();
   		
   		System.out.println(heli1.size());
   		
   		if(heli1.size()>0)
   		{
   			response.sendRedirect("DeleteMessage.jsp?msg=You can not delete this Subject because it is not empty..&status=0");
   		}
   		else if(heli1.size() == 0)
   		{
   				
   		Session sess2 = HibernateUtil.getSessionFactory().openSession();
   		Transaction t2 = sess2.beginTransaction();
   		Query q2 = sess2.createQuery("Delete from SubjectPOJO where id = :i");
   		q2.setString("i",id);
   		int result = q2.executeUpdate();
   		t2.commit();
   		sess2.close();
   		
   		response.sendRedirect("DeleteMessage.jsp?msg=Subject Successfully Deleted..&status=1");
   		
   		}
   
    %>
  </body>
</html>
