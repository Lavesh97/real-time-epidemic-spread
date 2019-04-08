<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="container">
<%@include file="gov_head.jsp" %>


<div class="box">
	<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String s1;
%>
<%
try{


Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");

st = con.createStatement();
rs = st.executeQuery("select * from ngo");
%>
<br>
<h1 style="color:Red">NGO</h1>
<table class="table table-bordered table table-hover " bgcolor="white">
<tr bgcolor="grey">
	<th>NGO Name</th><th>Location</th><th>Email</th><th>City</th><th>Contact</th>
</tr>
<%
while(rs.next()){
	%>
		<tr><td><%=rs.getString("name") %></td>
		<td><%=rs.getString("addr") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("city") %></td>
		
		<td><%=rs.getString("contact") %></td>
	<%
}

}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>
	
</div>
<%@include file="footer.jsp" %>

</div>

</body>
</html>