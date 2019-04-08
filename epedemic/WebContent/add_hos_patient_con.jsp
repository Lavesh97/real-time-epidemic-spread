<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
%>
<%
try{
s1 = request.getParameter("pno");
s2 = request.getParameter("fname");
s3 = request.getParameter("lname");
s4 = request.getParameter("gender");
s5 = request.getParameter("age");
s6 = request.getParameter("weight");
s12 = (String)session.getAttribute("email");
s7 = request.getParameter("disease");
s8 = request.getParameter("addr");
s9 = request.getParameter("pin");
s10 = request.getParameter("city");
s11 = request.getParameter("mobile");
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();

st.executeUpdate("update diseases set count=count+1 where d_name='"+s7+"'");
st.executeQuery("insert into patient values( '"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"')");

}
catch(Exception e){
	e.printStackTrace();
}
System.out.println("Chal gya");
response.sendRedirect("add_hos_patient.jsp");
%>
