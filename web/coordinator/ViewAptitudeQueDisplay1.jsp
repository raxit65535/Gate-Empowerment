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
		<title>View Question</title>
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<link href="css/codesite.pack.04102009.css" type="text/css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/iehacks.css"><![endif]-->		
<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
<link href="css/displaytag.css" rel="stylesheet" type="text/css" />
<link href="css/semantic_headers.css" rel="stylesheet" type="text/css" />
<link href="css/prettify.css" type="text/css" rel="stylesheet" />
<link href="css/form.css" type="text/css" rel="stylesheet" />
<link href="css/search1.css" type="text/css" rel="stylesheet" />
<link href="css/screen.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/auth.js"></script>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript">
var nav1 = 12;
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
	 <div id="search" style="margin-top: -10">
		<form action="ViewAptitudeQueAction2.jsp">
		<select name="search"  id="search" required="required"  style="padding:4px 2px; width :150; border:solid 1px #aacfe4;">
			<option value="">.....</option>
			<%
		
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Query q = sess.createQuery("From AptitudeChaptersPOJO");
			List<AptitudeChaptersPOJO> pooja = (List<AptitudeChaptersPOJO>)q.list();
			Iterator it = pooja.iterator();
			
			while(it.hasNext())
			{
				AptitudeChaptersPOJO dep = (AptitudeChaptersPOJO)it.next();
			    String chap = dep.getChapter();
			     
			 %>
			<option value="<%=chap %>"><%=chap %></option>
			<%
			}
			 %>
		</select>

		
			<input type="submit" value="search" Class="small button black"/>
			
		</form>
			
		</div>
		
			
	
	<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>Questions</h3></display:caption>
	<display:column property="id" title="ID" sortable="true"/>
	<display:column property="question" title="Question" sortable="true"/>
	<display:column property="a" title="A" sortable="true"/>
	<display:column property="b" title="B" sortable="true"/>
	<display:column property="c" title="C" sortable="true"/>
	<display:column property="d" title="D" sortable="true"/>
	<display:column property="answer" title="Answer" sortable="true"/>
        <display:column  title="View"  sortable="true" media="html"><a href="viewQS.jsp?${data.id}" target="blank">View</a> </display:column>
    <display:column  title="Edit"  sortable="true" media="html"><a href="EditQuestion.jsp?${data.id}" >Edit</a> </display:column>
    <display:column  title="Delete"  sortable="true" media="html"><a href="DeleteQuestion.jsp?${data.id}" >Delete</a> </display:column>
    <display:setProperty name="export.excel.filename" value="questions.xls"/>
    <display:setProperty name="export.pdf.filename" value="questions.pdf"/>
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
