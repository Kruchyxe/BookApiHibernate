
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Book add</title>
</head>
<body>
<div align="center">
    <h2>Dodaj nową książkę</h2>
<form:form method="post"
           modelAttribute="book">
    <table border="0" cellpadding="5">
        <tr>
            <td>Author:</td>
            <td><form:input path="author" placeholder="Wpisz autora"/></td>

        </tr>
        <tr>
            <td>ISBN:</td>
            <td><form:input path="isbn" placeholder="Wpisz nr ISBN"/></td>

        </tr>
        <tr>
            <td>Wydawca:</td>
            <td><form:input path="publisher" placeholder="Wpisz wydawcę"/></td>

        </tr>
        <tr>
            <td>Tytuł:</td>
            <td><form:input path="title" placeholder="Wpisz tytuł"/></td>

        </tr>
        <tr>
            <td>Kategoria:</td>
            <td><form:input path="type" placeholder="Wpisz kategorie"/></td>

        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Zapisz"/></td>
        </tr>
    </table>
</form:form>
</div>
</body>
</html>
