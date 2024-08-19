/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.impl;

import java.util.List;
import ntbngoc.data.dao.CategoryDAO;
import ntbngoc.data.model.Category;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ntbngoc.data.driver.MysqlDriver;
/**
 *
 * @author pv
 */
public class CategoryImpl implements CategoryDAO{

    Connection conn = MysqlDriver.getConnection();
    
    @Override
    public List<Category> findAll() {
        List<Category> lst = new ArrayList<>();
        try {
            String sql = "select * from Categories";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                lst.add(new Category(id, name));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    @Override
    public boolean insert(Category x) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Category x) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Category find(int id) {
        Category category = null;
        try {
            String sql = "SELECT * FROM categories where id = ?";
            
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                int idP = rs.getInt("id");
                String name = rs.getString("name");
                
               category = new Category(idP, name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return category;
    }
    
}
