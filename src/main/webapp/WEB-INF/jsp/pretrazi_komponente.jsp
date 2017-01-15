<%@ page language="java" contentType="text/html; charset=UTF-8 Unicode" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 Unicode">
	<title>Pretraga</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
	
	<div id="content">
		<h2>Svi proizvodi:</h2>
		<table class="table table-hover">
			<tbody>
				<tr>
					<th width="190px">Model</th>
					<th width="120px">Kategorija</th>
					<th width="100px">Cena</th>
					<th>Opis</th>
					<th>Izmeni</th>
					<th>Obriši</th>
				</tr>
				<c:forEach items="${komponente}" var="komponenta">
					<tr>
						<th style="font-weight:normal">
							<a href="<spring:url value="/komponenta/${komponenta.id}"/>">
								${komponenta.proizvodjac} ${komponenta.naziv}
							</a>
						</th>
						<th style="font-weight:normal">${komponenta.kategorija}</th>
						<th style="font-weight:normal">${komponenta.cena}</th>
						<th style="font-weight:normal">${komponenta.opis}</th>
						<th><a href="<spring:url value="/komponenta/${komponenta.id}/izmeni"/>">Izmeni</a></th> 
						<th><a href="<spring:url value="/komponenta/${komponenta.id}/obrisi"/>">Obrisi</a></th> 
					</tr>	
				</c:forEach>
			</tbody>
		</table>
	</div>	
				
				
	</div>
	
</body>
</html>