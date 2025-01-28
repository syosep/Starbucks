<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/detail.css" />

<br>
<br>
<br>
<div class="product-detail">
    <div class="product-image">
        <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2024/12/[9300000005682]_20241210093018261.jpg" alt="${product.name}" />
    </div>
    <div class="product-info">
        <h1>${product.name}</h1>
        <h2>${product.engname}</h2>
        <p>${product.description}</p>
        <p><strong>Price:</strong> $${product.price}</p>
        <button type="button" onclick="alert('나만의 푸드로 등록되었습니다.')">♡ 나만의 푸드로 등록</button>
    </div>
</div>

<script src="<c:url value='/resources/js/main.js' />"></script>
<%@ include file="../include/footer.jsp" %>