<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/products.css">
</head>
<body>
<div class="container">
    <h1>Product Management</h1>

    <!-- Add Product Form -->
    <section class="form-section">
        <h2>Add New Product</h2>
        <form method="post" action="${pageContext.request.contextPath}/products" class="form">
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="engname">Product Eng Name</label>
                <input type="text" id="engname" name="engname" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" id="description" name="description">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" id="price" name="price" step="0.01" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Add Product</button>
            </div>
        </form>
    </section>

    <!-- Product List -->
    <section class="table-section">
        <h2>Product List</h2>
        <table class="product-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Eng Name</th>
                <th>Description</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/products/${product.id}">${product.id}</a></td>
                    <td><a href="${pageContext.request.contextPath}/products/${product.id}">${product.name}</a></td>
                    <td><a href="${pageContext.request.contextPath}/products/${product.id}">${product.engname}</a></td>
                    <td><a href="${pageContext.request.contextPath}/products/${product.id}">${product.description}</a></td>
                    <td><a href="${pageContext.request.contextPath}/products/${product.id}">${product.price}</a></td>
                    <td>
                        <!-- 수정 버튼 -->
                        <a href="${pageContext.request.contextPath}/products/edit/${product.id}">
                            Edit
                        </a>
                        <!-- 삭제 버튼 -->
                        <form action="${pageContext.request.contextPath}/products/delete/${product.id}" method="post" style="display:inline;">
                            <button type="submit" onclick="return confirm('해당 상품을 삭제하시겠습니까?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</div>
</body>
</html>
<script src="<c:url value='/resources/js/main.js' />"></script>
<%@ include file="include/footer.jsp" %>