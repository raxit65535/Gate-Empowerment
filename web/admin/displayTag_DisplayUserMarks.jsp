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
		<title>Student Marks</title>
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
var nav1 = 10;
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
	
	<div id="gb">

</div>
<div class="gbh" style="left: 0px;"></div>
<div class="gbh" style="right: 0px;"></div>
  <div id="gc-container" style="max-width: none !important;">	
  
  <div id="gc-header">
      <div id="logo"></div>
    </div>
    <div id="codesiteContent">
           <script type="text/javascript" language="javascript" src="js/header.js"></script>
      <div class="g-section g-tpl-230">
           <script type="text/javascript" language="javascript" src="js/leftNavigation.js"></script>
        <div class="g-unit" id="gc-pagecontent">
	 <div id="search">
		<html:form action="/displayTag_DisplayUserMarks">
		
		<select name="search"   required="required"  style="padding:4px 2px; border:solid 1px #aacfe4;">
			<option value="">...</option>
			<option value="Email">Email</option>
			<option value="Department">Department</option>
				<option value="DateTime">DateTime</option>
			<option value="Marks">Marks</option>
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Value : <input type="text" id="value" name="value"  required="required"  style="padding:4px 2px; border:solid 1px #aacfe4;"/>
		
		
		
					<html:submit value="search" styleClass="small button black"/>
		
			
		</html:form>

		</div>
<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" sort="list" defaultorder="descending" defaultsort="1" >
	<display:caption><h3>UseMarks</h3></display:caption>
	
	<display:column property="id" title="ID" sortable="true"/>
	<display:column property="email" title="Email" sortable="true"/>
	<display:column property="department" title="Department" sortable="true"/>
	<display:column property="datetime" title="DateTime" sortable="true"/>
	<display:column property="type" title="type" sortable="true" />
	<display:column property="marks" title="Marks" sortable="true"/>
	
    <display:setProperty name="export.excel.filename" value="studentMarks.xls"/>
    <display:setProperty name="export.pdf.filename" value="studentMarks.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
    
    </display:table>
	
       
		
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>