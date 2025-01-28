<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/edit.css" />

<div class="container">
    <h2>상품 수정</h2>
    <form action="${pageContext.request.contextPath}/products/edit/${product.id}" method="post">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${product.name}" required>
        </div>
        <div>
            <label for="engname">Eng Name:</label>
            <input type="text" id="engname" name="engname" value="${product.engname}" required>
        </div>
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required>${product.description}</textarea>
        </div>
        <div>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" value="${product.price}" required>
        </div>
        <div class="actions">
            <button type="submit">Save</button>
            <button type="button" class="cancel" onclick="window.history.back()">Cancel</button>
        </div>
    </form>
</div>

<script src="<c:url value='/resources/js/main.js' />"></script>
<%@ include file="../include/footer.jsp" %>