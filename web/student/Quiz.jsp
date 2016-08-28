<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.secureinfosoft.admin.DisplayTag_DisplayUserMarksAction"%>
<%@page import="org.displaytag.filter.DisplayTagSpringInterceptor"%>
<%@page import="com.lowagie.text.PageSize"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<%
HttpSession student = request.getSession();
String email = (String)student.getAttribute("email");
String department = (String)student.getAttribute("department");

if(email == null)
{
	response.sendRedirect("studentLogin.jsp");
}

 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>chapter  Quiz</title>
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<link href="css/codesite.pack.04102009.css" type="text/css"
  rel="stylesheet">
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/iehacks.css"><![endif]-->
<link href="css/semantic_headers.css" rel="stylesheet" type="text/css" />
<link href="css/prettify.css" type="text/css" rel="stylesheet" />
<link href="css/form.css" type="text/css" rel="stylesheet" />
<link href="css/screen.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/auth.js"></script>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/timmer.js"></script>
<script type="text/javascript">
var nav1 = 3;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>





<style>
    #txt {
      border:none;
      font-family:verdana;
      font-size:16pt;
      font-weight:bold;
      margin-left:1099px;
      border-right-color:#FFFFFF
      }
</style>

<script language ="javascript">
function Disable() {
if (event.button == 2)
{
alert("This action is not possible")
}
}
document.onmousedown=Disable;
</script>

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
         <!-- <h1 class="page_title" style="margin: 0px !important">Hello I am Raxit - Developer of this site</h1>-->

          <br/><br/>

	


	<form name="cd" action="QuizAction.jsp" method="post">


<div>
<input id="txt" readonly="true" type="text" value="10:00" border="0" name="disp"></div>
     <%
     int i=1;
      %>
      



<display:table name="raxit" id="test" name="sessionScope.test"  pagesize="15" >





<table border="0" > 
  <tr>
    <th colspan="8"><display:column property="question" title="Question" sortable="true"/></th>
   
  </tr>
  <tr>
    <td><display:column  property="a" title="A" sortable="true"/></td>
    
  </tr>
  <tr>
    <td><display:column property="b" title="B" sortable="true"/></td>
 
  </tr>
  <tr>
    <td><display:column property="c" title="C" sortable="true"/></td>
    
  </tr>
  <tr>
    <td><display:column property="d" title="D" sortable="true"/></td>
    
  </tr>
   
 <tr>
    <th colspan="8"><display:column>

    
    <select name="studentanswer<%=i%>" id="studentanswer<%=i %>">
			<option value=""></option>
			<option value="A">A</option>
			<option value="B">B</option>
			<option value="C">C</option>
			<option value="D">D</option>
			</select><br/><br/>

    </display:column>
    
    </th>
    
   
  </tr>
   
   
</table>

<% i=i+1;%>




 </display:table>
 

 
	<center><input type="submit" value="Submit Test" style="height: 30px ; width: 100px; margin-top : 25px; background-color: #ebf4fb "></center>
</form>
    
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
