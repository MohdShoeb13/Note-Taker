<%@page import="org.hibernate.Query"%>
<%@page import="com.notemaker.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.notemaker.entity.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_css_js.jsp"%>
<title>Add Note: Note Taker</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		<br>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query query = s.createQuery("from Note");
				List<Note> list = query.list();
				for (Note note : list) {
				%>
				<div class="card mt-3 card-header" >
					<img src="img/sketchbook.png"  style="max-width:80px;" class="card-img-top m-4" alt="...">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle()
						%></h5>
						<p class="card-text">
						   <%= note.getContent() %>
						</p>
						<p><b class="text-primary"><%= note.getAddedDate() %></b></p>
				         <div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>

			</div>
		</div>
	</div>

</body>
</html>