<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Store Application</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>

	<center>
		<div class="alert alert-success" role="alert">
			<h1 id="titleID">Books Management</h1>
		</div>
        <h2>
        	<a href="new"><button type="button" class="btn btn-secondary">Add New Book</button></a>
        	<a href="list"><button type="button" class="btn btn-secondary">List All Books</button></a>
        	
        </h2>
	</center>
    <div align="center">
	<caption><h4>List of Books</h4></caption>

        <table class="table table-bordered">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Title</th>
		      <th scope="col">Author</th>
		      <th scope="col">Price</th>
			  <th scope="col">Actions</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />"><button type="button" class="btn btn-primary">Edit</button></a>
                    	
                    	<a href="delete?id=<c:out value='${book.id}' />"><button type="button" class="btn btn-danger">Delete</button></a>                    	
                    </td>
                </tr>
            </c:forEach>
		    </tr>
		  </tbody>
		</table>
    </div>	
</body>
</html>
