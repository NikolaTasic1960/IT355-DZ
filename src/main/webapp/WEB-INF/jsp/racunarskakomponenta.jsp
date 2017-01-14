<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2>Unesite informacije o racunarskoj komponenti</h2>

    <form:form method="POST" action="/it355.dz.nikolatasic1960/addKomponenta" commandName="racunarskakomponenta">
    <table>
        <tr>
            <td><form:label path="naziv"><spring:message
                code="name"/></form:label></td>
            <td><form:input path="naziv" /></td>
        </tr>
        <tr>
            <td><form:label path="tip"><spring:message
                code="tip"/></form:label></td>
            <td><form:input path="tip" /></td>
        </tr>
        <tr>
            <td><form:label path="proizvodjac"><spring:message
                code="proizvodjac"/></form:label></td>
            <td><form:input path="proizvodjac" /></td>
        </tr>
        <tr>
            <td><form:label path="cena"><spring:message
                code="cena"/></form:label></td>
            <td><form:input path="cena" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Pošalji"/>
            </td>
        </tr>
    </table>
</form:form>

