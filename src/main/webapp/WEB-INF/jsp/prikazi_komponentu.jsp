<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Prikaži komponentu</title>
	
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>

<body>
<jsp:include page="header.jsp" />

        <h2>Informacije o komponenti</h2>
        <table>
            <tr>
                <td>Naziv: </td>
                <td>${naziv}</td>
            </tr>
            <tr>
                <td>Tip: </td>
                <td>${tip}</td>
            </tr>
            <tr>
                <td>Proizvodjac: </td>
                <td>${proizvodjac}</td>
            </tr>
            <tr>
                <td>Cena: </td>
                <td>${cena}</td>
            </tr>
        </table>

    </body>
</html>