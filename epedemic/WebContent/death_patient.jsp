<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
String pid ; 
String dis;
%>

<% 
pid = request.getParameter("pid");
dis = request.getParameter("dis");

boolean x;
int y;
%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
%>
<%
try{
s7 = dis;
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","durga","durga");
System.out.println(con);
st = con.createStatement();

st.executeUpdate("update diseases set count=count-1 where d_name='"+s7+"'");

y = st.executeUpdate("update death set count = count + 1 where disease='"+s7+"'");
st.executeUpdate("delete from patient where pno='"+pid+"'");
System.out.println(y+s7);
}
catch(Exception e){
	e.printStackTrace();
}
System.out.println("Chal gya");
response.sendRedirect("show_all_patient_hos.jsp");
%>
