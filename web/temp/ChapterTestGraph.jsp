<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.StudentMarksPOJO"%>
<%@page import="com.secureinfosoft.javaplot.ChapterTestGraph"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>chapter graph</title>
    
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
    
    
    
    String type = "chapter-wise";
    String email = "engineerraxit@gmail.com";
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From StudentMarksPOJO where type = :t and email = :e");
    q.setString("t",type);
    q.setString("e",email);
    List<StudentMarksPOJO> l = (List<StudentMarksPOJO>)q.list();
    t.commit();
    sess.close();
    
    /*int size = l.size();
    
    double[] x = new double[size];
    double[] y = new double[size];
    int i=0;
    for(StudentMarksPOJO e : l)
    {
    	String d = "14";
    	String marks = e.getMarks();
    	//subject.trim();
    	 //date.replaceAll("\\s+"+"\\"+"\\:","and");
    	//double d = Double.parseDouble(date); 
    	
    	SimpleDateFormat fm = new SimpleDateFormat("dd-MM-yyyy"); 
    	Date d = fm.parse(date);
    	
    	//int pk = Integer.parseInt(date);
    	//String d ="13.2014";
    	/*String date1;
    	for(int j=0 ;j<date.length();j++)
    	{
    		char ch = date.charAt(j);
    		if(ch == ' ' && ch == '/' && ch == ':')
    		{
    			
    		}
    	
    		
    	}
    	
    	
    	x[i]= Double.parseDouble(d);
    	y[i]=Double.parseDouble(marks);
    	
    	i = i+1;
    }
*/

     		//ChapterTestGraph.crategraph(x,y);
     		request.getSession().setAttribute("li",l);
     		response.sendRedirect("GoogleGraphs.jsp");
    
     %>
  </body>
</html>
