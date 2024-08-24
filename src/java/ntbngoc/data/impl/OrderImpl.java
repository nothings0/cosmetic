/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import ntbngoc.data.dao.OrderDao;
import ntbngoc.data.driver.MysqlDriver;
import ntbngoc.data.model.Order;
import ntbngoc.data.model.OrderItem;
import ntbngoc.data.model.Product;

/**
 *
 * @author pv
 */
public class OrderImpl implements OrderDao{
    Connection conn = MysqlDriver.getConnection();
    
    @Override
    public void saveOrder(Order order) {
        PreparedStatement psOrder = null;
        PreparedStatement psOrderItem = null;
        try {
            String sqlOrder = "INSERT INTO orders (user_id, total_price, order_date, status) VALUES (?, ?, ?, ?)";
           
            psOrder = conn.prepareStatement(sqlOrder, PreparedStatement.RETURN_GENERATED_KEYS);
            psOrder.setInt(1, order.getUserId());
            psOrder.setDouble(2, order.getTotalPrice());
            psOrder.setDate(3, new java.sql.Date(order.getOrderDate().getTime()));
            psOrder.setString(4, order.getStatus());
            psOrder.executeUpdate();
            
            var generatedKeys = psOrder.getGeneratedKeys();
            int orderId = 0;
            if (generatedKeys.next()) {
                orderId = generatedKeys.getInt(1);
            }

            // Lưu thông tin các sản phẩm vào bảng order_items
            String sqlOrderItem = "INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";
            psOrderItem = conn.prepareStatement(sqlOrderItem);

            for (OrderItem item : order.getItems()) {
                psOrderItem.setInt(1, orderId);
                psOrderItem.setInt(2, item.getProductId());
                psOrderItem.setInt(3, item.getQuantity());
                psOrderItem.setDouble(4, item.getPrice());
                psOrderItem.addBatch();
            }
            psOrderItem.executeBatch();

            conn.commit(); // Xác nhận giao dịch

        } catch (SQLException ex) {
            Logger.getLogger(OrderImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        try {
            String sql = "SELECT " +
             "o.id AS orderId, " +
             "o.total_price, " +
             "o.order_date, " +
             "o.status, " +
             "oi.quantity, " +
             "oi.price, " +
             "p.name AS productName, " +
             "p.image AS productImage, " +
             "u.name AS userName, " +
             "u.id AS user_id, " +
             "p.id AS product_id " +
             "FROM orders o " +
             "JOIN order_items oi ON o.id = oi.order_id " +
             "JOIN products p ON oi.product_id = p.id " +
             "JOIN users u ON o.user_id = u.id";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            
            ResultSet resultSet = stm.executeQuery();
            
            Order currentOrder = null;

            while (resultSet.next()) {
                int orderId = resultSet.getInt("orderId");

                if (currentOrder == null || currentOrder.getId() != orderId) {
                    currentOrder = new Order();
                    currentOrder.setId(orderId);
                    currentOrder.setUserId(resultSet.getInt("user_id"));
                    currentOrder.setTotalPrice(resultSet.getDouble("total_price"));
                    currentOrder.setOrderDate(resultSet.getDate("order_date"));
                    currentOrder.setStatus(resultSet.getString("status"));
                    currentOrder.setItems(new ArrayList<>());
                    orders.add(currentOrder);
                }

                // Tạo đối tượng OrderItem và Product
                Product product = new Product();
                product.setId(resultSet.getInt("product_id"));
                product.setName(resultSet.getString("productName"));
                product.setImage(resultSet.getString("productImage"));

                OrderItem orderItem = new OrderItem();
                orderItem.setProductId(product.getId());
                orderItem.setQuantity(resultSet.getInt("quantity"));
                orderItem.setPrice(resultSet.getDouble("price"));

                currentOrder.getItems().add(orderItem);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    @Override
    public int getOrderCount() {
        String query = "SELECT COUNT(*) FROM orders";
        try {
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            
            if (resultSet.next()) {
                return resultSet.getInt(1); // Trả về tổng số lượng đơn hàng
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public double getTotalRevenue() {
        String query = "SELECT SUM(total_price) FROM orders";
        try {
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1); // Trả về tổng số lượng đơn hàng
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean updateStatus(int invoiceId, String status) {
        String sql = "UPDATE orders SET status = ? WHERE id = ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);
            stmt.setInt(2, invoiceId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
