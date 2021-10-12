<%@page import="model.Answer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.AnswerServiceImpl"%>
<%@page import="services.AnswerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/list.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<title>Answer List</title>
	</head>
<%
	System.out.println("list asswer page");

	if((session.getAttribute("type") != "analyst")) {
		request.setAttribute("error", "You are not authorized");
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}
%>
<body>

					
					
	<div class="container">
		<main>
			<a href="answer.jsp">Add Answer</a>
			<table>
			<caption>List of Answers</caption>
			<thead>
				<tr>
				<th>Aid</th>
				<th>Author</th>
				<th>Title</th>
				<th>Content</th>
				<th>Created_at</th>
				<th>Updated_at</th>
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
				AnswerService answerService = new AnswerServiceImpl();
				ArrayList<Answer> arrayList = answerService.getAnswers();
				
				for(Answer answer : arrayList){
					int aid = answer.getAid();
				%>
				
				<tr>
					<td><div class="tdd"> <%=answer.getAid() %> </div></td>
					<td><div class="tdd"> <%=answer.getAuthor() %> </div></td>
					<td><div class="tdd"> <%=answer.getTitle() %> </div></td>
					<td><div class="tdd"> <%=answer.getContent() %> </div></td>
					<td><div class="tdd"> <%=answer.getCreated_at() %> </div></td>
					<td><div> class="tdd" <%=answer.getUpdated_at() %> </div></td>

					<td class='select' ><div class="tdd">
					<form method="POST" action="GetAnswer">
						<input type="hidden" value = "<%=answer.getAid() %>" name = "aid">
						<input type="submit" value="View">
					</form>

					</div></td>	
					</tr>			
					
				<%}%>

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

