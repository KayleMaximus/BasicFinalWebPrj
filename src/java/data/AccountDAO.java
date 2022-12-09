package data;

import business.Account;
import business.User;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class AccountDAO {

    public static void insert(Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(account);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }

    public static void update(Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(account);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static Boolean findAccount(Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT a FROM Account a "
                + "WHERE a.username = :username and a.pass = :pass";
        TypedQuery<Account> q = em.createQuery(qString, Account.class);
        q.setParameter("username", account.getUsername());
        q.setParameter("pass", account.getPass());
        Account result = null;
        try {
            result = q.getSingleResult();
            System.out.println("Username: " + result.getUsername());
            System.out.println("Password: " + result.getPass());
        } catch (NoResultException ex) {
            return false;
        } finally {
            em.close();
        }

        return result != null;
    }
    public static Account findAccountByUsername(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT a FROM Account a "
                + "WHERE a.username = :username";
        TypedQuery<Account> q = em.createQuery(qString, Account.class);
        q.setParameter("username", username);
        Account result = null;
        try {
            result = q.getSingleResult();
            System.out.println("Username: " + result.getUsername());
            System.out.println("Password: " + result.getPass());
        } catch (NoResultException ex) {
            return result;
        } finally {
            em.close();
        }

        return result;
    }
    
    
}
