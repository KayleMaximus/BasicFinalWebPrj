package data;

import business.Account;
import business.User;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class UserDAO {

    public static void insert(User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }

    public static Boolean findemail(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u FROM User u "
                + "WHERE u.email = :email";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("email", email);
        User result = null;
        try {
            result = q.getSingleResult();
            System.out.println("Maillllllllllllll: " + result.getEmail());
        } catch (NoResultException ex) {
            return false;
        } finally {
            em.close();
        }

        return result != null;
    }

    public static User selectUser(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u FROM User u "
                + "WHERE u.email = :email";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("email", email);
        User result = null;
        try {
            result = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return result;
    }
    public static User findUserbyAccount(int aID) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u FROM User u "
                + "WHERE u.account.id = :aID";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("aID", aID);
        User result = null;
        try {
            result = q.getSingleResult();
            System.out.println("Maillllllllllllll: " + result.getEmail());
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return result;
    }
}
