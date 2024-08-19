
package ntbngoc.data.model;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private int userId;
    private double totalPrice;
    private Date orderDate;
    private String status;
    private String address;
    private List<OrderItem> items; // Danh sách các sản phẩm trong đơn hàng

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Order() {
        items = new ArrayList<>();
    }

    public Order(int id, int userId, double totalPrice, Date orderDate, String status, List<OrderItem> items) {
        this.id = id;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.orderDate = orderDate;
        this.status = status;
        this.items = items;
    }

    // Getters và Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<OrderItem> getItems() {
        return items;
    }

    public void setItems(List<OrderItem> items) {
        this.items = items;
    }

    public void addItem(OrderItem item) {
        this.items.add(item);
        this.totalPrice += item.getTotalPrice(); // Cập nhật tổng giá trị đơn hàng
    }

    public void removeItem(int productId) {
        for (OrderItem item : items) {
            if (item.getProductId() == productId) {
                this.items.remove(item);
                this.totalPrice -= item.getTotalPrice(); // Cập nhật tổng giá trị đơn hàng
                break;
            }
        }
    }
}

