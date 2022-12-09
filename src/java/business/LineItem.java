package business;

import java.text.NumberFormat;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class LineItem implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int lineItemId;
    @OneToOne
    private Product product;
    private int quantity = 1;
    public LineItem() {
    }
    public int getLineItemId() {
        return lineItemId;
    }
    public void setLineItemId(int lineItemId) {
        this.lineItemId = lineItemId;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    public Product getProduct() {
        return product;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public int getQuantity() {
        return quantity;
    }
    
    public double getTotal() {
        double total = product.getProductPrice() * quantity;
        return total;
    }
    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
}