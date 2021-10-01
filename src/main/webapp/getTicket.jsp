<%@page import="model.Ticket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" type = "text/css" href = "Ticket.css" />
	<title>Get Ticket</title>
</head>
<body>
hellooooooooooooooo im get
	<jsp:include page="header.jsp"></jsp:include>

	<h2 class="h2">Get Ticket Page</h2>

	<br>
	<br>
	<%
		Ticket ticket = (Ticket) request.getAttribute("ticket");
	%>

	<form method="POST" action="UpdateEmployeeServlet">
		<table>
			<tr>
				<td>Ticket ID</td>
				<td><input type="text" name="employeeID" disabled="disabled"
					value="<%=ticket.getId()%>" /></td>
			</tr>
			<tr>
				<td>Ticket Title</td>
				<td><input type="text" name="employeeName"
					value="<%=ticket.getTitle()%>" /></td>
			</tr>

			<tr>
				<td>Priority</td>
				<td><input type="text" name="designation"
					value="<%=ticket.getPriority()%>" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="faculty"
					value="<%=ticket.getDescription()%>" /></td>
			</tr>
			<tr>
				<td>Operational Category</td>
				<td><input type="text" name="department"
					value="<%=ticket.getOperatCat()%>" /></td>
			</tr>
			<tr>
				<td>Impact</td>
				<td><input type="text" name="qualification"
					value="<%=ticket.getImpact()%>" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="getImpact" value="male"
					checked="checked" tabindex="1" /> Male</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="getImpact" value="female"
					tabindex="2" /> Female</td>
			</tr>
			<tr>
				<td colspan="2"><input type="hidden" name="employeeID"
					value="<%=ticket.getId()%>" /> <input type="submit"
					value="Update Employee" class="update-button"/></td>
			</tr>
		</table>
	</form>

	<table>
		<tr>
			<td colspan="2">
				<form method="POST" action="DeleteEmployeeServlet">
					<input type="hidden" name="employeeID"
						value="<%=ticket.getId()%>" /> <input type="submit"
						value="Delete Employee" class="delete-button"/>
				</form>
			</td>
		</tr>
	</table>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>