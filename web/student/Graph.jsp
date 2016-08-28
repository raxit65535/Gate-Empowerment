<%@page import="com.secureinfosoft.Hibernate.StudentMarksPOJO"%>
<%@page import="java.util.List"%>
<html>
  <head>
  <title>Performance Graph</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
      
      <%
      	List<StudentMarksPOJO> l = (List<StudentMarksPOJO>) request.getSession().getAttribute("graph");
      
      %>
      
        var data = google.visualization.arrayToDataTable([
          ['date-time','marks'],
          <%
        for(StudentMarksPOJO e : l)
        {
        
        	String date = e.getDatetime();
        	String marks = e.getMarks();
        	String subject = e.getSubject();
        	String chapter = e.getChapter();
        	String type = e.getType();
        	String email = e.getEmail();
        	int m = Integer.parseInt(marks);
        	String k = date+"...................information : "+subject+" and "+chapter+" and "+type+" and "+email;
        	System.out.println(date);
        	System.out.println(m);
       %>
       			
       		 ['<%=k%>',<%=m%>],
       <% 	
        	
        }
        
        %>
        

        ]);

        var options = {
          title: 'Purfomance-Graph',
          hAxis: {title: 'marks', titleTextStyle: {color: 'red'}}
        };

       // var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
  <%
  String who = request.getParameter("who");
  
   %>
  <center><h3>Hello this is purfomance graph of <%=who %></h3></center>
  
    <div id="chart_div" style="width: 1500px; height: 700px;"></div>
  </body>
</html>