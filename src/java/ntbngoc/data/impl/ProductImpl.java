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
                String description = rs.getString("description");
                float discount = rs.getFloat("discount");
                int sold = rs.getInt("sold");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, name, image, description, discount, price, id_category));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }
    
    

    @Override
    public boolean insert(Product product) {
        String sql = "INSERT INTO products (id_category, name, image, description, discount, price, quantity) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try{
            PreparedStatement stmt = conn.prepareStatement(sql);
            // Set các tham số vào câu lệnh SQL
            stmt.setInt(1, product.getId_category());
            stmt.setString(2, product.getName());
            stmt.setString(3, product.getImage());
            stmt.setString(4, product.getDescription());
            stmt.setFloat(5, product.getDiscount());
            stmt.setDouble(6, product.getPrice());
            stmt.setInt(7, product.getQuantity());
            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Product x) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM products WHERE id = ?";
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
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
                String description = rs.getString("description");
                float discount = rs.getFloat("discount");
                int sold = rs.getInt("sold");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
               product = new Product(idP, name, image, description, discount, price, id_category);
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
                String description = rs.getString("description");
                float discount = rs.getFloat("discount");
                int sold = rs.getInt("sold");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, name, image, description, discount, price, id_category));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    @Override
    public List<Product> findByCategory(int cateId) {
        List<Product> lst = new ArrayList<>();
        try {
            String sql = "SELECT * FROM products WHERE id_category = ?";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, cateId);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int id_category = rs.getInt("id_category");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                float discount = rs.getFloat("discount");
                int sold = rs.getInt("sold");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, name, image, description, discount, price, id_category));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    @Override
    public List<Product> getProducts(int offset, int limit) {
        List<Product> lst = new ArrayList<>();
        try {
            String sql = "SELECT * FROM products LIMIT ? OFFSET ?";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, limit);
            stm.setInt(2, offset);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int id_category = rs.getInt("id_category");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                float discount = rs.getFloat("discount");
                int sold = rs.getInt("sold");
                int quantity = rs.getInt("quantity");
                boolean status = rs.getBoolean("status");
                
                lst.add(new Product(id, name, image, description, discount, price, id_category, sold, quantity));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }
    
    @Override
    public int getTotalProducts() {
        int total = 0;
        String sql = "SELECT COUNT(*) FROM products";

        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }
}
