<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%> 
<html>

<head>
 <link rel="stylesheet" type="text/css" href="/resources/indie-ui/bootstrap/css/bootstrap.css">
 <link rel="stylesheet" href="/resources/indie-ui/bootstrap/css/bootstrap-theme.css">
<script src="/resources/indie-ui/js/jquery-1.11.2.js"></script>
<script src="/resources/indie-ui/bootstrap/js/bootstrap.js"></script>

</head>




<body>


<div class="row">

<div class="col-xs-12">
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Indiependant</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    
  </div>  
  
    <div class="collapse navbar-collapse">
			
				<div class="navbar navbar-inverse">
					<div class="navbar-inner">
						<ul class="nav navbar-nav navbar-left">
		  					<li><a href="#">Home</a></li>
		  					<li class="divider-vertical"></li>
		  					<li><a href="#">About Us</a></li>
		  					<li class="divider-vertical"></li>
		  					<li><a href="#">Contact Us</a></li>
		  					<li class="divider-vertical"></li>
		  					<li><a href="#">Browse</a></li>
		  					<li class="divider-vertical"></li>
		  					<li><a href="#">Create Event</a></li>
							<li class="divider-vertical"></li>
							<li><a href="#">How It Works</a></li>
							<li class="divider-vertical"></li>
						</ul>
						
					</div> <!-- /.navbar-inner -->
				</div> <!-- /.navbar -->
			
		

</div>    
</div>






		

 <script> 
$(document).ready(function(){
  $(".row.quest").click(function(){
    var id = $(this).attr('id')+'answer';
    //alert('ans id --> '+id);
    $(("#"+id)).slideToggle("slow");
  });
});
</script>   
</body>
</html>
