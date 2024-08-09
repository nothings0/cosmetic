<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./style/index.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
      <c:import url="./component/header.jsp" />
    <div class="banner">
      <img src="./assets/images/hero.jpg" />
      <div class="banner_info">
        <p class="banner_text">NEW IN TOWN</p>
        <h1>The New Beauty Collection</h1>
        <h3>
          This new collection brings with it the most exciting lorem ipsum dolor
          sit amet.
        </h3>
        <button class="banner_show">SHOP NOW</button>
      </div>
    </div>
    <div class="container">
      <div class="container_slowmotion">
        <p class="container_text">POPULAR PRODUCTS</p>
        <h1 class="container_wordmain">Trending Now</h1>
      </div>
      <div class="container_product">
        <div class="product">
          <img src="./assets/images/sp1.jpg" />
          <button class="pro_sales">Sale!</button>
          <button class="shopingcard">
            <i class="fa-solid fa-bag-shopping"></i>
          </button>
          <p class="text-on-hover">Add to cart</p>
          <div class="product_info">
            <div class="product_icon">
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product_name" href="./product?id=1"> Product Name </a>
            <div class="product_pay">
              <p class="pay_older">$75.00</p>
              <p class="pay_new">$59.00</p>
            </div>
          </div>
        </div>
        <div class="product">
          <img src="./assets/images/sp2.jpg" />
          <button class="pro_sales">Sale!</button>
          <button class="shopingcard">
            <i class="fa-solid fa-bag-shopping"></i>
          </button>
          <p class="text-on-hover">Add to cart</p>
          <div class="product_info">
            <div class="product_icon">
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product_name" href="./product-detail"> Product Name </a>
            <div class="product_pay">
              <p class="pay_older">$75.00</p>
              <p class="pay_new">$59.00</p>
            </div>
          </div>
        </div>
        <div class="product">
          <img src="./assets/images/sp3.jpg" />
          <button class="pro_sales">Sale!</button>
          <button class="shopingcard">
            <i class="fa-solid fa-bag-shopping"></i>
          </button>
          <p class="text-on-hover">Add to cart</p>
          <div class="product_info">
            <div class="product_icon">
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product_name" href="./product-detail"> Product Name </a>
            <div class="product_pay">
              <p class="pay_older">$75.00</p>
              <p class="pay_new">$59.00</p>
            </div>
          </div>
        </div>
        <div class="product">
          <img src="./assets/images/sp4.jpg" />
          <button class="pro_sales">Sale!</button>
          <button class="shopingcard">
            <i class="fa-solid fa-bag-shopping"></i>
          </button>
          <p class="text-on-hover">Add to cart</p>
          <div class="product_info">
            <div class="product_icon">
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product_name" href="./product-detail"> Product Name </a>
            <div class="product_pay">
              <p class="pay_older">$75.00</p>
              <p class="pay_new">$59.00</p>
            </div>
          </div>
        </div>
      </div>
      <div class="container_slowmotion">
        <p class="container_text">SHOP</p>
        <h1 class="container_wordmain">Best Selling</h1>
      </div>
      <div class="container_product">
        <c:forEach items="${lstBestSeller}" var="product">
        <div class="product">
          <img src="./assets/images/sp1.jpg" />
          <button class="pro_sales">Sale!</button>
          <button class="shopingcard">
            <i class="fa-solid fa-bag-shopping"></i>
          </button>
          <p class="text-on-hover">Add to cart</p>
          <div class="product_info">
            <div class="product_icon">
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product_name" href="<c:url value='/product?id=${product.id}' />">${product.name}</a>
            <div class="product_pay">
              <p class="pay_older">${product.price}</p>
              <p class="pay_new">$59.00</p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
    <div class="banner">
      <img
        src="https://websitedemos.net/be-bold-beauty-store-04/wp-content/uploads/sites/1117/2022/08/bg-03.jpg"
      />
      <div class="banner_info">
        <p class="banner_textp">NEW COLLECTION</p>
        <h1 class="banner_texth1">
          The beauty collection that makes all the difference!
        </h1>
        <h3 class="banner_texth3">
          Aliquam vulputate, nunc vitae suscipit aliquet, libero arcu hendrerit
          sapien.
        </h3>
        <button class="banner_show">SHOP NOW</button>
      </div>
    </div>
    <div class="conclution">
      <div class="conclution_text">
        <p class="conclution_textp">JANE OLIVER</p>
        <h1 class="conclution_h1">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus
          posuere...
        </h1>
      </div>
      <div class="conclution_evaluate">
        <div class="evaluate">
          <div class="eva_icon">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
          </div>
          <p class="eva_text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus
            posuere tincidunt purus, eu consectetur eros sodales nec. Maecenas
            ac erat pretium, ultricies nibh quis, mattis massa.
          </p>
          <p class="eva_p">JAMES OLIVER</p>
          <hr class="eva_hr" />
        </div>
        <div class="evaluate">
          <div class="eva_icon">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
          </div>
          <p class="eva_text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus
            posuere tincidunt purus, eu consectetur eros sodales nec. Maecenas
            ac erat pretium, ultricies nibh quis, mattis massa.
          </p>
          <p class="eva_p">JAMES OLIVER</p>
          <hr class="eva_hr" />
        </div>
        <div class="evaluate">
          <div class="eva_icon">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
          </div>
          <p class="eva_text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus
            posuere tincidunt purus, eu consectetur eros sodales nec. Maecenas
            ac erat pretium, ultricies nibh quis, mattis massa.
          </p>
          <p class="eva_p">JAMES OLIVER</p>
          <hr class="eva_hr" />
        </div>
      </div>
    </div>
    <div class="about_product">
      <div class="about_banner">
        <img src="./assets/images/hero.jpg" />
        <div class="about_bandiv">
          <p class="about_p">NEW COLLECTIONS</p>
          <h1 class="about_h1">Awesome Makeup Kit Gift Sets</h1>
          <h3 class="about_h3">Find your unique style.</h3>
          <button class="banner_show">SHOP NOW</button>
        </div>
      </div>
      <div class="about_banner">
        <img
          src="https://websitedemos.net/be-bold-beauty-store-04/wp-content/uploads/sites/1117/2022/08/bg-03.jpg"
        />
        <div class="about_bandiv">
          <p class="about_p">NEW COLLECTION</p>
          <h1 class="about_h1">The Ultimate Skincare Regime</h1>
          <h3 class="about_h3">Find your unique style.</h3>
          <button class="banner_show">SHOP NOW</button>
        </div>
      </div>
    </div>
    <div class="suport">
      <div class="sup_tiles">
        <p class="tiles">WHY CHOOSE US</p>
        <hr class="tiles_hr" />
      </div>
      <div class="suport_about">
        <div class="suport_product">
          <button class="icon_sup">
            <i class="fa-solid fa-truck-fast"></i>
          </button>
          <div class="text_sup">
            <h1 class="sup_h1">Fast Delivery</h1>
            <p class="sup_p">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit
              tellus, luctus nec ullamcorper mattis.
            </p>
          </div>
        </div>
        <div class="suport_product">
          <button class="icon_sup">
            <i class="fa-solid fa-dolly"></i>
          </button>
          <div class="text_sup">
            <h1 class="sup_h1">Free Shipping</h1>
            <p class="sup_p">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit
              tellus, luctus nec ullamcorper mattis.
            </p>
          </div>
        </div>
        <div class="suport_product">
          <button class="icon_sup">
            <i class="fa-solid fa-left-long"></i>
          </button>
          <div class="text_sup">
            <h1 class="sup_h1">Easy Returns</h1>
            <p class="sup_p">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit
              tellus, luctus nec ullamcorper mattis.
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="footer-wrap">
        <div class="footer_input">
          <p class="footer_text">Subscribe to our newsletter</p>
          <div class="footer_search">
            <input
              type="email"
              name="email"
              placeholder="Your email address..."
            />
            <button class="footer_sub">SUBSCRIBE</button>
          </div>
        </div>
        <div class="footer_info">
          <img src="./assets/images/logo.png" />
          <div class="footer_func">
            <ul class="footer_func_1">
              <li><a href="#">Shop All</a></li>
              <li><a href="#">Makeup</a></li>
              <li><a href="#">Skin Care</a></li>
              <li><a href="#">Hair Care</a></li>
              <li><a href="#">About</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
            <ul class="footer_func_2">
              <li><a href="#">Refund Policy</a></li>
              <li><a href="#">Terms & Conditions</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Privacy Policy</a></li>
            </ul>
            <div class="footer_icon">
              <i class="fa-brands fa-square-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-square-instagram"></i>
            </div>
          </div>
        </div>
        <div class="footer_final">
          <p class="final_text">
            Copyright © 2024 Be Bold | Powered by Be Bold
          </p>
        </div>
      </div>
    </div>
  </body>
</html>
