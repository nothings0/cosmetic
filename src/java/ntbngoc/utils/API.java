/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ntbngoc.utils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import ntbngoc.data.model.Category;
import ntbngoc.data.model.User;

public class API {
    public static String getName(String fullname) {
        String s ="";
        for(int i = fullname.length() - 1; i >= 0; i--){
            if(fullname.charAt(i) == ' ') break;
            s = fullname.charAt(i) + s;
        }
        return s;
    }
    public static String getMd5(String input)
    {
        try {
 
            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");
 
            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
            byte[] messageDigest = md.digest(input.getBytes());
 
            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);
 
            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }
 
        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
    
    public static String getCategoryNameById(List<Category> categories, int categoryId) {
        for (Category category : categories) {
            if (category.getId() == categoryId) {
                return category.getName();
            }
        }
        return "Beauty"; // Hoặc trả về null nếu bạn không muốn thông báo lỗi
    }
    
    public static String getUserEmailById(List<User> users, int userId) {
        for (User user : users) {
            if (user.getId() == userId) {
                return user.getEmail();
            }
        }
        return "Beauty"; // Hoặc trả về null nếu bạn không muốn thông báo lỗi
    }
    
    public static double discountedPrice(double price, float discount) {
        // Kiểm tra xem tỷ lệ giảm giá có hợp lệ không (0-100)
        if (discount < 0 || discount > 100) {
            throw new IllegalArgumentException("Discount must be between 0 and 100.");
        }

        // Tính giá sau giảm giá
        double discountAmount = (discount / 100) * price;
        return Math.ceil(price - discountAmount);
    }
    
    public static String getShortName(String productName) {
        if (productName.length() > 50) {
            return productName.substring(0, 50) + "...";
        } else {
            return productName;
        }
    }
}
