<%@page import="model.Ticket" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Create Ticket</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

</head>

<body>


    <div class="main">
        <%  String imgh1 = request.getParameter("imgh1");
            String imgp = request.getParameter("imgp"); 
            if (imgh1 == null) {
                imgh1 = "Create Ticket";
                imgp = "Fill out the Form";
            }
        %>
            
        <div class="container">
            <div class="ticket-content">
                <div class="ticket-img">
                    <div class="ticket-img-content">
                        <h2><%=imgh1%></h2>
                        <p><%=imgp%></p>
                    </div>
                </div>
                <div class="ticket-form">

<span style="color: black;">

					
		<%
		 	String title = "";
			String operationalCategory = "";
			int priority = 0;
			int impact = 0;
			int issue = 0;
			String description = "";
			if(request.getAttribute("ticket")!=null){
				Ticket ticket = (Ticket) request.getAttribute("ticket");
				title = ticket.getTitle();
			}
		%>
	<%=title%>
</span>
                    <form method="POST" class="create" id="create" action="AddTicket">
                        <div class="form-row">
                            <div class="form-group">

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
                                                    Type</option>
                                                <option value="1">Issue type 1</option>
                                                <option value="2">Issue type 2</option>
                                                <option value="3">Issue type 3</option>
                                                <option value="4">Issue type 4</option>
                                                <option value="5">Issue type 5</option>
                                                <option value="6">Issue type 6</option>
                                                <option value="7">Issue type 7</option>
                                                <option value="8">Issue type 8</option>
                                                <option value="9">Issue type 9</option>
                                                <option value="10">Issue type 10</option>
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
                                            <select id="OperationalCategory" name = "OperationalCategory" required="required">
                                                <option value="" disabled="disabled" selected="selected">Select
                                                    Operational Category</option>
                                                <option value="1">Operational Category 1</option>
                                                <option value="2">Operational Category 2</option>
                                                <option value="3">Operational Category 3</option>
                                                <option value="4">Operational Category 4</option>
                                                <option value="5">Operational Category 5</option>
                                                <option value="6">Operational Category 6</option>
                                                <option value="7">Operational Category 7</option>
                                                <option value="8">Operational Category 8</option>
                                                <option value="9">Operational Category 9</option>
                                                <option value="10">Operational Category 10</option>
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
                                        <label for="priority">Priority</label>
                                    </div>
                                    <div class="form-radio-group">
                                        <div class="form-radio-item">
                                            <input type="radio" name="priority" id="veryLow" checked value="1">
                                            <label for="veryLow"><span style="color:rgb(0, 136, 0);">Very
                                                    Low</span></label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="priority" id="low" value="2">
                                            <label for="low"><span style="color: rgb(66, 107, 0);">Low</span></label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="priority" id="average" value="3">
                                            <label for="average"><span
                                                    style="color: rgb(146, 137, 0);">Average</span></label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="priority" id="high" value="4">
                                            <label for="high"><span style="color: rgb(177, 47, 0);">High</span></label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="priority" id="critical" value="5">
                                            <label for="critical"><span style="color: red;">Critical</span></label>
                                            <span class="check"></span>
                                        </div>
                                    </div>
                                </div>

                                <br>
                                <div class="form-select">
                                    <div class="label-flex">
                                        <label for="impact" class="required">Impact Type</label>
                                    </div>
                                    <br>
                                    <div class="select-list">
                                        <label class="select" for="impact">
                                            <select id="impact" required="required" name = "impact">
                                                <option value="" disabled="disabled" selected="selected">Select
                                                    Impact
                                                </option>
                                                <option value="1">Impact 1</option>
                                                <option value="2">Impact 2</option>
                                                <option value="3">Impact 3</option>
                                                <option value="4">Impact 4</option>
                                                <option value="5">Impact 5</option>
                                                <option value="6">Impact 6</option>
                                                <option value="7">Impact 7</option>
                                                <option value="8">Impact 8</option>
                                                <option value="9">Impact 9</option>
                                                <option value="10">Impact 10</option>
                                            </select>
                                            <svg>
                                                <use xlink:href="#select-arrow-down"></use>
                                            </svg>
                                        </label>
                                    </div>
                                </div>


                                <!-- SVG Sprites-->
                                <svg class="sprites">
                                    <symbol id="select-arrow-down" viewbox="0 0 10 6">
                                        <polyline points="1 1 5 5 9 1"></polyline>
                                    </symbol>
                                </svg>
                                <div class="label-flex">
                                    <label for="" class="required">Attachments</label>
                                </div>
                                <div class="file-upload-wrapper">
                                    <input type="file" id="input-file-now-custom-2" class="file-upload"
                                        data-height="500" />
                                </div>

                            </div>



                        </div>



                        <div class="form-input">
                            <label name="title" for="title" class="required">title</label>
                            <br>
                            <input type="text" name="title" id="title" />
                        </div>



                        <div class="despription">
                            <div class="despription">
                                <div class="form-input">
                                    <label for="description" class="required">Description</label>
                                    <textarea id="description" name="description" rows="10" cols="110"></textarea>
                                </div>
                            </div>
                        </div>




                        <div class="form-submit">
                            <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />

                        </div>
                    </form>


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
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
</body>

</html>