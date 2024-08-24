<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ntbngoc.utils.API"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${title}</title>
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
        <div class="pro_img" style="width: 40%">
            <img src="${product.image}" style="width: 100%; object-fit: cover">
            <button class="main_pro_sales">
                Sale!
            </button>
        </div>
            <div class="main_info" style="flex: 1">
            <div class="chose_about">
                <a href="home">Home</a>
                <p>/</p>
                <a href="store?category=${category.id}">${category.name}</a>
                <p>/${API.getShortName(product.name)}</p>
            </div>
            <h1 class="main_info_h1">
                ${product.name}
            </h1>
            <div class="main_info_pay">
                <p class="pay_pro_old">
                    $${product.price}
                </p>
                <p class="pay_pro_new">
                    
                    $${API.discountedPrice(product.price, product.discount)}
                </p>
            </div>
            <p class="main_info_text" style="margin: 1.5rem 0; line-height: 1.8">
                ${product.description}
            </p>
            <form class="puschase" action="addtocart" method="post">
                <input type="hidden" name="productId" value="${product.id}">
                <div class="de_increase">
                    <div class="decrease_button">-</div>
                    <input type="text" name="quantity" class="pus_input" value="1">
                    <div class="increase_button">+</div>
                </div>
                <button class="pro_addtocart" type="submit">ADD TO CART</button>
            </form>
            <hr class="main_info_hr">
        </div>
    </div>
                
    <div class="product-main">
    <div class="container">
    <h2 class="title">Related Product</h2>

    <div class="product-grid">
        <c:forEach items="${relateProduct}" var="product2">
        <div class="showcase">
        <div class="showcase-banner">
          <img
            src="${product2.image}"
            alt="${product2.name}"
            width="300"9  ggt
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
          <a href="store?category=${product2.id_category}" class="showcase-category">${category.name}</a>

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
            <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
            <del>$${product2.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>
    <c:import url="../component/footer.jsp" />
    
    <script src="./style/product.js"></script>
</body>
</html>