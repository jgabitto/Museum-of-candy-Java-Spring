<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="IndexApp" ng-controller="PostController">
  <head>
    <!-- Required meta tags -->
    <!--  <meta charset="utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- AngularJS script tags -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>

    <!-- AngularJS controllers -->
    <script src="controllers/index.js"></script>
    <script src="controllers/post.js"></script>

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

	<form name="registration" class="jumbotron container" ng-submit="sendPost()">
    	<div class="form-group">
        	<label for="firstName">First Name</label>
        	<input ng-model="firstName" type="text" class="form-control" id="firstName" name="firstName" aria-describedby="emailHelp" placeholder="Enter First Name" required>
    	</div>
    	<div class="form-group">
        	<label for="lastName">Last Name</label>
        	<input ng-model="lastName" type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name" required>
    	</div>
    	<div class="form-group">
        	<label for="age">Age</label>
            <input ng-model="age" type="number" class="form-control" id="age" name="age" aria-describedby="emailHelp" placeholder="Enter Age">
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <input ng-model="gender" type="text" class="form-control" id="gender" name="gender" placeholder="Enter Gender">
            </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input ng-model="address" type="text" class="form-control" id="address" name="address" placeholder="Enter Address">
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input ng-model="city" type="text" class="form-control" id="city" name="city" aria-describedby="emailHelp" placeholder="Enter City">
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input ng-model="state" type="text" class="form-control" id="state" name="state" placeholder="Enter State">
        </div>
    	<button id="registerBtn" ng-click="register()" type="button" ng-disabled="registration.$invalid" class="btn btn-primary">Register</button>
    	<button id="editBtn" ng-click="edit()" ng-disabled="registration.$invalid" class="btn btn-primary hideBtn">Edit</button>
    	<button id="submitBtn" ng-disabled="registration.$invalid" type="submit" class="btn btn-primary hideBtn">Submit</button>
</form>

	<div class="container jumbotron">
    	<ul id="registration" ng-repeat="i in inputs">
        	<li><strong>Name:</strong> {{i.firstName}}</li>
        	<li><strong>Last Name:</strong> {{i.lastName}}</li>
        	<li><strong>Age:</strong> {{i.age}}</li>
        	<li><strong>Gender:</strong> {{i.gender}}</li>
        	<li><strong>Address</strong> {{i.address}}</li>
        	<li><strong>City:</strong> {{i.city}}</li>
        	<li><strong>State:</strong> {{i.state}}</li>
    	</ul>
	</div>

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