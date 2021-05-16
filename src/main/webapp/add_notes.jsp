<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_css_js.jsp" %>
<title>Add Notes</title>
</head>
<body>
     
     <div class="container">
           <%@include  file="navbar.jsp" %> 	
            <br>
            <h1>Add your notes here</h1><br>
            <!-- Form for adding notes -->
		  <form action="SaveNoteServlet" method="post">
		  <div class="mb-3">
		    <label for="title" class="form-label">Note Title</label>
		    <input type="text"  required name="title" class="form-control" id="title" placeholder="Enter here">
		  </div>
		  <div class="mb-3">
		    <label for="cotent" class="form-label">Note Content</label>
		    <textarea id="content"  required name="content" class="form-control" placeholder="Enter your content here"
		     style="height: 300px;"></textarea>
		  </div>
		  <div class="container text-center">
		  		<button type="submit" class="btn btn-primary">Add</button> 
		  </div>
		  
		</form>
       </div>
       
</body>
</html>