package controllers;

import business.*;
import data.AccountDAO;
import data.UserDAO;
import java.io.IOException;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AccountServlet", urlPatterns = {"/nav/Account/*"})
public class AccountServlet extends HttpServlet {

    String defaultURL = "/nav/login.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/recheckout")) {
            url = recheckout(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/nav/login.jsp";
        String message = "";
        String requestURI = request.getRequestURI();
        String email = request.getParameter("email");
        String action = request.getParameter("action");
        if (requestURI.endsWith("/Account")) {
            // get current action
            if (action == null) {
                action = "join";  // default action
            }
            // perform action and set URL to appropriate page
            if (action.equals("join")) {
                url = "/nav/login.jsp";    // the "join" page
            } else if (action.equals("signup")) {
                //nếu 2 pass trùng nhau mới tạo account và user
                if (CheckEmail(request, response)) {
                    message = "Email Existed!";
                } else if (Checkpass(request, response)) {
                    url = SignUp(request, response);
                    message = "Account Create Successfully!";
                } else {//load lại trang đăng nhập sử dụng EL và yêu cầu nhập lại pass
                    url = ReInputPass(request, response);
                    message = "Password Not Persistence! Please Try Again!";
                }
            } else if (action.equals("signin")) {
                if (CheckAccount(request, response)) {
                    message = "Welcome" + request.getParameter("username");
                    url = "/index.jsp";
                } else {
                    message = "password or username incorrect!";
                    url = "/nav/login.jsp";
                }
            }
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private boolean Checkpass(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
        return pass.equals(repass);
    }

    private String SignUp(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        // get parameters from the request
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        // store data in User object and save User and Account object in database
        Account account = new Account(username, pass);
        AccountDAO.insert(account);
        User user = new User();
        user.setAccount(account);
        user.setEmail(email);
        UserDAO.insert(user);

        // set account object in request object and set URL
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        return defaultURL;
    }

    private String ReInputPass(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        session.setAttribute("email", email);
        return defaultURL;
    }

    private String recheckout(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        return defaultURL;
    }

    private Boolean CheckAccount(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        // get parameters from the request
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        Account account = new Account(username, pass);
        //kiểm tra tài khoản tồn tại
        if (AccountDAO.findAccount(account)) {
            HttpSession session = request.getSession();
            account = AccountDAO.findAccountByUsername(username);
            User user = UserDAO.findUserbyAccount(account.getId());
            String email = user.getEmail();
            //session.setAttribute("account", account);
            session.setAttribute("useremail", email);
            session.setAttribute("user", user);
            return true;
        }
        return false;
    }

    private Boolean CheckEmail(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        // get parameters from the request
        String email = request.getParameter("email");
        //kiểm tra email tồn tại chưa để chp phép tạo tk
        if (UserDAO.findemail(email)) {
            return true;
        }
        return false;
    }

}
