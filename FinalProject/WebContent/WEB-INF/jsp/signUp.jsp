<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <!--  <meta charset="utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- User defined CSS -->
    <link rel="stylesheet" href="public/css/app.css">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700&display=swap" rel="stylesheet">
    
    <!-- Icon -->
    <link rel="icon" href="public/imgs/candy.png">
    <title>Hello</title>
  </head>
  <body>
      
    <jsp:include page="navbar.jsp" />
    
   	<div class="jumbotron">
    	<h1 class="display-4">Become an Oompa Loompa!</h1>
    	<p class="lead">Sign up to receive the latest news and updates regarding the Candy Museum.</p>
    	<hr class="my-4">
    	<p>Once the form is complete, review your information below. If you would like to make an edit, press the edit button</p>
    	Submit your information by pressing the submit button.
    	<p id="registration"></p>
	</div>

	<form:form name="registration" class="jumbotron container" action="addNewUser.jsp" method="GET" modelAttribute="student">
    	<form:hidden path="id"/>
    	<div class="form-group">
        	<label for="fname">First Name</label>
        	<form:input path="fname" type="text" class="form-control" id="fName" name="fName" placeholder="Enter First Name" />
    	</div>
    	<div class="form-group">
        	<label for="lName">Last Name</label>
        	<form:input  path="lname" type="text" class="form-control" id="lName" name="lName" placeholder="Enter Last Name" />
    	</div>
    	<div class="form-group">
        	<label for="phone">Phone</label>
            <form:input  path="phone" type="number" class="form-control" id="phone" name="phone" aria-describedby="emailHelp" placeholder="Enter Age"/>
        </div>
        <div class="form-group">
            <label for="address1">Address</label>
            <form:input path="address1" type="text" class="form-control" id="address" name="address1" placeholder="Enter Address"/>
        </div>
        <div class="form-group">
            <label for="address2">Address2</label>
            <form:input path="address2" type="text" class="form-control" id="address2" name="address2" placeholder="Enter Address"/>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <form:input path="city" type="text" class="form-control" id="city" name="city" aria-describedby="emailHelp" placeholder="Enter City"/>
        </div>
        <div class="form-group">
            <label for="zip">Zip</label>
            <form:input path="zip" type="text" class="form-control" id="zip" name="zip" placeholder="Enter State"/>
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <form:input path="state" type="text" class="form-control" id="state" name="state" placeholder="Enter State"/>
        </div>
        <div class="form-group">
            <label for="country">Country</label>
            <form:input path="country" type="text" class="form-control" id="country" name="country" placeholder="Enter State"/>
        </div> 
    	<button id="submitBtn" type="submit" class="btn btn-primary">Submit</button>
	</form:form>

  <div id="description" class="container">
    <p>Descriptions used above were taken from https://www.candytopia.com/
       and images from https://www.unsplash.com. Web design was made using the template
      provided by Colt Steele in the Web Developer Bootcamp.
    </p>
  </div>
    

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    

    <!-- Navbar color change -->
    <script>
      $(function () {
        $(document).scroll(function() {
        var $nav = $("#mainNavbar");
        $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
        });
      });
    </script>
  </body>
</html>