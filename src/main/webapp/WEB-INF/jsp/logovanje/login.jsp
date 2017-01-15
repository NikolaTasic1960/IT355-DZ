<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Login</title>
        	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body onload='document.loginForm.username.focus();'>
        <jsp:include page="../header.jsp"></jsp:include>
        <h1 style="margin-left:265px;">Uloguj se:</h1>
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>
    
    <form method="post" class="col-md-8 col-md-offset-2" action="${flowExecutionUrl}">

		<input type="hidden" name="_eventId" value="performLogin"> 
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

		<input type="text" name="userName" maxlength="40"><br> 
		<input type="password" name="password" maxlength="40">
		<input type="submit" value="Login" />

	</form>
    
    <!-- 
    <form name='loginForm' class="col-md-8 col-md-offset-2"
          action="<c:url value='/j_spring_security_check'/>" method='POST'>
        <table>
            <tr>
                <td>Korisnicko ime:</td>
                <td><input type='text' name='username'></td>
            </tr>
            <tr>
                <td>Lozinka:</td>
                <td><input type='password' name='password'/></td>
            </tr>
            <tr>
                <td colspan='2'><input name="submit"
                                       type="submit"
                                       value="Login" /></td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
    -->
</body>
</html>

