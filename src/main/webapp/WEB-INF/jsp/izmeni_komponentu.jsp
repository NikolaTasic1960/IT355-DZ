<%@ page language="java" contentType="text/html; charset=UTF-8 Unicode" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Izmeni komponentu</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css"/>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.min.js"></script>
	
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
		
		<form action="<spring:url value="/komponenta/${komponenta.id}/izmeni"/>" method="post" class="col-md-8 col-md-offset-2">
		
			<div class="form-group">
				<label for="komponenta-naziv">Naziv</label>
				<input type="text" id="komponenta-naziv" class="form-control" name="naziv" value="${komponenta.naziv}"/>
			</div>
			
			<div lass="form-group">
				<label for="kategorija">Kategorija</label><br>
				<select name="kategorija" class="selectpicker">
					<option value="${komponenta.kategorija}" selected>${komponenta.kategorija}</option>
					<option value="Procesor">Procesor</option>
					<option value="Napajanje">Napajanje</option>
					<option value="RAM">RAM</option>
					<option value="Maticna ploca">Maticna ploča</option>
					<option value="Graficka kartica">Grafic�ka kartica</option>
					<option value="Monitor">Monitor</option>
					<option value="Tastatura">Tastatura</option>
					<option value="Mis">Mis</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="proizvodjac">Proizvođač</label>
				<input type="text" id="proizvodjac" class="form-control" name="proizvodjac" value="${komponenta.proizvodjac}"/>
			</div>
			
			<div class="form-group">
				<label for="cena">Cena</label>
				<input type="text" id="cena" class="form-control" name="cena" value="${komponenta.cena}"/>
			</div>
			
			<div class="form-group">
				<label for="opis">Opis</label>
				<textarea id="opis" class="form-control" rows="3" name="opis">${komponenta.opis}</textarea>
			</div>
			
			<button type="submit" class="btn btn-default">Sacuvaj izmene</button>
			<button type="button" class="btn btn-default" onClick="history.go(-1);return true;">Nazad</button>
			
		</form>
		
		</div>
		
	</div>
	
</body>

</html>