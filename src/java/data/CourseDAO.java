package data;

import business.Course;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;


public class CourseDAO {

    public static List<Course> selectCourses() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT c from Course c";
        TypedQuery<Course> q = em.createQuery(qString, Course.class);
        List<Course> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }
        return results;
    }

}