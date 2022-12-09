package business;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Locale;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product implements Serializable {

    private String productPic;
    private String productName;
    private int productPrice;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int productID;

    public String getproductPic() {
        return productPic;
    }
    public void setproductPic(String productPic) {
        this.productPic = productPic;
    }
    public String getproductName() {
        return productName;
    }
    public void setproductName(String productName) {
        this.productName = productName;
    }
    public String getProductPic() {
        return productPic;
    }
    public void setProductPic(String productPic) {
        this.productPic = productPic;
    }
    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public int getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }
    public int getProductID() {
        return productID;
    }
    public void setProductID(int productID) {
        this.productID = productID;
    }
    public int getproductID() {
        return productID;
    }
    public void setproductID(int productID) {
        this.productID = productID;
    }
    public Product() {
        productPic = "";
        productName = "";
        productPrice = 0;
    }

    
    
    public String getPriceCurrencyFormat() {
        //Locale locale = new Locale("vi"); 
        //NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
        //return currency.format(this.productPrice);
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.productPrice);
    }
    
    
}
