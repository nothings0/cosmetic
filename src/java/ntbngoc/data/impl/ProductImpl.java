/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.impl;

import java.util.List;
import ntbngoc.data.dao.ProductDao;
import ntbngoc.data.model.Product;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ntbngoc.data.driver.MysqlDriver;
/**
 *
 * @author pv
 */
public class ProductImpl implements ProductDao{

    Connection conn = MysqlDriver.getConnection();
    
    @Override
    public List<Product> findAll() {
        List<Product> lst = new ArrayList<>();
        try {
            String sql = "select * from Products";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int id_category = rs.getInt("id_category");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, id_category, name, image, price, quantity, status));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }
    
    

    @Override
    public boolean insert(Product x) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Product x) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Product find(int id) {
        Product product = null;
        try {
            String sql = "SELECT * FROM products where id = ?";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int idP = rs.getInt("id");
                String name = rs.getString("name");
                int id_category = rs.getInt("id_category");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
               product = new Product(idP, id_category, name, image, price, quantity, status);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return product;
    }

    @Override
    public List<Product> findRandom(int x) {
        List<Product> lst = new ArrayList<>();
        try {
            String sql = "SELECT * FROM products ORDER BY RAND() LIMIT ?";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, x);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int id_category = rs.getInt("id_category");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, id_category, name, image, price, quantity, status));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }
}
