<%@page import="model.Ticket" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Create Ticket</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
      <style>
  #result {
   position: absolute;
   width: 100%;
   max-width:870px;
   cursor: pointer;
   overflow-y: auto;
   max-height: 400px;
   box-sizing: border-box;
   z-index: 1001;
  }
  .link-class:hover{
   background-color:#f1f1f1;
  }
  </style>
    
</head>
<body>


<div class="main">
<jsp:include page="header.jsp"></jsp:include>
		<%
        String imgh1 = request.getParameter("imgh1");
        String imgp = request.getParameter("imgp");
        if (imgh1 == null) {
            imgh1 = "Create Ticket";
            imgp = "Fill out the Form";
        }else if(imgh1 == "update"){
            imgh1 = "Create Ticket";
            imgp = "Fill out the Form";
        }

    %>

    <div class="container">
        <div class="ticket-content">
            <div class="ticket-img">
                <div class="ticket-img-content">
                    <h2><%=imgh1%>
                    </h2>
                    <p><%=imgp%>
                    </p>
                </div>
            </div>
            <div class="ticket-form">


					
		<%
			int tid = 0;
		 	String title = "";
			int operationalCategory = 0;
			int priority = 0;
			int impact = 0;
			int issue = 0;
			String description = "";
			if(request.getAttribute("ticket")!=null){
				Ticket ticket = (Ticket) request.getAttribute("ticket");
				tid = ticket.getId();
				title = ticket.getTitle();
				priority = ticket.getPriority();
				impact = ticket.getImpact();
				issue = ticket.getIssue();
				operationalCategory = ticket.getOperatCat();
				description = ticket.getDescription();
			}
		%>
		


                <form method="POST" class="create" id="create" action="<%= (session.getAttribute("type") == "user") ? "AddTicket": "UpdateTicket" %>">
                    <div class="form-row">
                        <div class="form-group">
                        
                        
                        
	
    <label for="" class="" style="color:#447">Search Answers</label>
    <br>
   <div align="center">
    <input type="text" name="search" id="search" placeholder="Search Employee Details" class="form-control" />
   </div>
   <ul class="list-group" id="result"></ul>
   <br><br><br>

                            <div class="form-select">
                                <div class="label-flex">
                                    <label for="issue" class="required">Issue Type</label>
                                </div>
                                <br>
                                <div class="select-list">
                                    <label class="select" for="issue">
                                        <select id="issue" required="required" name="issue">
                                            <option value="" disabled="disabled" selected="selected">Select
                                                Issue
                                                Type
                                            </option>
                                            <option <%= (issue == 1) ? "selected": " " %> value="1">Issue type 1</option>
                                            <option <%= (issue == 2) ? "selected": " " %> value="2">Issue type 2</option>
                                            <option <%= (issue == 3) ? "selected": " " %> value="3">Issue type 3</option>
                                            <option <%= (issue == 4) ? "selected": " " %> value="4">Issue type 4</option>
                                            <option <%= (issue == 5) ? "selected": " " %> value="5">Issue type 5</option>
                                            <option <%= (issue == 6) ? "selected": " " %> value="6">Issue type 6</option>
                                            <option <%= (issue == 7) ? "selected": " " %> value="7">Issue type 7</option>
                                            <option <%= (issue == 8) ? "selected": " " %> value="8">Issue type 8</option>
                                            <option <%= (issue == 9) ? "selected": " " %> value="9">Issue type 9</option>
                                            <option <%= (issue == 10) ? "selected": " " %> value="10">Issue type 10</option>
                                        </select>
                                        <svg>
                                            <use xlink:href="#select-arrow-down"></use>
                                        </svg>
                                    </label>
                                </div>
                            </div>

                            <div class="form-select">
                                <div class="label-flex">
                                    <label for="OperationalCategory" class="required">Operational Category</label>
                                </div>
                                <br>
                                <div class="select-list">
                                    <label class="select" for="OperationalCategory">
                                        <select id="OperationalCategory" name="OperationalCategory" required="required">
                                            <option value="" disabled="disabled"  selected="<%= (operationalCategory == 0) ? "selected": " " %>">Select Operational Category</option>
                                            
                                            <option <%= (operationalCategory == 1) ? "selected": " " %>  value="1">Operational Category 1</option>
                                            <option <%= (operationalCategory == 2) ? "selected": " " %> value="2">Operational Category 2</option>
                                            <option <%= (operationalCategory == 3) ? "selected": " " %> value="3">Operational Category 3</option>
                                            <option <%= (operationalCategory == 4) ? "selected": " " %> value="4">Operational Category 4</option>
                                            <option <%= (operationalCategory == 5) ? "selected": " " %> value="5">Operational Category 5</option>
                                            <option <%= (operationalCategory == 6) ? "selected": " " %> value="6">Operational Category 6</option>
                                            <option <%= (operationalCategory == 7) ? "selected": " " %> value="7">Operational Category 7</option>
                                            <option <%= (operationalCategory == 8) ? "selected": " " %> value="8">Operational Category 8</option>
                                            <option <%= (operationalCategory == 9) ? "selected": " " %> value="9">Operational Category 9</option>
                                            <option <%= (operationalCategory == 10) ? "selected": " " %> value="10">Operational Category 10</option>
                                        </select>
                                        <svg>
                                            <use xlink:href="#select-arrow-down"></use>
                                        </svg>
                                    </label>
                                </div>
                            </div>

                        </div>


                        <div class="form-group">

                            <div class="form-radio">
                                <div class="label-flex">
                                    <label id="priority"  for="priority">Priority</label>
                                </div>
                                <div class="form-radio-group">
                                    <div class="form-radio-item">
                                        <input type="radio" name="priority" id="veryLow" <%= (priority == 1) ? "checked": " " %>  value="1">
                                        <label for="veryLow"><span style="color:rgb(0, 136, 0);">Very
                                                    Low</span></label>
                                        <span class="check"></span>
                                    </div>
                                    <div class="form-radio-item">
                                        <input type="radio" name="priority" id="low" <%= (priority == 2) ? "checked": " " %> value="2">
                                        <label for="low"><span style="color: rgb(66, 107, 0);">Low</span></label>
                                        <span class="check"></span>
                                    </div>
                                    <div class="form-radio-item">
                                        <input type="radio" name="priority" id="average" <%= (priority == 3) ? "checked": " " %> value="3">
                                        <label for="average"><span
                                                style="color: rgb(146, 137, 0);">Average</span></label>
                                        <span class="check"></span>
                                    </div>
                                    <div class="form-radio-item">
                                        <input type="radio" name="priority" id="high" <%= (priority == 4) ? "checked": " " %> value="4">
                                        <label for="high"><span style="color: rgb(177, 47, 0);">High</span></label>
                                        <span class="check"></span>
                                    </div>
                                    <div class="form-radio-item">
                                        <input type="radio" name="priority" id="critical" <%= (priority == 5) ? "checked": " " %> value="5">
                                        <label for="critical"><span style="color: red;">Critical</span></label>
                                        <span class="check"></span>
                                    </div>
                                </div>
                            </div>
							<input type = "hidden" name = "priority" value = 4>
                            <br>
                            <div class="form-select">
                                <div class="label-flex">
                                    <label for="impact" class="required">Impact Type</label>
                                </div>
                                <br>
                                <div class="select-list">
                                    <label class="select" for="impact">
                                        <select id="impact" required="required" name="impact">
                                            <option value="" disabled="disabled" selected="selected">Select Impact
                                            </option>
                                            <option <%= (impact == 1) ? "selected": " " %> value="1">Impact 1</option>
                                            <option <%= (impact == 2) ? "selected": " " %> value="2">Impact 2</option>
                                            <option <%= (impact == 3) ? "selected": " " %> value="3">Impact 3</option>
                                            <option <%= (impact == 4) ? "selected": " " %> value="4">Impact 4</option>
                                            <option <%= (impact == 5) ? "selected": " " %> value="5">Impact 5</option>
                                            <option <%= (impact == 6) ? "selected": " " %> value="6">Impact 6</option>
                                            <option <%= (impact == 7) ? "selected": " " %> value="7">Impact 7</option>
                                            <option <%= (impact == 8) ? "selected": " " %> value="8">Impact 8</option>
                                            <option <%= (impact == 9) ? "selected": " " %> value="9">Impact 9</option>
                                            <option <%= (impact == 10) ? "selected": " " %> value="10">Impact 10</option>
                                        </select>
                                        <svg>
                                            <use xlink:href="#select-arrow-down"></use>
                                        </svg>
                                    </label>
                                </div>
                            </div>


                            <!-- SVG Sprites-->
                            <svg class="sprites">
                                <symbol id="select-arrow-down" viewBox="0 0 10 6">
                                    <polyline points="1 1 5 5 9 1"></polyline>
                                </symbol>
                            </svg>
                            <div class="label-flex">
                                <label id="Attachments" for="Attachments" class="required">Attachments</label>
                            </div>
                            <div class="file-upload-wrapper">
                                <input type="file" id="input-file-now-custom-2" class="file-upload"
                                       data-height="500"/>
                            </div>

                        </div>


                    </div>


                    <div class="form-input">
                        <label name="title" for="title" class="required">title</label>
                        <br>
                        <input type="text" name="title" id="title"/>
                        <script>
                            document.getElementById("title").defaultValue = "<%=title%>";
                        </script>
                    </div>


                    <div class="despription">
                        <div class="despription">
                            <div class="form-input">
                                <label for="description" class="required">Description</label>
                                <textarea id="description" name="description" rows="10" cols="110"></textarea>
                                <script>
		                            document.getElementById("description").defaultValue = "<%=description%>";
		                        </script>
                            </div>
                        </div>
                    </div>

					
                    <div class="form-submit">
                    <input type = "hidden" name = "uid" value = "<%=(session.getAttribute("uid"))%>" >
                   	<input type="hidden" name = "tid" value="<%=tid%>">
                    <%if((request.getAttribute("type")!="ticketDisplay") || (session.getAttribute("type") != "user")){%>
                    	<%= (session.getAttribute("type") == "user") ? "<input type=\"submit\" value=\"Submit\" class=\"submit\" id=\"submit\" name=\"submit\"/>": "<input type=\"submit\" value=\"Update\" class=\"submit\" id=\"submit\" name=\"submit\"/>" %>
                        
                        <input type="submit" value="Reset" class="submit" id="reset" name="reset"/>
						<%}%>
                    </div>
                    
                </form>



				<% if (session.getAttribute("type") == "analyst"){%>
				<form method="POST" class="create" id="create" style="margin-top: -150px;" action="AssignTicket">
  					<input type="hidden" name = "tid" value="<%=tid%>">
                    <div class="form-submit">
                    	<input type="submit" value="Assign Ticket" class="submit" id="submit" name="submit" style="background: rgb(136, 235, 65);"/>
					</div>
                </form>
                
                
                <form method="POST" class="create" id="create" style="margin-top: -150px;" action="DeleteTicket">
  					<input type="hidden" name = "tid" value="<%=tid%>">
                    <div class="form-submit">
                    	<input type="submit" value="Delete Ticket" class="submit" id="submit" name="submit" style="background: rgb(250, 33, 33);"/>
						</div>
                    
                    
                </form>
                <%} %>

		<form method="POST" action="ListTicket" class="close">
                    <input type="submit" value="List All Tickets">
                </form>
				
            </div>
        </div>
    </div>

</div>


<!-- JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/nouislider/nouislider.min.js"></script>
<script src="vendor/wnumb/wNumb.js"></script>
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
<script src="js/main.js"></script>
<script src="https://code.jquery.com/jquery-1.8.2.min.js"></script>
</body>
</html>
<script>
$(document).ready(function(){
 $.ajaxSetup({ cache: false });
 $('#search').keyup(function(){
  $('#result').html('');
  $('#state').val('');
  var searchField = $('#search').val();
  var expression = new RegExp(searchField, "i");
  
  
  
  $.getJSON("${pageContext.request.contextPath}/data.json", function(data) {
   $.each(data, function(key, value){
    if (value.title.search(expression) != -1 || value.content.search(expression) != -1)
    {
     $('#result').append('<a href = "GetAnswer?aid='+value.id+'"><li class="list-group-item link-class">'+value.title+' | <span class="text-muted">'+value.content+'</span></li></a>');
    }
   });   
  });
 });
 
 $('#result').on('click', 'li', function() {
  var click_text = $(this).text().split('|');
  $('#search').val($.trim(click_text[0]));
  $("#result").html('');
 });
});
</script>