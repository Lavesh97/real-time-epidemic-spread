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
s1 = request.getParameter("doc_name");
s2 = request.getParameter("doc_spec");
s3 = request.getParameter("doc_contact");
s4 = (String)session.getAttribute("email");
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();


st.executeQuery("insert into doctor values( '"+s1+"','"+s4+"','"+s3+"','"+s2+"')");

}
catch(Exception e){
	e.printStackTrace();
}
System.out.println("Chal gya");
response.sendRedirect("add_doctor_hos.jsp");
%>
