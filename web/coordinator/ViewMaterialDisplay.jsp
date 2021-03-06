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
    HttpSession coordinator = request.getSession();
	String dpt = (String)coordinator.getAttribute("department");
	String sub = (String)coordinator.getAttribute("subject");
	String email = (String)coordinator.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("coordinatorLogin.jsp");
	}
 %>
<html> 
	<head>
		<title>Material</title>
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
var nav1 = 6;
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
	

	
	<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>Material</h3></display:caption>
	<display:column property="id" title="id" sortable="true" media="none"/>
	<display:column property="department" title="Department" sortable="true"/>
	<display:column property="subject" title="Subject" sortable="true" />
	<display:column property="name" title="Name" sortable="true"/>
	<display:column property="description" title="Description" sortable="true"/>
	<display:column property="file" title="Filename" sortable="true" media="none"/>
    
    <display:column style="size : 20px" title="option"  sortable="true" media="html"><a href="viewMT.jsp?${data.file}" target="_blank">
    <img src="images/download.jpg" alt="download"  width="20px" height="20px" style="border: 0"/></a> 
    <a href="DeleteMaterial.jsp?${data.id}"><img src="images/dlt.jpg" alt="delete" width="20px" height="20px" style="border: 0"/></a>
    </display:column>
    
   
    <display:setProperty name="export.excel.filename" value="MaterialDetails.xls"/>
    <display:setProperty name="export.pdf.filename" value="MaterialDetails.pdf"/>
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
