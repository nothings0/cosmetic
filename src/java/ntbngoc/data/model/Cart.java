/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pv
 */
public class Cart {
    private List<Product> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public void addItem(Product product) {
        items.add(product);
    }

    public List<Product> getItems() {
        return items;
    }
}

