/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nhan.data.dao;

import java.util.List;
import nhan.data.model.Category;
/**
 *
 * @author pv
 */
public interface CategoryDAO {
    public List<Category> findAll();
    
    public boolean insert(Category x);
    
    public boolean update(Category x);
    
    public boolean delete(int id);
    
    public Category find(int id);
}
