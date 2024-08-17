<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="./style/index.css" />
    </head>
<body>
    <c:import url="../component/header.jsp" />
    <div class="info_product">
        <div class="pro_img">
            <div class="main_img">
                <img src="${product.image}">
                <button class="main_pro_sales">
                    Sale!
                </button>
                <button class="find">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
        </div>
        <div class="main_info">
            <div class="chose_about">
                <a href="#">Home</a>
                <p> / </p>
                <a href="#">Hair Care</a>
                <p>/ Product Name 1</p>
            </div>
            <a class="chose_here_a" href="#">Hair Care</a>
            <h1 class="main_info_h1">
                ${product.name}
            </h1>
            <div class="main_info_pay">
                <p class="pay_pro_old">
                    $75.00
                </p>
                <p class="pay_pro_new">
                    $${product.price}
                </p>
                <p class="promotion">
                    & Free Shipping
                </p>
            </div>
<!--            <p class="main_info_text">
                
            </p>-->
            <div class="puschase">
                <div class="de_increase">
                    <button class="decrease_button">-</button>
                    <input type="text" class="pus_input" value="1">
                    <button class="increase_button">+</button>
                </div>
                <button class="pro_addtocart">ADD TO CART</button>
            </div>
            <hr class="main_info_hr">
            <div class="category_link">
                <p class="category">Category:</p>
                <a class="category_a" href="#">Hair care</a>
            </div>
        </div>
    </div>
                
    <div class="product-main">
    <div class="container">
    <h2 class="title">Best Seller</h2>

    <div class="product-grid">
        <c:forEach items="${relateProduct}" var="product2">
        <div class="showcase">
        <div class="showcase-banner">
          <img
            src="${product2.image}"
            alt="${product2.name}"
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

          <a href="product?id=${product2.id}">
            <h3 class="showcase-title">
              ${product2.name}
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
            <del>$${product2.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>
</body>
</html>