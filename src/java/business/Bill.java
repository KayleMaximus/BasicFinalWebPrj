package business;

import business.LineItem;
import business.User;
import java.util.*;
import java.text.*;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import static javax.persistence.FetchType.EAGER;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Bill implements Serializable {

    @ManyToOne
    private User user;
    @OneToMany(fetch = EAGER, cascade = CascadeType.PERSIST)
    private List<LineItem> lineItems;
    @Temporal(TemporalType.DATE)
    private Date Date;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private boolean isProcessed;

    public Bill() {
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setLineItems(List<LineItem> lineItems) {
        this.lineItems = lineItems;
    }

    public List<LineItem> getLineItems() {
        return lineItems;
    }

    public void setInvoiceDate(Date billDate) {
        this.Date = billDate;
    }

    public Date getInvoiceDate() {
        return Date;
    }

    public String getInvoiceDateDefaultFormat() {
        DateFormat dateFormat = DateFormat.getDateInstance();
        String invoiceDateFormatted = dateFormat.format(Date);
        return invoiceDateFormatted;
    }

    public void setInvoiceNumber(int id) {
        this.id = id;
    }

    public int getInvoiceNumber() {
        return id;
    }

    public boolean isIsProcessed() {
        return isProcessed;
    }

    public void setIsProcessed(boolean isProcessed) {
        this.isProcessed = isProcessed;
    }

    public double getInvoiceTotal() {
        double invoiceTotal = 0.0;
        for (LineItem item : lineItems) {
            invoiceTotal += item.getTotal();
        }
        return invoiceTotal;
    }

    public String getInvoiceTotalCurrencyFormat() {
        double total = this.getInvoiceTotal();
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        String formattedTotal = currency.format(total);
        return formattedTotal;
    }
}
