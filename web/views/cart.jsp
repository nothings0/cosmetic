<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<c:import url="./component/head.jsp" />
<body>
    <c:import url="./component/header.jsp" />
    <div class="container" style="margin-bottom: 20px;">
        <div class="checkoutLayout">
            <div class="returnCart">
                <!--<a href="/">keep shopping</a>-->
                <h1>List Product in Cart</h1>
                <div class="list">
                    <c:choose>
                        <c:when test="${empty cart.items}">
                            <p>Your cart is empty.</p>
                        </c:when>
                        <c:otherwise>
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <c:forEach var="item" items="${cart.items}">
                                        <form action="cart" method="post">
                                        <input type="hidden" name="id_product" value="${item.product.id}">
                                        <tr data-product-id="${item.product.id}">
                                            <td>
                                                <img src="${item.product.image}" alt="product"/>
                                            </td>
                                            <td>
                                                <a href="product?id=${item.product.id}">${item.product.name}</a>
                                            </td>
                                            <td>
                                                <div class="de_increase">
                                                    <button class="decrease_button" type="submit" name="action" value="update">-</button>
                                                    <input type="text" name="quantity" class="pus_input" value="${item.quantity}">
                                                    <button class="increase_button" type="submit" name="action" value="update">+</button>
                                                </div>
                                            </td>
                                            <td>${item.getTotalPrice()}</td>
                                            <td>
                                                <button type="submit" name="action" value="delete">
                                                <i class="fa-solid fa-trash" style="cursor: pointer; padding: 6px; border-radius: 8px; background: #ccc"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        </form>
                                    </c:forEach>
                                </tbody>
                                
                            </table>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <form class="right" action="checkout" method="post">
                <h1>Checkout</h1>
                <div class="form">
                    <div class="group">
                        <label for="name">Full Name</label>
                        <input type="text" name="name" id="name" required>
                    </div>

                    <div class="group">
                        <label for="phone">Phone Number</label>
                        <input type="text" name="phone" id="phone" required>
                    </div>

                    <div class="group">
                        <label for="address">Address</label>
                        <input type="text" name="address" id="address" required>
                    </div>
                </div>
                <div class="return">
                    <div class="row">
                        <div>Total Quantity</div>
                        <div class="totalQuantity">${cart.getTotalQuantity()}</div>
                    </div>
                    <div class="row">
                        <div>Total Price</div>
                        <div class="totalPrice">$${cart.getTotalPrice()}</div>
                    </div>
                </div>
                <button class="buttonCheckout">CHECKOUT</button>
            </form>
        </div>
    </div>

    <c:import url="./component/footer.jsp"/>
    
    <script src="./style/cart.js"></script>
</body>
</html>
