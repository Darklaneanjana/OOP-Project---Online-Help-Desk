<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

			<%
            System.out.println("index page");
            session.setAttribute("uid", 2);      //set attribute in session
            session.setAttribute("type", "analyst");
            %>
            
<body>
<jsp:include page="header.jsp"></jsp:include>
<a href="ticket.jsp">Add Ticket</a>
<form method="POST" action="ListTicket" class="close">
    <input type="submit" value="List All Tickets">
</form>

<form method="POST" action="ListAnswer" class="">
                	<input type="hidden" name = "userType" value="<%=session.getAttribute("type")%>">
                    <input type="submit" value="List All Answerss">
                </form>
</body>
</html>