<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="IndexApp" ng-controller="AboutController">
  <head>
    <!-- Required meta tags -->
    <!--  <meta charset="utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- AngularJS script tags -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>

    <!-- AngularJS controllers -->
    <script src="controllers/index.js"></script>
    <script src="controllers/about.js"></script>
   

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
    
    <section class="container-fluid">
    <div class="row align-items-center content">
      <div id="pic1" class="col-md-6 px-0 order-2 order-md-1">
        <img ng-src="{{ imgArray[1].src }}" alt="" class="img-fluid">
      </div>
      <div class="col-md-6 px-0 text-center order-1 order-md-2">
        <div class="row justify-content-center">
          <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>Museum of Candy</h2>
              <img ng-src="{{ imgArray[0].src }}" alt="" class="d-none d-lg-inline">
              <p class="lead">{{descriptionArray[0].description}}</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row align-items-center content">
      <div class="col-md-6 px-0 text-center">
        <div class="row justify-content-center">
          <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>Museum of Candy</h2>
              <img ng-src="{{ imgArray[0].src }}" alt="" class="d-none d-lg-inline">
              <p class="lead">{{descriptionArray[1].description}}</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 px-0">
          <img ng-src="{{ imgArray[2].src }}" alt="" class="img-fluid">
      </div>
      <div class="row align-items-center content">
          <div class="col-md-6 px-0 order-2 order-md-1">
            <img ng-src="{{ imgArray[3].src }}" alt="" class="img-fluid">
          </div>
          <div class="col-md-6 px-0 text-center order-1 order-md-2">
            <div class="row justify-content-center">
              <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                  <h2>Museum of Candy</h2>
                  <img ng-src="{{ imgArray[0].src }}" alt="" class="d-none d-lg-inline">
                  <p class="lead">{{descriptionArray[2].description}}</p>
              </div>
            </div>
          </div>
        </div>
    </div>
  </section>

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

