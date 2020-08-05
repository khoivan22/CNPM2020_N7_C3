package vn.edu.nlu.fit.controller.cart;

import vn.edu.nlu.fit.model.Database;
import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.model.Util;
import vn.edu.nlu.fit.model.cart.Cart;
import vn.edu.nlu.fit.model.cart.ListCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete")
public class delete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");

        String id_product = request.getParameter("id_del");
        ListCart listCart = (ListCart) session.getAttribute("list_cart");

        listCart.list_cart.removeIf(item -> item.getPro().getId_product().equals(id_product));
        if (u != null) {
            Database.delCart(id_product, u.getUser_name());
        }
//        session.setAttribute("list_cart", listCart);
           response.sendRedirect("show_cart");

    }
}
