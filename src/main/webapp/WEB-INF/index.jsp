<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secret Code</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<div class="container">
  		<div class="row">
    		<div class="col text-center">
      			<!-- placeholder for left column -->
    		</div>
    		<div class="col text-center">
    			<p class="text-danger"><c:out value="${error}"/></p>
      			<form method="POST" action="/processForm">
  					<div class="form-group">
    					<label>What is the code?</label>
    					<input type="text" class="form-control" name="guess">
    					<button class="btn btn-info">Try the code</button>
  					</div>
      			</form>	
    		</div>
    		<div class="col text-center">
      			<!-- placeholder for left column -->
    		</div>
 		</div>
	</div>
</body>
</html>