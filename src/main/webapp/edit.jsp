<%@page import="com.notemaker.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.notemaker.entity.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_css_js.jsp" %>
<title>Insert title here</title>
</head>
<body>
      <div class="container">
           <%@include  file="navbar.jsp" %> 	
            <br>
            <h1>Edit your note</h1>
            <br>
            
            <%  
                  int noteId = Integer.parseInt(request.getParameter("note_id").trim());
                  Session s = FactoryProvider.getFactory().openSession();
                  Note note = (Note)s.get(Note.class, noteId);
                  
            %>
              <form action="UpdateServlet" method="post">
               
               <input value="<%= note.getId() %>" type="hidden"  name="noteId"/>
              
		  <div class="mb-3">
		    <label for="title" class="form-label">Note Title</label>
		    <input type="text"  required name="title" class="form-control" id="title" 
		    placeholder="Enter here"
		    value="<%= note.getTitle() %>">
		  </div>
		  <div class="mb-3">
		    <label for="cotent" class="form-label">Note Content</label>
		    <textarea id="content"  required name="content" class="form-control" placeholder="Enter your content here"
		     style="height: 300px;"
		      
		     ><%= note.getContent() %></textarea>
		  </div>
		  <div class="container text-center">
		  		<button type="submit" class="btn btn-success">Update Note</button> 
		  </div>
		  
		</form>
       </div>
</body>
</html>