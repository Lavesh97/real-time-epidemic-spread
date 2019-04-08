<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="navbar">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="add_hos_patient.jsp">Add Patient</a></li>
				<li><a href="show_all_patient_hos.jsp">Patients Log</a></li>
				<li><a href="add_doctor_hos.jsp">Add Doctor</a></li>
				<li><a href="show_all_doctors.jsp">Doctors</a></li>
				<li><a href="hoslogout.jsp">Logout</a></li>
				<li><%=session.getAttribute("email") %></li>
			</ul>
		</div>
		
			
