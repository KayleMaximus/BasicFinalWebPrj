package controllers;

import business.Cart;
import business.LineItem;
import business.Product;
import business.User;
import data.ProductDAO;
import data.UserDAO;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ultil.CookieUtil;

@WebServlet(name = "CartServlet", urlPatterns = {"/nav/Cart/*"})
public class CartServlet extends HttpServlet {

    private static final String defaultURL = "/nav/cart.jsp";

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/addItem")) {
            url = addItem(request, response);
        } else if (requestURI.endsWith("/updateItem")) {
            url = updateItem(request, response);
        } else if (requestURI.endsWith("/removeItem")) {
            url = removeItem(request, response);
        } else if (requestURI.endsWith("/checkUser")) {
//            url = checkUser(request, response);
        } else if (requestURI.endsWith("/sendMail")) {
            url = sendMail(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/showCart")) {
            url = showCart(request, response);
        } else if (requestURI.endsWith("/updateItem")) {
            url = updateItem(request, response);
        } else if (requestURI.endsWith("/removeItem")) {
            url = removeItem(request, response);
        } else if (requestURI.endsWith("/clearCart")) {
            url = clearCart(request, response);
        } else if (requestURI.endsWith("/inCheck")) {
            url = inCheck(request, response);
        }
        
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
         //response.sendRedirect(url);
    }

    private String clearCart(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        final Object lock = request.getSession().getId().intern();
        //Cart cart = (Cart) session.getAttribute("cart");
        Cart cart;
        synchronized (lock) {
            cart = (Cart) session.getAttribute("cart");
        }

        synchronized (lock) {
            cart.clearCart();
            request.getSession().setAttribute("cart", cart);
        }
        session.setMaxInactiveInterval(-1);
        return "/nav/Cart/showCart";
    }

    private String sendMail(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String eMail = request.getParameter("eMail");
        String address = request.getParameter("address");
        String PhoneNumber = request.getParameter("PhoneNumber");

        log("i want email");
        String to = eMail;

        // Sender's email ID needs to be mentioned
        final String from = "shinizeam@gmail.com";

        // Assuming you are sending email from through gmails smtp
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        System.getenv("EMAIL");

        // Get the Session object.// and pass username and password
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                //setup app password reference https://support.google.com/accounts/answer/185833?hl=en
                return new PasswordAuthentication(from, "qlhjhxewtztsjraq");

            }

        });

        // Used to debug SMTP issues
        session.setDebug(true);

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("CONFIRM YOUR ORDER.");

            // Now set the actual message
            message.setText("Thanks " + firstName + " " + lastName + " for visiting and purchase our products.\n"
                    + "We would love to confirm your Email: " + eMail
                    + "\nYour Address is: " + address
                    + "\nYour Phone Number: " + PhoneNumber);

            System.out.println("sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
        }

        return "/index.jsp";
    }

    private String showCart(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        //Cart cart = (Cart) session.getAttribute("cart");
        Cart cart;
        final Object lock = request.getSession().getId().intern();
        synchronized (lock) {
            cart = (Cart) session.getAttribute("cart");
        }
        if (cart == null || cart.getCount() == 0) {
            synchronized (lock) {
                request.setAttribute("message2", "Your cart is empty");
            }
        } else {
            synchronized (lock) {
                request.getSession().setAttribute("cart", cart);
            }
        }
        session.setMaxInactiveInterval(-1);
        return "/nav/cart.jsp";
    }

    private String inCheck(HttpServletRequest request,
            HttpServletResponse response) {
        String url = "/nav/checkout.jsp";
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) { //nếu user đã sign in
            url = "/nav/checkout.jsp";
        } else {  // chưa sign in thì kiểm cookie
            Cookie[] cookies = request.getCookies();
            String email = CookieUtil.getCookieValue(cookies, "emailCookie");
            if (email.equals("")) { // chưa đăng nhập + ko có cookie email => đẩy qua trang đăng nhập
                String message = "Please Sign In Or Create Account Before Checking Out!";
                session.setAttribute("message", message);
                url = "/nav/Account/recheckout";
                //url = "nav/login.jsp";
            } else {    // kiểm tra email tồn tại dưới hệ thống đăng nhập
                user = UserDAO.selectUser(email);
                if (user != null) {   
                    url = "/nav/checkout.jsp";
                }
            }
        }
        return url;
    }

//    private String checkUser(HttpServletRequest request,
//            HttpServletResponse response) {
//
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("user");
//
//        String url = "/nav/login.jsp";
//        if (user != null) { //nếu user đã sign in
//            //url = "/order/displayInvoice";
//            url = "/nav/product.jsp";
//        } else {  // otherwise, check the email cookie
//            Cookie[] cookies = request.getCookies();
//            String email = CookieUtil.getCookieValue(cookies, "emailCookie");
//            if (email.equals("")) {
//                String message = "Please Sign In Or Create Account Before Checking Out!";
//                session.setAttribute("message", message);
//                url = "/nav/login.jsp";
//            } else {
//                user = UserDAO.selectUser(email);
//                if (user != null) {
//                    //url = "/order/displayInvoice";
////                    url = "/nav/product.jsp";
//                    System.out.println("doget ádasd");
//                    log("si");
//                    url = "/nav/checkout.jsp";
//
//                }
//            }
//        }
//        return url;
//    }
    private String addItem(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        final Object lock = request.getSession().getId().intern();
        //Cart cart = (Cart) session.getAttribute("cart");
        Cart cart;
        synchronized (lock) {
            cart = (Cart) session.getAttribute("cart");
        }
        if (cart == null) {
            cart = new Cart();
        }
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        Product product = ProductDAO.selectProduct(productCode);
        if (product != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            cart.addItem(lineItem);
        }
        //xử lý đồng bộ hóa (thread-safe)
        synchronized (lock) {
            session.setAttribute("cart", cart);
        }
        session.setMaxInactiveInterval(-1);
        return defaultURL;
    }

    private String updateItem(HttpServletRequest request,
            HttpServletResponse response) {
        final Object lock = request.getSession().getId().intern();
        String quantityString = request.getParameter("quantity");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        HttpSession session = request.getSession();
        //Cart cart = (Cart) session.getAttribute("cart");
        Cart cart;
        synchronized (lock) {
            cart = (Cart) session.getAttribute("cart");
        }
        int quantity;
        try {
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0) {
                quantity = 1;
            }
        } catch (NumberFormatException ex) {
            quantity = 1;
        }
        Product product = ProductDAO.selectProduct(productCode);
        if (product != null && cart != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity);
            if (quantity > 0) {
                cart.addItem(lineItem);
            } else {
                cart.removeItem(lineItem);
            }
        }
        session.setMaxInactiveInterval(-1);
        return defaultURL;
    }

    private String removeItem(HttpServletRequest request,
            HttpServletResponse response) {
        final Object lock = request.getSession().getId().intern();
        HttpSession session = request.getSession();
        //Cart cart = (Cart) session.getAttribute("cart");
        Cart cart;
        synchronized (lock) {
            cart = (Cart) session.getAttribute("cart");
        }
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        Product product = ProductDAO.selectProduct(productCode);
        if (product != null && cart != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            cart.removeItem(lineItem);
        }
        session.setMaxInactiveInterval(-1);
        return "/nav/Cart/showCart";
    }
}
