<%@ page language="java" contentType="text/html; charset=UTF-8 Unicode" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 Unicode">
	<title>${komponenta.proizvodjac} ${komponenta.naziv}</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
	
		<h2>${komponenta.proizvodjac} ${komponenta.naziv}</h2>
		<ul class="list-group">
			<li class="list-group-item">
				<label>Proizvođač:</label>
				<span>${komponenta.proizvodjac}</span>
			</li>
			<li class="list-group-item">
				<label>Naziv:</label>
				<span>${komponenta.naziv}</span>
			</li>
			<li class="list-group-item">
				<label>Kategorija:</label>
				<span>${komponenta.kategorija}</span>
			</li>
			<li class="list-group-item">
				<label>Cena:</label>
				<span>${komponenta.cena}</span>
			</li>
			<li class="list-group-item">
				<label>Opis:</label>
				<span>${komponenta.opis}</span>
			</li>
		</ul>	
		
		<button type="button" class="btn btn-default" onClick="history.go(-1);return true;">Nazad</button>
		
	</div>
	
</body>
</html>