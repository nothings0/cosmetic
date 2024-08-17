<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="./style/admin.css">

	<title>Admin Dashboard - Cosmetic</title>
</head>
<body>
	<!-- SIDEBAR -->
        <c:import url="./component/sidebar.jsp" />
	<!-- SIDEBAR -->

	<!-- CONTENT -->
	<section id="content">
            <!-- NAVBAR -->
            <c:import url="./component/admin-nav.jsp" />
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Dashboard</h1>
                        <ul class="breadcrumb">
                                <li>
                                        <a href="#">Dashboard</a>
                                </li>
                                <li><i class='bx bx-chevron-right' ></i></li>
                                <li>
                                        <a class="active" href="home">Home</a>
                                </li>
                        </ul>
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
                                <h3>1020</h3>
                                <p>New Order</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-group' ></i>
                        <span class="text">
                                <h3>2834</h3>
                                <p>Visitors</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-dollar-circle' ></i>
                        <span class="text">
                                <h3>$2543</h3>
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
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <img src="img/people.png" />
                              <p>John Doe</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status completed">Completed</span></td>
                          </tr>
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
                          <tr>
                            <td>
                              <img src="img/people.png" />
                            </td>
                            <td><p>Tên nè</p></td>
                            <td><p>Giá  nè</p></td>
                            <td><p>Doanh thu nè</p></td>
                          </tr>
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