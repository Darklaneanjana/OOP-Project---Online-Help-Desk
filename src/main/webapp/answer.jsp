<%@page import="model.Answer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en"
	class=" sizes customelements history pointerevents postmessage webgl websockets cssanimations csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox picture srcset webworkers">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Knowledge Base Answer</title>
<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/all.min.css">

<link rel="stylesheet" href="./css/main.css">


</head>

<%
		 	
			int aid = 0;
			int author = 0;
			String title = "";
			String created_at = "";
			String updated_at = "";
			String content = "";
				Answer answer = (Answer) request.getAttribute("answer");
				aid = answer.getAid();
				author = answer.getAuthor();
				title = answer.getTitle();
				content = answer.getContent();
				created_at = (answer.getCreated_at()).toString();
				updated_at = (answer.getUpdated_at()).toString();
				

		%>
	
    
<body>
	<div class="main">
		<div class="container" style="background-color: #e4f0fa;">
			<div class="answer-content">


				<section
					class="knowledge-single-section padding-bottom padding-top oh">
					<div class="container" style="background-color: #e4f0fa;">
						<div class="row mb--70">
							<div class="col-xl-8 col-lg-7 mb-70">
								<div class="knowledge-single">
								
									<div class="knowledge-header">
										<h3 class="title"><%=title%></h3>
										<ul class="knowledge-meta">
											<li>Created: <a
												href="http://pixner.net/deskoto/main/knowledge-based-single.html#0"><%=created_at%></a></li>
											<li>Updated: <a
												href="http://pixner.net/deskoto/main/knowledge-based-single.html#0"><%=updated_at%></a></li>
										</ul>
									</div>
									
									<div style="height: auto;" class="quote-item">
										<div class="quote-thumb">
											<img src="./images/quote.png" alt="knowledge">
										</div>
										<div class="quote-content">
											<p style="font-size: 15px;">This article is always evolving and being updated when
												our product is being developed. Be sure to keep track of
												this article so you'll stay updated with the last version of it!</p>	
										</div>
									</div>
									
									<div class="know-single-item">
										<%=content%>
									</div>
									
								</div>
							</div>
							<div class="col-xl-4 col-lg-5 mb-70">
								<div class="row">
									<div class="col-lg-12 col-md-6">
										<div class="knowledge-widget">
											<div class="author">
												<div class="author-thumb">
													<a
														href="http://pixner.net/deskoto/main/knowledge-based-single.html#0"><img
														src="./images/01.png" alt="cate"></a>
												</div>
												<div class="author-content">
													<span class="by">Article by</span>
													<h5 class="subtitle">
														<a
															href="http://pixner.net/deskoto/main/knowledge-based-single.html#0"><%=author%></a>
													</h5>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="knowledge-widget">
											<div class="call-to-page">
												<h5 class="title">Can't find what you are looking for?</h5>
												<p>Answer eka hari yann nettn kiyanna awlk na.</p>
												<a
													href="http://pixner.net/deskoto/main/knowledge-based-single.html#0"
													class="call-button">Contact us</a>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						
						
						
						
					</div>
					
				</section>
				

			</div>
			<% if ((session.getAttribute("type") == "analyst") && (session.getAttribute("type") != null)){%>
				<form method="POST" class="create" id="create" style="margin-top:;" action="UpdateAnswer">
                    <input type="hidden" name = "aid" value="<%=aid%>">
                    <div class="form-submit">
                    	<input type="submit" value="UpdateAnswer" class="submitt" id="submit" name="submit" style="background: rgb(54, 128, 2);"/>
					</div>
                </form>
                
                
                <form method="POST" class="create" id="create" style="margin-top: ;" action="DeleteAnswer">
                <%=aid%>
  					<input type="hidden" name = "aid" value="<%=aid%>">
                    <div class="form-submit">
                    	<input type="submit" value="Delete Answer" class="submitt" id="submit" name="submit" style="background: rgb(250, 33, 33);"/>
						</div>
                    
                    
                </form>
                <%} %>
		</div>

	</div>



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/nouislider/nouislider.min.js"></script>
	<script src="vendor/wnumb/wNumb.js"></script>
	<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
	<script src="js/main.js"></script>
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>

</body>
</html>