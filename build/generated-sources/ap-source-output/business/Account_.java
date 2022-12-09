package business;

import business.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2022-12-08T23:39:37")
@StaticMetamodel(Account.class)
public class Account_ { 

    public static volatile SingularAttribute<Account, String> pass;
    public static volatile SingularAttribute<Account, Integer> id;
    public static volatile SingularAttribute<Account, User> user;
    public static volatile SingularAttribute<Account, String> username;

}