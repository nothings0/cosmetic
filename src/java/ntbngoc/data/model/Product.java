/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.data.model;


public class Product {
    int id;
    int id_category;
    String name;
    String image;
    String description;
    float discount;
    int sold;
    double price;
    int quantity;
    boolean status;

    public Product(String name, String image, String description, float discount, double price, int id_category, int quantity) {
        this.id_category = id_category;
        this.name = name;
        this.image = image;
        this.description = description;
        this.discount = discount;
        this.price = price;
        this.quantity = quantity;
    }

    public Product() {
        
    }

    public Product(int id, String name, String image, String description, float discount, double price, int id_category) {
        this.id_category = id_category;
        this.name = name;
        this.image = image;
        this.description = description;
        this.discount = discount;
        this.price = price;
        this.quantity = quantity;
        this.id = id;
    }

    public Product(int id, String name, String image, String description, float discount, double price, int id_category, int sold, int quantity) {
        this.id = id;
        this.id_category = id_category;
        this.name = name;
        this.image = image;
        this.description = description;
        this.discount = discount;
        this.sold = sold;
        this.price = price;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_category() {
        return id_category;
    }

    public void setId_category(int id_category) {
        this.id_category = id_category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }
    
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
