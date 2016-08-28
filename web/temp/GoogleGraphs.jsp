
<%@page import="com.secureinfosoft.Hibernate.StudentMarksPOJO"%>
<%@page import="java.util.List"%><html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
      
      <%
      	List<StudentMarksPOJO> l = (List<StudentMarksPOJO>) request.getSession().getAttribute("li");
      
      %>
      
        var data = google.visualization.arrayToDataTable([
          ['date-time','marks'],
          <%
        for(StudentMarksPOJO e : l)
        {
        
        	String date = e.getDatetime();
        	String marks = e.getMarks();
        	String subject = e.getSubject();
        	int m = Integer.parseInt(marks);
        	String k = date+" and "+subject;
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
  <center><p>Hello this is student purfomance graph of subjects</p></center>
  
    <div id="chart_div" style="width: 1000px; height: 300px;"></div>
  </body>
</html>