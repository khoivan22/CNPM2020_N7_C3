package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        HttpSession session = request.getSession();
        try {
            User u = Database.getUser(user);
            boolean validate = Database.checkLogin(user, pass);
            if (u != null && validate ) {
                session.setAttribute("user", u);
                ListCart listCart = (ListCart) session.getAttribute("list_cart");
                if (listCart != null) {
                    System.out.println("b");
                    for (Cart c : listCart.list_cart) {
                        System.out.println("c");
                        Database.addCart(c, user);
                }
                    session.setAttribute("list_cart", listCart);
                }
                response.sendRedirect(Util.fullPath("home"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
