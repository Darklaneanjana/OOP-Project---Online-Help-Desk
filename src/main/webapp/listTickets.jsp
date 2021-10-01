<%@page import="model.Ticket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.TicketServiceImpl"%>
<%@page import="services.TicketService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/list.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<title>Ticket List</title>
	</head>

<body>

					
					
	<div class="container">
		<main>
			<a href="index.jsp">Add Ticket</a>
			<table>
			<caption>List of Tickets</caption>
			<thead>
				<tr>
				<th>Ticket ID</th>
				<th>Title</th>
				<th>Priority</th>
				<th>Description</th>
				<th>Operational Category</th>
				<th>Impact</th>
				<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
				<th colspan='3'>
					DateTime:  dan  welawa
				</th>
				</tr>
			</tfoot>
			<tbody>
				<%
				TicketService ticketService = new TicketServiceImpl();
				ArrayList<Ticket> arrayList = ticketService.getTickets();
				
				for(Ticket ticket : arrayList){
					int tid = ticket.getId();
				%>
				
				<tr>
					<td> <%=ticket.getId() %> </td>
					<td> <%=ticket.getTitle() %> </td>
					<td> <%=ticket.getPriority() %> </td>
					<td> <%=ticket.getDescription() %> </td>
					<td> <%=ticket.getOperatCat() %> </td>
					<td> <%=ticket.getImpact() %> </td>

					<td class='select' > 
						puka
					<!-- <form method="POST" action="GetTicket">
					<input type="hidden" name="tid" value="<%=ticket.getId()%>"/>
					<input type="submit" value= "Select Ticket" class="button" /> 
					</form> -->

					<form method="POST" action="GetTicket">
                        <input type="submit" value="List All Tickets" class="button">
                    </form>

					</td>	
					</tr>			
					
				<%}%>
					<!--<input type="hidden" name="tid" value="10"/>
					<input type="submit" value= "Select Ticket" class="button" /> -->

				</tbody>
			</table>
			
			<div class='detail'>
			<div class='detail-nav'>
				<button class='close'>
				Close
				</button>
			</div>
			</div>
		</main>
	</div>
	<!-- JS -->
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="js/list.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

