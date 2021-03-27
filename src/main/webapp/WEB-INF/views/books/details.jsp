<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href='<c:url value="/theme/css/bootstrap.min.css" />' />
<html>
<head>
    <title>Szczegóły książki</title>
</head>
<body>
<table class="table table-hover">

    <thead>
    <tr>
        <th scope="col">Tytuł</th>
        <th scope="col">Autor</th>
        <th scope="col">Isbn</th>
        <th scope="col">Kategoria</th>
        <th scope="col">Wydawca</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.type}"/></td>
            <td><c:out value="${book.publisher}"/></td>
        </tr>
    </tbody>
</table>

</table>
</body>
</html>
