<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

<jsp:include page="footer.jsp" />