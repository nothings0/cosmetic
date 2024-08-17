<%@page import="ntbngoc.utils.API"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
      <div class="header-main">
        <div class="container">
          <a href="#" class="header-logo">
            <img
              src="./assets/images/logo/logo.svg"
              alt="Anon's logo"
              width="120"
              height="36"
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
            <button class="action-btn">
              <i class="fa-solid fa-cart-shopping"></i>
              <span class="count">0</span>
            </button>
              <c:if test="${user==null}"><a href="login" class="login-button">Login</a></c:if>
        
            <c:if test="${user!=null}">
            <button class="action-btn">
                <i class="fa-regular fa-user"></i>
            </button>
            </c:if>
            
          </div>
        </div>
      </div>

      <nav class="desktop-navigation-menu">
        <div class="container">
          <ul class="desktop-menu-category-list">
            <li class="menu-category">
              <a href="#" class="menu-title">Home</a>
            </li>
            
            <li class="menu-category">
              <a href="store" class="menu-title">Store</a>
            </li>

            <li class="menu-category">
              <a href="#" class="menu-title">Categories</a>

              <div class="dropdown-panel">
                <ul class="dropdown-panel-list">
                  <li class="menu-title">
                    <a href="#">Men's</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Formal</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Casual</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Sports</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Jacket</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Sunglasses</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">
                      <img
                        src="./assets/images/mens-banner.jpg"
                        alt="men's fashion"
                        width="250"
                        height="119"
                      />
                    </a>
                  </li>
                </ul>

                <ul class="dropdown-panel-list">
                  <li class="menu-title">
                    <a href="#">Women's</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Formal</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Casual</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Perfume</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Cosmetics</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">Bags</a>
                  </li>

                  <li class="panel-list-item">
                    <a href="#">
                      <img
                        src="./assets/images/womens-banner.jpg"
                        alt="women's fashion"
                        width="250"
                        height="119"
                      />
                    </a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="menu-category">
              <a href="#" class="menu-title">Men's</a>

              <ul class="dropdown-list">
                <li class="dropdown-item">
                  <a href="#">Shirt</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Shorts & Jeans</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Safety Shoes</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Wallet</a>
                </li>
              </ul>
            </li>

            <li class="menu-category">
              <a href="#" class="menu-title">Women's</a>

              <ul class="dropdown-list">
                <li class="dropdown-item">
                  <a href="#">Dress & Frock</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Earrings</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Necklace</a>
                </li>

                <li class="dropdown-item">
                  <a href="#">Makeup Kit</a>
                </li>
              </ul>
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

        <button class="action-btn">
          <ion-icon name="home-outline"></ion-icon>
        </button>

        <button class="action-btn" data-mobile-menu-open-btn>
          <ion-icon name="grid-outline"></ion-icon>
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
            <button class="accordion-menu" data-accordion-btn>
              <p class="menu-title">Men's</p>

              <div>
                <ion-icon name="add-outline" class="add-icon"></ion-icon>
                <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
              </div>
            </button>

            <ul class="submenu-category-list" data-accordion>
              <li class="submenu-category">
                <a href="#" class="submenu-title">Shirt</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Shorts & Jeans</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Safety Shoes</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Wallet</a>
              </li>
            </ul>
          </li>

          <li class="menu-category">
            <button class="accordion-menu" data-accordion-btn>
              <p class="menu-title">Women's</p>

              <div>
                <ion-icon name="add-outline" class="add-icon"></ion-icon>
                <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
              </div>
            </button>

            <ul class="submenu-category-list" data-accordion>
              <li class="submenu-category">
                <a href="#" class="submenu-title">Dress & Frock</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Earrings</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Necklace</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Makeup Kit</a>
              </li>
            </ul>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Blog</a>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Hot Offers</a>
          </li>
        </ul>

<!--        <div class="menu-bottom">
          <ul class="menu-social-container">
            <li>
              <a href="#" class="social-link">
                <i class="fa fas-facebook"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-instagram"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-linkedin"></ion-icon>
              </a>
            </li>
          </ul>
        </div>-->
      </nav>
    </header>