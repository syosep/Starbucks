<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product List</h1>
<form method="post" action="/products">
    Name <input type="text" name="name" required>
    EngName <input type="text" name="engname" required>
    Description <input type="text" name="description">
    Price <input type="number" step="0.01" name="price" required>
    <button type="submit">Add Product</button>
</form>
<ul>
    <c:forEach items="${products}" var="product">
        <li>${product.name} - ${product.engname} - ${product.description} - ${product.price}</li>
    </c:forEach>
</ul>
</body>
</html>
