/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.dao;

import java.util.List;
import ntbngoc.data.model.Product;

/**
 *
 * @author pv
 */
public interface ProductDao {
    public List<Product> findAll();
    
    public List<Product> findRandom(int x);
    
    public List<Product> getProducts(int offset, int limit);
    
    public boolean insert(Product x);
    
    public boolean update(Product x);
    
    public boolean delete(int id);
    
    public Product find(int id);
    
    public List<Product> findByCategory(int id);
    
    public int getTotalProducts();
}
