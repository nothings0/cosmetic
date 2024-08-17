<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <span class="text">Thêm</span>
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
                            <th>Doanh thu</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${lstBestSeller}" var="product">
                              <tr>
                            <td>
                              <img src="${product.image}" style="width: 80px; height: 80px; border-radius: 8px"/>
                            </td>
                            <td><p style="width: 100%">${product.name}</p></td>
                            <td><p style="width: 160px">${product.price}</p></td>
                            <td><p style="width: 140px">${product.quantity}</p></td>
                            <td><p style="width: 200px">Doanh thu nè</p></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                </div>
            </main>
    </section>
    <script src="../style/admin.js"></script>
    </body>
</html>
