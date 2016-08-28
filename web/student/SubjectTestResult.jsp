<%@ page language="java" pageEncoding="ISO-8859-1"%>


<%@page import="java.util.List"%>
<%@page import="com.secureinfosoft.java.QuizList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.UUID"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.secureinfosoft.java.Marks"%>
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
String email =(String)student.getAttribute("email");
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
<title>Quiz Result</title>
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
<script type="text/javascript">
var nav1 = 4;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>



</head>
<body class="gc-documentation" id="body"  >
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

          <%
         int n=15; 
          List<QuizList> l = (List<QuizList>)request.getSession().getAttribute("data");
          String[] answer = new String[n];
          int i=0;
          for(QuizList e : l)
          {
          	answer[i] = e.getAnswer();
          	i = i+1;
          }
          List<String> m = (List<String>)request.getSession().getAttribute("jadi");
          String[] studentanswer = new String[n];
          int j=0;
         Iterator it = m.iterator();
         while(it.hasNext())
         {
         	String buchi = (String)it.next();
         	studentanswer[j] = buchi;
         	j=j+1;
         } 
         
         int counter = 0;
         
         
         
         for(int o=0;o<n;o++)
         {
         	System.out.println("right answer : "+o +" :"+answer[o]);
         		System.out.println("studnet answer : "+o +":"+studentanswer[o]);
         
         }
         
         for(int p =0;p<n;p++)
         {
         	if(studentanswer[p].equals(answer[p]))
         	{
         		
         		counter =  counter+1;
         	}
         	else
         	{
         	}
         }
         
         UUID idone = UUID.randomUUID();
         String uuid = idone.toString();
         String mark = Integer.toString(counter);
         String type = "subject-wise";
         
         String chapter = (String)student.getAttribute("quizchapter");
         String subject = (String)student.getAttribute("quizsubject");
         
         System.out.println(subject);
         System.out.println(chapter);
         
         Date d = new Date();
         SimpleDateFormat fm = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         String date = fm.format(d);
         
         int status = Marks.addmarks(email,uuid,type,date,department,subject,chapter,mark);
         
         
         
         
         
           %>
		 <h3>Your Result is <%=counter %> out of 15</h3><br/><br/>
<display:table  id="data" name="sessionScope.data"  pagesize="15" export="true" >
	<display:caption><h3>Result</h3></display:caption>
	<display:column property="id" title="ID" sortable="true" media="none"/>
	<display:column property="question" title="Question" sortable="true"/>
	<display:column property="a" title="A" sortable="true"/>
	<display:column property="b" title="B" sortable="true"/>
	<display:column property="c" title="C" sortable="true"/>
	<display:column property="d" title="D" sortable="true"/>
	<display:column property="answer" title="Answer" sortable="true"/>
	<display:column property="description" title="Description" sortable="true"/>
	<display:setProperty name="export.excel.filename" value="result.xls"/>
    <display:setProperty name="export.pdf.filename" value="result.pdf"/>
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
