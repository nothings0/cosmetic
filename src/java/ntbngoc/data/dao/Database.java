/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.dao;

import ntbngoc.data.impl.CategoryImpl;
import ntbngoc.data.impl.OrderImpl;
import ntbngoc.data.impl.ProductImpl;
import ntbngoc.data.impl.UserImpl;

/**
 *
 * @author pv
 */
public class Database {
     public static CategoryDAO getCategoryDAO() {
        return new CategoryImpl();
    }
    
    public static ProductDao getProductDao() {
        return new ProductImpl();
    }
    
    public static UserDao getUserDao() {
        return new UserImpl();
    }
    
    public static OrderDao getOrderDao() {
        return new OrderImpl();
    }
}
