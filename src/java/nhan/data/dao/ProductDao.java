/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nhan.data.dao;

import java.util.List;
import nhan.data.model.Product;

/**
 *
 * @author pv
 */
public interface ProductDao {
    public List<Product> findAll();
    
    public List<Product> findRandom(int x);
    
    public boolean insert(Product x);
    
    public boolean update(Product x);
    
    public boolean delete(int id);
    
    public Product find(int id);
}
