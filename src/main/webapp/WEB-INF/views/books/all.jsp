<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href='<c:url value="/theme/css/bootstrap.min.css" />' />
<html>
<head>
    <title>Book List</title>
</head>
<body>
<table class="table table-hover">

    <thead>
    <tr>
        <th scope="col">Tytuł</th>
        <th scope="col">Autor</th>
        <th scope="col">Kategoria</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><c:out value="${book.type}"/></td>
        </tr>
    </c:forEach>

    </tbody>

</table>

</table>
</body>
</html>


