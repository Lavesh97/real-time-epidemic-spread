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
s1 = (String)session.getAttribute("email");


Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");

st = con.createStatement();
rs = st.executeQuery("select * from patient where hos='"+s1+"'");
%>
<br>
<h1 style="color:Red">All Patients</h1>
<table class="table table-bordered table table-hover " bgcolor="white">
<tr>
	<th>Patient No.</th><th>First Name</th><th>Last Name</th><th>Disease</th><th>Age</th>
</tr>
<%
while(rs.next()){
	%>
		<tr><td><%=rs.getString("pno") %></td>
		<td><%=rs.getString("fname") %></td>
		<td><%=rs.getString("lname") %></td>
		<td><%=rs.getString("disease") %></td>
		<td><%=rs.getString("age") %></td>
		<td><a href="death_patient.jsp?pid=<%=rs.getString("pno")%>&dis=<%=rs.getString("disease") %>">Died</a></td>
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