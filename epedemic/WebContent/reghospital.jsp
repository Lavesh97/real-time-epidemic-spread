<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
String s1,s2,s3,s4,s5,s6,s7,s8;
%>
<%
try{
s1 = request.getParameter("name");
s2 = request.getParameter("email");
s3 = request.getParameter("pass");
s4 = request.getParameter("contact");
s5 = request.getParameter("addr");
s6 = request.getParameter("city");

s7 = request.getParameter("state");
s8 = request.getParameter("pin");
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();
st.executeQuery("insert into hospital values( '"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");

}
catch(Exception e){
	e.printStackTrace();
}
System.out.println("Chal gya");
%>
