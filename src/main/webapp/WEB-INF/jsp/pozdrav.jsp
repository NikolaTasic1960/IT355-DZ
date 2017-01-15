<%@ page language="java" contentType="text/html; charset=UTF-8 Unicode" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<title>IT355-Projekat</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<h1>Nikola Tasić 1960 - IT355 DZ</h1>
        <h1> ${message}</h1>
        <sec:authorize access="hasRole('ROLE_USER')">
            <c:url value="/j_spring_security_logout"
                   var="logoutUrl" />
            <form action="${logoutUrl}" method="post"
                  id="logoutForm">
                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form>
            <script>
                function formSubmit() {
                    document.getElementById("logoutForm").submit();
                }
            </script>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                  <h2>
                      Vase korisnicko ime je :
                      ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()">Logout</a>
                  </h2>
            </c:if>
        </sec:authorize>
    </body>
</html>