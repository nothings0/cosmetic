<%@page import="ntbngoc.utils.API"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
      <div class="header-main">
        <div class="container">
          <a href="home" class="header-logo">
            <img
              src="./assets/images/logo.png"
              alt="Cosmetic"
              width="200"
              height="50"
            />
          </a>

          <div class="header-search-container">
            <input
              type="search"
              name="search"
              class="search-field"
              placeholder="Enter your product name..."
            />

            <button class="search-btn">
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </div>

          <div class="header-user-actions">
            <a class="action-btn" href="cart">
              <i class="fa-solid fa-cart-shopping"></i>
              <span class="count">${itemCount}</span>
            </a>
              <c:if test="${user==null}"><a href="login" class="login-button">Login</a></c:if>
        
            <c:if test="${user!=null}">
            <button class="action-btn user-icon">
                <i class="fa-regular fa-user"></i>
                <div class="dropdown-panel">
                    <ul class="dropdown-panel-list">
                      <li class="panel-list-item">
                        <a href="store?category=1">Tài khoản</a>
                      </li>
                      <li class="panel-list-item">
                        <a href="store?category=2">Đơn mua</a>
                      </li>
                      <li class="panel-list-item">
                          <a href="./views/logout.jsp" style="color: red;">Đăng xuất</a>
                      </li>
                    </ul>
                  </div>
            </button>
            </c:if>
            
          </div>
        </div>
      </div>

      <nav class="desktop-navigation-menu">
        <div class="container">
          <ul class="desktop-menu-category-list">
            <li class="menu-category">
              <a href="home" class="menu-title">Home</a>
            </li>
            
            <li class="menu-category">
              <a href="store" class="menu-title">Store</a>
            </li>

            <li class="menu-category">
              <a href="#" class="menu-title">Categories</a>

              <div class="dropdown-panel">
                <ul class="dropdown-panel-list">
                  <li class="panel-list-item">
                    <a href="store?category=1">Son Môi</a>
                  </li>
                  <li class="panel-list-item">
                    <a href="store?category=2">Nước Tẩy Trang</a>
                  </li>
                  <li class="panel-list-item">
                    <a href="store?category=3">Kem Chống Nắng</a>
                  </li>
                  <li class="panel-list-item">
                    <a href="store?category=4">Mặt Nạ</a>
                  </li>
                  <li class="panel-list-item">
                    <a href="store?category=5">Sữa Rửa Mặt</a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="menu-category">
              <a href="#" class="menu-title">Blog</a>
            </li>

          </ul>
        </div>
      </nav>

      <div class="mobile-bottom-navigation">
        <button class="action-btn" data-mobile-menu-open-btn>
          <ion-icon name="menu-outline"></ion-icon>
        </button>

        <button class="action-btn">
          <ion-icon name="bag-handle-outline"></ion-icon>

          <span class="count">0</span>
        </button>
      </div>

      <nav class="mobile-navigation-menu has-scrollbar" data-mobile-menu>
        <div class="menu-top">
          <h2 class="menu-title">Menu</h2>

          <button class="menu-close-btn" data-mobile-menu-close-btn>
            <ion-icon name="close-outline"></ion-icon>
          </button>
        </div>

        <ul class="mobile-menu-category-list">
          <li class="menu-category">
            <a href="#" class="menu-title">Home</a>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Blog</a>
          </li>
        </ul>
      </nav>
    </header>