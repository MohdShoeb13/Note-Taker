<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="all_css_js.jsp" %>
    <title>Note Taker</title>
  </head>
  <body>
       
       <div class="container py-5">
           <%@include  file="navbar.jsp" %> 	
            <br>
            <div class="card card-header" >
            <img alt="" class="img-fluid mx-auto" style="max-width:400px;"  src="img/sketchbook.png">
            <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your notes</h1>
            
             <div class="container text-center">
               <a href="add_notes.jsp" class="btn btn-outline-primary text-center">Start here</a>
             </div>
            </div>
       </div>
      
    

  </body>
</html>
