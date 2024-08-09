<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./style/product.css">
    </head>
    <body>
        <c:import url="../component/header.jsp" />
        <div class="info_product">
        <div class="pro_img">
            <div class="main_img">
                <img src="../assets/product-04-a.jpg">
                <button class="main_pro_sales">
                    Sale!
                </button>
                <button class="find">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <div class="about_img">
                <img src="../assets/product-04-b-100x100.jpg">
                <img src="../assets/product-04-c.jpg">
                <img src="../assets/product-bg-08.jpg">
                <img src="../assets/product-04-a.jpg">
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
                    $59.00
                </p>
                <p class="promotion">
                    & Free Shipping
                </p>
            </div>
            <p class="main_info_text">
                Ut quis sollicitudin orci. Aliquam at libero non purus sodales sagittis eu ac neque. Nunc ipsum felis, vehicula eu aliquam sed, ultricies ac lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam viverra commodo finibus. Morbi laoreet lacus quis lobortis tempor. Nam tincidunt, lectus a suscipit fringilla, mauris turpis dapibus dolor, eu venenatis diam nibh id massa.
                Nulla eget tortor ultrices, ultricies turpis a, accumsan turpis. Quisque dignissim semper leo ac accumsan. Quisque est nisl, bibendum ut elit quis, pellentesque vehicula tellus. Sed luctus mattis ante ac posuere.
            </p>
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
        <div class="des_and_rev">
          <div class="description">
            Description
          </div>
          <div class="reviews">
            Reviews (0)
          </div>
        </div>
        <div class="more_product">
      <h1 class="more_pro_tiles">
        More about the product
      </h1>
      <p class="more_pro_text">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac massa eget urna tempor vehicula vel id nisi. Pellentesque sed felis auctor, molestie lectus vitae, elementum orci. In et nunc consequat, semper tellus eget, euismod quam
      </p>
      <div class="more_pro_banner">
        <img src="../assets/hero.jpg">
        <div class="more_img_content">
          <p class="more_content_p">
            NUNC SED JUSTO
          </p>
          <h2 class="more_content_h2">
            Cras vehicula semper ex, et fermentum tortor varius eget interdum et malesuada fames ac ante
          </h2>
          <hr class="more_content_hr">
        </div>
      </div>
    </div>
    </body>
</html>
