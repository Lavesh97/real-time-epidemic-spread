<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
int x;
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
%>
<%
try{
	s1 = request.getParameter("disease");
x = Integer.parseInt(request.getParameter("count"));
	
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();

st.executeUpdate("update diseases set count=count+"+x+" where d_name='"+s1+"'");


}
catch(Exception e){
	e.printStackTrace();
}
System.out.println("Chal gya");
response.sendRedirect("add_ngo_patient.jsp");
%>
