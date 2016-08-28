<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
 
<%

	HttpSession admin = request.getSession();
	String email = (String)admin.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("error.jsp");
	}

 %>
<html> 
	<head>
		<title>Users</title>
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<link href="css/codesite.pack.04102009.css" type="text/css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/iehacks.css"><![endif]-->		
<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
<link href="css/displaytag.css" rel="stylesheet" type="text/css" />
<link href="css/semantic_headers.css" rel="stylesheet" type="text/css" />
<link href="css/prettify.css" type="text/css" rel="stylesheet" />
<link href="css/form.css" type="text/css" rel="stylesheet" />
<link href="css/screen.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/auth.js"></script>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript">
var nav1 = 8;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>
		
	</head>
	<body class="gc-documentation" id="body">
	

  
  
     <display:table  id="data" name="sessionScope.data"  pagesize="10" export="true">
	<display:caption><h3>Student Analitics</h3></display:caption>
	
	<display:column property="datetime" title="Date" sortable="true"/>
	<display:column property="department" title="Department" sortable="true"/>
	<display:column property="subject" title="Subject" sortable="true"/>
	<display:column property="chapter" title="Chapter" sortable="true"/>
	<display:column property="type" title="Exam-Type" sortable="true"/>
	<display:column property="email" title="Email" sortable="true" />
	<display:column property="marks" title="Marks" sortable="true"/>
	
    
    
    <display:setProperty name="export.excel.filename" value="StudentAnalitics.xls"/>
    <display:setProperty name="export.pdf.filename" value="StudentAnalitics.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
    
    </display:table>
	
     
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
