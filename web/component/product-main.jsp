<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ntbngoc.utils.API"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="product-main">
<div class="product-main container">
    <h2 class="title">Dành cho bạn</h2>

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
          <a href="store?category=${product.id_category}" class="showcase-category">${API.getCategoryNameById(lstCategory, product.id_category)}</a>

          <a href="product?id=${product.id}">
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
            <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
            <del>$${product.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>

<div class="product-main container">
<div class="product-featured">
    <h2 class="title">Deal of the day</h2>

    <div class="showcase-wrapper has-scrollbar">
      <c:forEach items="${lstDealOfDay}" var="product">
      <div class="showcase-container">
        <div class="showcase">
          <div class="showcase-banner">
            <img
              src="${product.image}"
              alt="shampoo, conditioner & facewash packs"
              class="showcase-img"
            />
          </div>

          <div class="showcase-content">
            <div class="showcase-rating">
              <ion-icon name="star"></ion-icon>
              <ion-icon name="star"></ion-icon>
              <ion-icon name="star"></ion-icon>
              <ion-icon name="star-outline"></ion-icon>
              <ion-icon name="star-outline"></ion-icon>
            </div>

            <a href="product?id=${product.id}">
              <h3 class="showcase-title">
                ${product.name}
              </h3>
            </a>

            <div class="price-box">
              <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>

              <del>$${product.price}</del>
            </div>

            <button class="add-cart-btn">add to cart</button>

            <div class="showcase-status">
              <div class="wrapper">
                <p>already sold: <b>20</b></p>

                <p>available: <b>40</b></p>
              </div>

              <div class="showcase-status-bar"></div>
            </div>

            <div class="countdown-box">
              <p class="countdown-desc">Hurry Up! Offer ends in:</p>

              <div class="countdown">
                <div class="countdown-content">
                  <p class="display-number">360</p>

                  <p class="display-text">Days</p>
                </div>

                <div class="countdown-content">
                  <p class="display-number">24</p>
                  <p class="display-text">Hours</p>
                </div>

                <div class="countdown-content">
                  <p class="display-number">59</p>
                  <p class="display-text">Min</p>
                </div>

                <div class="countdown-content">
                  <p class="display-number">00</p>
                  <p class="display-text">Sec</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>
</div>

<div class="product-main container">
<div class="product-minimal">
    <div class="product-showcase">
      <h2 class="title">New Arrivals</h2>

      <div class="showcase-wrapper has-scrollbar">
        <div class="showcase-container">
          <c:forEach items="${lstNewArrivals}" var="product">
            <div class="showcase">
              <a href="product?id=${product.id}" class="showcase-img-box">
                <img
                  src="${product.image}"
                  alt="relaxed short full sleeve t-shirt"
                  width="70"
                  class="showcase-img"
                />
              </a>

              <div class="showcase-content">
                <a href="product?id=${product.id}">
                  <h4 class="showcase-title">${product.name}</h4>
                </a>

                <div class="price-box">
                  <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
                  <del>$${product.price}</del>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
    </div>

    <div class="product-showcase">
      <h2 class="title">Trending</h2>

      <div class="showcase-wrapper has-scrollbar">
        <div class="showcase-container">
          <c:forEach items="${lstTrending}" var="product">
            <div class="showcase">
              <a href="product?id=${product.id}" class="showcase-img-box">
                <img
                  src="${product.image}"
                  alt="relaxed short full sleeve t-shirt"
                  width="70"
                  class="showcase-img"
                />
              </a>

              <div class="showcase-content">
                <a href="product?id=${product.id}">
                  <h4 class="showcase-title">${product.name}</h4>
                </a>

                <div class="price-box">
                  <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
                  <del>$${product.price}</del>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
    </div>

    <div class="product-showcase">
      <h2 class="title">Top Rated</h2>

      <div class="showcase-wrapper has-scrollbar">
        <div class="showcase-container">
          <c:forEach items="${lstTopRated}" var="product">
            <div class="showcase">
              <a href="product?id=${product.id}" class="showcase-img-box">
                <img
                  src="${product.image}"
                  alt="relaxed short full sleeve t-shirt"
                  width="70"
                  class="showcase-img"
                />
              </a>

              <div class="showcase-content">
                <a href="product?id=${product.id}">
                  <h4 class="showcase-title">${product.name}</h4>
                </a>

                <div class="price-box">
                  <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
                  <del>$${product.price}</del>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
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
          <a href="store?category=${product.id_category}" class="showcase-category">${API.getCategoryNameById(lstCategory, product.id_category)}</a>

          <a href="product?id=${product.id}">
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
            <p class="price">$${API.discountedPrice(product.price, product.discount)}</p>
            <del>$${product.price}</del>
          </div>
        </div>
      </div>
        </c:forEach>
    </div>
    </div>
</div>

