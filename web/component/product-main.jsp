

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="product-main">
<div class="product-main container">
    <h2 class="title">New Products</h2>

    <div class="product-grid">
        <c:forEach items="${lstTrending}" var="product">
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
          <a href="#" class="showcase-category">jacket</a>

          <a href="#">
            <h3 class="showcase-title">
              ${product.name}
            </h3>
          </a>

          <div class="showcase-rating">
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star-outline"></ion-icon>
            <ion-icon name="star-outline"></ion-icon>
          </div>

          <div class="price-box">
            <p class="price">$48.00</p>
            <del>$${product.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>
<div class="product-main">
    <div class="container">
    <h2 class="title">Best Seller</h2>

    <div class="product-grid">
        <c:forEach items="${lstBestSeller}" var="product">
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
          <a href="#" class="showcase-category">jacket</a>

          <a href="#">
            <h3 class="showcase-title">
              ${product.name}
            </h3>
          </a>

          <div class="showcase-rating">
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star"></ion-icon>
            <ion-icon name="star-outline"></ion-icon>
            <ion-icon name="star-outline"></ion-icon>
          </div>

          <div class="price-box">
            <p class="price">$48.00</p>
            <del>$${product.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>
