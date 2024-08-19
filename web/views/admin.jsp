<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

	<link rel="stylesheet" href="./style/admin.css">

	<title>Admin Dashboard - Cosmetic</title>
</head>
<body>
        <c:import url="./component/sidebar.jsp" />

	<section id="content">
            <c:import url="./component/admin-nav.jsp" />
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Dashboard</h1>
                    </div>
                    <a href="#" class="btn-download">
                            <i class='bx bxs-cloud-download' ></i>
                            <span class="text">Download PDF</span>
                    </a>
                </div>

                <ul class="box-info">
                    <li>
                        <i class='bx bxs-calendar-check' ></i>
                        <span class="text">
                                <h3>${orderCount}</h3>
                                <p>New Order</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-group' ></i>
                        <span class="text">
                                <h3>${userCount}</h3>
                                <p>Visitors</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-dollar-circle' ></i>
                        <span class="text">
                                <h3>$${totalRevenue}</h3>
                                <p>Total Sales</p>
                        </span>
                    </li>
                </ul>


                <div class="table-data">
                    <div class="order">
                      <div class="head">
                        <h3>Recent Orders</h3>
                        <i class="bx bx-search"></i>
                        <i class="bx bx-filter"></i>
                      </div>
                      <table>
                        <thead>
                          <tr>
                            <th>User</th>
                            <th>Date Order</th>
                            <th>Status</th>
                            <th>Total</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${orders}" var="order">
                          <tr>
                            <td>
                              <p>${order.userId}</p>
                            </td>
                            <td>${order.orderDate}</td>
                            <td><span class="status completed">${order.status}</span></td>
                            <td>${order.totalPrice}</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                </div>
                
                <div class="table-data">
                    <div class="order">
                      <div class="head">
                        <h3>Best Seller</h3>
                      </div>
                      <table>
                        <thead>
                          <tr>
                            <th></th>
                            <th>Tên</th>
                            <th>Giá</th>
                            <th>Doanh thu</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${products}" var="product">
                          <tr>
                            <td>
                              <img src="${product.image}" />
                            </td>
                            <td><p>${product.name}</p></td>
                            <td><p>${product.price}</p></td>
                            <td><p>${product.price}</p></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                </div>
                          
                <div class="table-data">
                    <div class="order">
                      <div class="head">
                        <h3>Users</h3>
                      </div>
                      <table>
                        <thead>
                          
                          <tr>
                            <th></th>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Address</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${users}" var="user">
                          <tr>
                            <td><p>${user.id}</p></td>
                            <td><p>${user.name}</p></td>
                            <td><p>${user.email}</p></td>
                            <td><p>${user.phone}</p></td>
                            <td><p>${user.address}</p></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                </div>

            </main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="./style/admin.js"></script>
</body>
</html>