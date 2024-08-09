/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nhan.data.dao;

import nhan.data.impl.CategoryImpl;
import nhan.data.impl.ProductImpl;
import nhan.data.impl.UserImpl;

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
}
