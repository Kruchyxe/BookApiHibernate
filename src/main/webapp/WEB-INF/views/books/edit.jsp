<%--
  Created by IntelliJ IDEA.
  User: krzysiek
  Date: 26.03.2021
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>

    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">

        <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>

</div>

<div class="card shadow mb-4">

    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-primary">Edycja książki</h6>

    </div>
    <div class="card-body">
        <form method="post">
            <input type="hidden" name="id" value="${book.id}"/>
            <div class="form-group">
                <label for="bookTitle">Tytuł</label>
                <input value="${book.title}" name="title" type="text" class="form-control" id="bookTitle" placeholder="Tytuł">
            </div>
            <div class="form-group">
                <label for="bookAuthor">Author</label>
                <input value="${book.author}" name="author"  class="form-control" id="bookAuthor" placeholder="Autor">
            </div>
            <div class="form-group">
                <label for="bookIsbn">ISBN</label>
                <input value="${book.isbn}" name="isbn"  class="form-control" id="bookIsbn" placeholder="Numer isbn">
            </div>
            <div class="form-group">
                <label for="bookPublisher">Wydawca</label>
                <input value="${book.publisher}" name="publisher"  class="form-control" id="bookPublisher" placeholder="Wydawca">
            </div>
            <div class="form-group">
                <label for="bookType">Kategoria</label>
                <input value="${book.type}" name="type"  class="form-control" id="bookType" placeholder="Gatunek">
            </div>

            <button type="submit" class="btn btn-primary">Edytuj</button>
        </form>
    </div>
</div>
</div>
</body>
</html>
