

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="category">
    <div class="container">
      <div class="category-item-container has-scrollbar">
          <c:forEach items="${lstCategory}" var="category">
            <div class="category-item">

          <div class="category-content-box">
            <div class="category-content-flex">
              <h3 class="category-item-title">${category.name}</h3>

              <p class="category-item-amount">(53)</p>
            </div>

            <a href="#" class="category-btn">Show all</a>
          </div>
        </div>
          </c:forEach>
      </div>
    </div>
  </div>