<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%@include file="head.jsp" %>

<%@include file="menu.jsp" %>

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
rs = st.executeQuery("select * from doctor");
%>
<br>
<h1 style="color:Red">All Doctors</h1>
<table class="table table-bordered table table-hover " bgcolor="white">
<tr>
	<th>Doctor Name</th><th>Contact</th><th>Specialist</th>
</tr>
<%
while(rs.next()){
	%>
		<tr><td><%=rs.getString("doc_name") %></td>
		<td><%=rs.getString("doc_contact") %></td>
		<td><%=rs.getString("doc_spec") %></td>

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