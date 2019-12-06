<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav id="mainNavbar" class="navbar navbar-dark navbar-expand-md py-0 fixed-top">
      <a href="" class="navbar-brand">CANDY</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div  id="navLinks" class="collapse navbar-collapse">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="<c:url value="/index.jsp" />" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/about.jsp" />" class="nav-link">About</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/directToSignup.jsp" />" class="nav-link">Sign Up</a>
          </li>
        </ul>
      </div>
</nav> 
