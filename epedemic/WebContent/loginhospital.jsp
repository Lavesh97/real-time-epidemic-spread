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
rs = st.executeQuery("select * from hospital where email='"+s1+"' and pass='"+s2+"'");
if(rs.next()){
	s2 = rs.getString("name");
	session.setAttribute("email",s1);
	session.setAttribute("name",s2);
    response.sendRedirect("Hospitalhome.jsp");
	
}

}
catch(Exception e){
	e.printStackTrace();
}
%>
