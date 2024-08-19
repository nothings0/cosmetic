<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ntbngoc.utils.API"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="product-container">
  <div class="container">
    <div class="sidebar has-scrollbar" data-mobile-menu>
      <div class="sidebar-category">
        <div class="sidebar-top">
          <h2 class="sidebar-title">Category</h2>

          <button class="sidebar-close-btn" data-mobile-menu-close-btn>
            <ion-icon name="close-outline"></ion-icon>
          </button>
        </div>

        <ul class="sidebar-menu-category-list">
          <c:forEach items="${lstCategory}" var="category">
          <li class="sidebar-menu-category">
            <button class="sidebar-accordion-menu" data-accordion-btn>
              <div class="menu-title-flex">
                  <a href="store?category=${category.id}" class="menu-title" style="font-weight: ${categoryId == category.id ? "bold" : "400px"}">${category.name}</a>
              </div>
            </button>
          </li>
          </c:forEach>
        </ul>
      </div>
    </div>

    <div class="product-box">

      <c:if test="${categoryId == null}" >
      <div class="">
        <div class="product-grid-store">
          <c:forEach items="${products}" var="product">
            <div class="showcase">
              <div class="showcase-banner">
                <img
                  src="${product.image}"
                  alt="${product.name}"
                  width="300"
                  class="product-img default"
                />

                <!--<p class="showcase-badge">{product.discount}</p>-->

                <div class="showcase-actions">
                  <button class="btn-action">
                    <ion-icon name="heart-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="eye-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="repeat-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="bag-add-outline"></ion-icon>
                  </button>
                </div>
              </div>

              <div class="showcase-content">
                <a href="store?category=${product.id_category}" class="showcase-category">${API.getCategoryNameById(lstCategory, product.id_category)}</a>

                <a href="product?id=${product.id}">
                  <h3 class="showcase-title">${product.name}</h3>
                </a>

                <div class="showcase-rating">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                </div>

                <div class="price-box">
                  <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
                  <del>$${product.price}</del>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
          <div style="display: flex; align-items: center; justify-content: center; gap: 0 10px; margin-top: 1rem;">
            <c:if test="${currentPage > 1}">
                <a href="store?page=${currentPage - 1}" class="page-num">
                    <i class="fa-solid fa-chevron-left"></i>
                </a>
            </c:if>

            <c:forEach begin="1" end="${totalPages}" var="page">
                <c:choose>
                    <c:when test="${page == currentPage}">
                        <strong class="page-num">${page}</strong>
                    </c:when>
                    <c:otherwise>
                        <a class="page-num" href="store?page=${page}">${page}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:if test="${currentPage < totalPages}">
                <a href="store?page=${currentPage + 1}" class="page-num">
                    <i class="fa-solid fa-chevron-right"></i>
                </a>
            </c:if>
        </div>
      </div>
      </c:if>

      <c:if test="${categoryId != null}" >
      <div class="">
        <h2 class="title">Danh sách sản phẩm ${API.getCategoryNameById(lstCategory, categoryId)}</h2>

        <div class="product-grid-store">
          <c:forEach items="${lstProductByCategory}" var="product">
            <div class="showcase">
              <div class="showcase-banner">
                <img
                  src="${product.image}"
                  alt="${product.name}"
                  width="300"
                  class="product-img default"
                />

                <!--<p class="showcase-badge">{product.discount}</p>-->

                <div class="showcase-actions">
                  <button class="btn-action">
                    <ion-icon name="heart-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="eye-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="repeat-outline"></ion-icon>
                  </button>

                  <button class="btn-action">
                    <ion-icon name="bag-add-outline"></ion-icon>
                  </button>
                </div>
              </div>

              <div class="showcase-content">
                <a href="store?category=${product.id_category}" class="showcase-category">${API.getCategoryNameById(lstCategory, product.id_category)}</a>

                <a href="product?id=${product.id}">
                  <h3 class="showcase-title">${product.name}</h3>
                </a>

                <div class="showcase-rating">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                </div>

                <div class="price-box">
                  <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
                  <del>$${product.price}</del>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
      </c:if>
    </div>
  </div>
</div>
