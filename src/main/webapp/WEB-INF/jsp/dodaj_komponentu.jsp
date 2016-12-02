<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Dodaj komponentu</title>
	
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
		
		<form class="col-md-8 col-md-offset-2">
		
			<div class="form-group">
				<label for="komponenta-naziv">Naziv</label>
				<input type="text" id="komponenta-naziv" class="form-control" name="naziv"/>
			</div>
			
			<div class="form-group">
				<label for="kategorija">Kategorija</label>
				<input type="text" id="kategorija" class="form-control" name="kategorija"/>
			</div>
			
			<div class="form-group">
				<label for="proizvodjac">Proizvođač</label>
				<input type="text" id="proizvodjac" class="form-control" name="proizvodjac"/>
			</div>
			
			<div class="form-group">
				<label for="cena">Cena</label>
				<input type="text" id="cena" class="form-control" name="cena"/>
			</div>
			
			<div class="form-group">
				<label for="opis">Opis</label>
				<textarea class="form-control" rows="3"></textarea>
			</div>
			
			<button type="submit" class="btn btn-default">Dodaj</button>
		
		</form>
		
		</div>
		
	</div>
	
</body>

</html>