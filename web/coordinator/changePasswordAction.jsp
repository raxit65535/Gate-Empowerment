<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.secureinfosoft.java.MD5password"%>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Change Password</title>
    
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
    	//HttpSession coordinator = request.getSession();
    	//String email = (String)coordinator.getAttribute("email");
    	String currentpass = request.getParameter("oldpass");
    	String np = request.getParameter("newpass");
    	String oldpass = null;
    	String currentpas = null;
    	String newpass = null;
    	
    	try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=currentpass;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		currentpas = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(currentpas);
    	
    	
    		try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=np;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		newpass = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
    	
    	
    	
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From CoordinatorPOJO where email = :e");
    	q.setString("e",email);
    	
    	List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list();
    	
    	for(CoordinatorPOJO e : l)
    	{
    		oldpass = e.getPassword();
    	}
    	
    	System.out.println(oldpass);
    	
    	if(!currentpas.equals(oldpass))
    	{
    		response.sendRedirect("changePassword.jsp?msg=current password is wrong..&status=0");
    	}
    	else
    	{
    	
    		
    		
    	Session sess1 = HibernateUtil.getSessionFactory().openSession();
    	Transaction t1 = sess1.beginTransaction();
    	Query q1 = sess1.createQuery("Update CoordinatorPOJO set password = :p where email = :e");
    	q1.setString("e",email);
    	q1.setString("p",newpass);
    	int status = 0;
    	status = q1.executeUpdate();
    	t1.commit();
    	sess1.close();
    	
    	if(status > 0)
    	{
    		response.sendRedirect("changePassword.jsp?msg= password successfully change..!!&status=1");
    	}
    	else
    	{
    		response.sendRedirect("changePassword.jsp?msg=error in updating..try again latter..!!&status=0");
    	}
    	
    	t.commit();
    	sess.close();
    			
    	}
    
     %>
  </body>
</html>
