package business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Course implements Serializable {

    private String Grade;
    private String Leson;
    private String Pic;
    private String Header;
    private String Des;
    private int ID;
    public String getGrade() {
        return Grade;
    }
    public void setGrade(String Grade) {
        this.Grade = Grade;
    }
    public String getLeson() {
        return Leson;
    }
    public void setLeson(String Leson) {
        this.Leson = Leson;
    }
    public String getPic() {
        return Pic;
    }
    public void setPic(String Pic) {
        this.Pic = Pic;
    }
    public String getHeader() {
        return Header;
    }
    public void setHeader(String Header) {
        this.Header = Header;
    }
    public String getDes() {
        return Des;
    }
    public void setDes(String Des) {
        this.Des = Des;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getID() {
        return ID;
    }
    public void setID(int ID) {
        this.ID = ID;
    }
}
