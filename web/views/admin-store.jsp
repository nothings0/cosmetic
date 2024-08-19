<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
        <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="../style/admin.css">
    </head>
    <body>
    <c:import url="../component/sidebar.jsp" />
    <section id="content">
        <!-- NAVBAR -->
        <c:import url="../component/admin-nav.jsp" />
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Store</h1>
                </div>
                <a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download' ></i>
                    <span class="text" id="addProductBtn">Thêm</span>
                </a>
            </div>

            <div class="table-data">
                <div class="order">
                  <div class="head">
                    <h3>List Product</h3>
                  </div>
                  <table>
                    <thead>
                      <tr>
                        <th></th>
                        <th>Tên</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Đã bán</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${products}" var="product">
                          <tr>
                        <td>
                          <img src="${product.image}" style="width: 80px; height: 80px; border-radius: 8px"/>
                        </td>
                        <td><p style="width: 100%">${product.name}</p></td>
                        <td><p style="width: 160px">${product.price}</p></td>
                        <td><p style="width: 140px">${product.quantity}</p></td>
                        <td><p style="width: 200px">${product.sold}</p></td>
                        <td>
                            <form id="addProductForm" action="${pageContext.request.contextPath}/product" method="post">
                            <input type="hidden" name="id_product" value="${product.id}">
                            <button type="submit" name="action" value="delete">
                                <i class="fa-solid fa-trash" style="cursor: pointer; padding: 6px; border-radius: 8px; background: #ccc"></i>
                            </button>
                            </form>
                        </td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
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
        </main>

        <div id="popup" class="popup">
            <div class="popup-content">
                <span class="close-btn">&times;</span>
                <h2 style="margin-bottom: 2rem;">Thêm Sản Phẩm</h2>
                <form id="addProductForm" action="${pageContext.request.contextPath}/product" method="post">
                    <div class="product-group">
                        <label for="productName">Tên sản phẩm:</label>
                        <input type="text" id="productName" name="productName" placeholder="son lì đỏ tươi" required>
                    </div>
                    <div class="product-group">
                        <label for="productPrice">Giá:</label>
                        <input type="number" id="productPrice" name="price" placeholder="50000" required>
                    </div>
                    <div class="product-group">
                        <label for="image">Image:</label>
                        <textarea id="image" name="image" required></textarea>
                    </div>
                    <div class="product-group">
                        <label for="quantity">Số lượng:</label>
                        <input type="number" id="quantity" name="quantity" required>
                    </div>
                    <div class="product-group">
                        <label for="discount">Giảm giá (%):</label>
                        <input type="number" id="discount" name="discount" min="0" max="100" required>
                    </div>
                    <div class="product-group">
                        <label for="description">Mô tả:</label>
                        <textarea id="description" name="description" required></textarea>
                    </div>
                    <div class="product-group">
                        <label for="id_category">Loại Sản Phẩm:</label>
                        <select id="id_category" name="id_category" required>
                            <c:forEach items="${category}" var="cate">
                                <option value="${cate.id}">${cate.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" name="action" value="create">Thêm</button>
                </form>
            </div>
        </div>
    </section>
    <script src="../style/admin.js"></script>
    </body>
</html>
