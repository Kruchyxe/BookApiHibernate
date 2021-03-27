<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href='<c:url value="/theme/css/bootstrap.min.css" />' />
<html>
<head>
    <title>Book List</title>
</head>
<body>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h4 mb-0 text-gray-800">Lista książek</h1>
    <a href="<c:url value="/admin/books/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Dodaj książkę</a>
</div>
<table class="table table-hover">

    <thead>
    <tr>
        <th scope="col">Tytuł</th>
        <th scope="col">Autor</th>
        <th scope="col">Kategoria</th>
        <th scope="col">Akcja</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><c:out value="${book.type}"/></td>
            <td>
                <a href='<c:url value="/admin/books/delete/${book.id}"/>'>Usuń</a>
                <a href='<c:url value="/admin/books/edit/${book.id}"/>'>Edycja</a>
                <a href='<c:url value="/admin/books/show/${book.id}"/>'>Pokaż</a>
            </td>
        </tr>


    </c:forEach>

    </tbody>

</table>

</table>
</body>
</html>


