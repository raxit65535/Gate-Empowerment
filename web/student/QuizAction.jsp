<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.secureinfosoft.java.QuizList"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
HttpSession student = request.getSession();
String email = (String)student.getAttribute("email");
String department = (String)student.getAttribute("department");

if(email == null)
{
	response.sendRedirect("studentLogin.jsp");
}

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
    	int n=15;
    	int j=1;
 		String[] ans = new String[n];
		for(int i=0;i<15;i++)
		{
			
			String answr = request.getParameter("studentanswer"+j);
			
			if(answr.equals(""))
			{
			ans[i] = "N";	
			j=j+1;
			}
			else
			{
			ans[i] = answr;	
			j=j+1;
			}
		}
		List<QuizList>  l =(List<QuizList>)request.getSession().getAttribute("test");
		List<String> stdans = new ArrayList<String>();
		for(int i=0;i<15;i++)
		{
			System.out.println(i +":"+ans[i]);
			
			stdans.add(ans[i]);
		}
		
		request.getSession().setAttribute("jadi",stdans);
		/*for(int i=0;i<15;i++)
		{
			QuizList e = new QuizList();
			String a = e.getStudentanswer();
			l.get(i);
			System.out.println("Student ans :" +a);
		
		}*/
		
		
		request.getSession().setAttribute("data",l);
		response.sendRedirect("ChapterTestResult.jsp");
 %>
  </body>
</html>
