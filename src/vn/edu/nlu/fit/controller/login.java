package vn.edu.nlu.fit.controller;


import vn.edu.nlu.fit.model.*;
import vn.edu.nlu.fit.model.cart.Cart;
import vn.edu.nlu.fit.model.cart.ListCart;

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
//lay parametter tu trang login.jsp
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        HttpSession session = request.getSession();
        try {

            User u = Database.getUser(user);
            //kiem tra dang nhap
            boolean validate = Database.checkLogin(user, pass);
            if (u != null && validate) {
                session.setAttribute("user", u);
                ListCart listCart = (ListCart) session.getAttribute("list_cart");
                if (listCart != null) {
                    for (Cart c : listCart.list_cart) {
                        Database.addCart(c, user);
                    }
                    listCart.list_cart.clear();
                }
                //add user vao session
                if (listCart == null) listCart = new ListCart();
                listCart.list_cart.addAll(Database.getListcart().list_cart);
                session.setAttribute("list_cart", listCart);
                session.setAttribute("user", u);
                //tro ve tran home
                response.sendRedirect(Util.fullPath("home"));
            } else {
                //tro ve trang login
                response.sendRedirect(Util.fullPath("login.jsp"));
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
