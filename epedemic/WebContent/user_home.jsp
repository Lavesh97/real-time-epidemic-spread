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
s1 = request.getParameter("cat");


Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();
rs = st.executeQuery("select * from mws_item where cat='"+s1+"'");
while(rs.next()){
	%>
	<table class="table table-bordered">
			<tr><td colspan="2"><h3><%=rs.getString("name") %></h3></td></tr>
			
			
			<tr><td>Item Price</td><td><%=rs.getString("price") %></td></tr>
			<tr><td>Item Discount</td><td><%=rs.getString("disc") %></td></tr>
			<tr><td>Item Count</td><td><%=rs.getString("count") %></td></tr>
			
			<tr><td><input type="submit" class="btn btn-primary" value="Buy"></td></tr>
		</table>
		
	<%
}

}
catch(Exception e){
	e.printStackTrace();
}
%>
	
</div>
<%@include file="footer.jsp" %>

</div>

</body>
</html>