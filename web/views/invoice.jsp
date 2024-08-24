<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ntbngoc.utils.API"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

	<link rel="stylesheet" href="../style/admin.css">

	<title>Admin Dashboard - Cosmetic</title>
</head>
<body>
        <c:import url="../component/sidebar.jsp" />

	<section id="content">
            <c:import url="../component/admin-nav.jsp" />
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Invoice</h1>
                    </div>
                    <a href="#" class="btn-download">
                            <i class='bx bxs-cloud-download' ></i>
                            <span class="text">Download</span>
                    </a>
                </div>

                <div class="table-data">
                    <div class="order">
                      <div class="head">
                        <h3>Orders</h3>
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
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${orders}" var="order">
                          <tr data-invoice-id="${order.id}">
                            <td>
                              <p>${API.getUserEmailById(users, order.userId)}</p>
                            </td>
                            <td>${order.orderDate}</td>
                            <td><span class="status ${order.status}">${order.status}</span></td>
                            <td>${order.totalPrice}</td>
                            <td><button class="updateStatusBtn">Update</button></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                </div>
            </main>
            
            <div id="updateStatusPopup" class="popup">
                <div class="popup-content">
                    <span class="close">&times;</span>
                    <h3>Update Invoice Status</h3>
                    <form id="updateStatusForm" action="${pageContext.request.contextPath}/admin/invoice" method="post">
                        <input type="hidden" id="invoiceId" name="invoiceId" value="">
                        <label for="status">Choose Status:</label>
                        <select id="status" name="status">
                            <option value="Pending">Pending</option>
                            <option value="Shipped">Shipped</option>
                            <option value="Delivered">Delivered</option>
                            <option value="Canceled">Canceled</option>
                        </select>
                        <button type="submit">Update</button>
                    </form>
                </div>
            </div>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="../style/admin-store.js"></script>
</body>
</html>