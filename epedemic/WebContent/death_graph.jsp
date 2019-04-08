<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%@include file="gov_head.jsp" %>


<div >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>text</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/todc-bootstrap/3.4.0-3.4.1/css/bootstrap-theme.css">
<script
  src="http://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<div id="container" style="height: 400px"></div>
	<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String s1;
int a,b,c,d,e;
float a1,b1,c1,d1;
%>


<script type="text/javascript">


Highcharts.chart('container', {
    chart: {
        type: 'pie',
        options3d: {
            enabled: true,
            alpha: 45,
            beta: 0
        }
    },
    title: {
        text: 'real time epidemic spread'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            depth: 35,
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            }
        }
    },
    series: [{
        type: 'pie',
        name: 'Patients',
        data: [
        	
        	
        	<%
        	try{
        	s1 = (String)session.getAttribute("email");


        	Class.forName("oracle.jdbc.OracleDriver");
        	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");

        	st = con.createStatement();
        
        	rs = st.executeQuery("select * from death");
        	
        	a1 = 360/8;
        	rs.next();

    		s1 = rs.getString("disease");
    		a = rs.getInt("count");
    		System.out.println(a);
    		%>['<%=s1%>',<%=a1*a%>]<%	
        	while(rs.next()){
        		s1 = rs.getString("disease");
        		a = rs.getInt("count");
        		System.out.println(a);
        		%>,['<%=s1%>',<%=a1*a%>]<%	
        		
        	}
        	
        	}catch(Exception e){
        		e.printStackTrace();
        	}
        	
        	%>
            
           /* {
                name: 'Chrome',
                y: 12.8,
                sliced: true,
                selected: true
            },*/
           
        ]
    }]
});
</script>


</div>
<%@include file="footer.jsp" %>

</div>

</body>
</html>