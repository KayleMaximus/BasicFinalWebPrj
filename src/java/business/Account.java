
package business;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class Account implements Serializable{

    private String username;
    private String pass;
    private int id;
    private User user;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    @OneToOne (mappedBy = "account")
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }

    public Account() {
        username = "";
        pass = "";
    }
    
    public Account(String username, String password) {
        this.username = username;
        this.pass = password;
    }

}
