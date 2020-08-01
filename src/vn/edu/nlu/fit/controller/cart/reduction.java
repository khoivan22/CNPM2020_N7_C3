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

@WebServlet("/reduction")
public class reduction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_product = request.getParameter("id_product");

        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        ListCart listCart = (ListCart) session.getAttribute("list_cart");
        for (Cart item : listCart.list_cart) {
            if (item.getPro().getId_product().equals(id_product) && item.getTotal() > 1) {
                item.setTotal(item.getTotal() - 1);
                if(u!=null){
                    Database.setSLC(id_product,u.getUser_name(),item.getTotal());
                }
        }
        }
        response.sendRedirect(Util.fullPath("show_cart"));
    }
}
