package controllers;

import business.Course;
import business.Product;
import data.CourseDAO;
import data.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shinizeam
 */
@WebServlet(name = "CourseServlet", urlPatterns = {"/nav/Course"})
public class CourseServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/nav/course.jsp";
        List<Course> courses = CourseDAO.selectCourses();
        HttpSession session = request.getSession();
        session.setAttribute("courses", courses);
        System.out.println("doget course");
        log("sizeeeecourseeeeeeeeeeeeee" + Integer.toString(courses.size()));
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


}