<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String s1,s2,s3,s4,s5;
%>
<%
try{
s1 = request.getParameter("email");
s2 = request.getParameter("pass");

Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();
rs = st.executeQuery("select * from ngo where email='"+s1+"' and pass='"+s2+"'");
if(rs.next()){
	session.setAttribute("email",s1);
	session.setAttribute("name",rs.getString("name"));
    System.out.println("Chal gya");
    response.sendRedirect("ngo_home.jsp");
	
}
else{
	System.out.println("Invalid login password");
	response.sendRedirect("ngologin.html");
}

}
catch(Exception e){
	e.printStackTrace();
}
%>
