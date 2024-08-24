/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.dao;

import java.util.List;
import ntbngoc.data.model.Order;

/**
 *
 * @author pv
 */
public interface OrderDao {
    public void saveOrder(Order order);
    int getOrderCount();
    double getTotalRevenue();
    public List<Order> getAllOrders();
    public boolean updateStatus(int invoiceId, String status);
}
