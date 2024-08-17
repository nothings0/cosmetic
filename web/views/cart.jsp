<%@page import="ntbngoc.data.model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="cart-container">
        <h1>Your Shopping Cart</h1>
        <div class="cart-items">
            <%-- Dynamically generated cart items will go here --%>
            <% 
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null || cart.getItems().isEmpty()) { 
            %>
                <p>Your cart is empty.</p>
            <% } else { 
                List<Product> items = cart.getItems();
                for (Product item : items) { %>
                    <div class="cart-item">
                        <div class="item-name"><%= item.getName() %></div>
                        <div class="item-price">$<%= item.getPrice() %></div>
                    </div>
                <% } 
            } %>
        </div>
        <div class="cart-footer">
            <a href="products.jsp" class="continue-shopping">Continue Shopping</a>
            <a href="checkout.jsp" class="checkout-button">Checkout</a>
        </div>
    </div>
</body>
</html>
