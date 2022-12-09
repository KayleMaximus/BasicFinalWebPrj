package business;

import business.LineItem;
import business.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2022-12-08T23:39:37")
@StaticMetamodel(Bill.class)
public class Bill_ { 

    public static volatile ListAttribute<Bill, LineItem> lineItems;
    public static volatile SingularAttribute<Bill, Boolean> isProcessed;
    public static volatile SingularAttribute<Bill, Integer> id;
    public static volatile SingularAttribute<Bill, User> user;
    public static volatile SingularAttribute<Bill, Date> Date;

}