<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>save</title>
    
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
 



int jadi = (Integer)request.getSession().getAttribute("current");

System.out.println("page number is :" +jadi);
if(jadi == 1)
{
	for(int m=1;m<=10;m++)
	{
		String ans = request.getParameter("studentanswer"+m);
		System.out.println(+m+ans);
		request.getSession().setAttribute("studentanswer"+m,ans);
		System.out.println("saving sesssion for first page");
	}
}
else if(jadi == 2)
{
	for(int m=11;m<=20;m++)
	{
		String ans = request.getParameter("studentanswer"+m);
		System.out.println(+m+ans);
		request.getSession().setAttribute("studentanswer"+m,ans);
		System.out.println(+m+ans);
		System.out.println("saving sesssion for second page");
	}
}
else if(jadi == 3)
{
	for(int m=21;m<=30;m++)
	{
		String ans = request.getParameter("studentanswer"+m);
		request.getSession().setAttribute("studentanswer"+m,ans);
		System.out.println("saving sesssion for third page");
	}
}


for(int k =1;k<=30;k++)
{
	String ans = (String)request.getSession().getAttribute("studentanswer"+k);
	System.out.println(+k+ans);
}


response.sendRedirect("Quiz.jsp");

 %>
  </body>
</html>
