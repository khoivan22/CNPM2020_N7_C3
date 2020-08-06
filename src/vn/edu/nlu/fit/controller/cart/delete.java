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
        //lay user tu session
        User u = (User) session.getAttribute("user");

        //lay parameter tu  trang cart.jsp
        String id_product = request.getParameter("id_del");
        //lay listCart tu session
        ListCart listCart = (ListCart) session.getAttribute("list_cart");

        //xoa cart co id==id_product
        listCart.list_cart.removeIf(item -> item.getPro().getId_product().equals(id_product));
        //neu da dang nhap thi xoa cart trong database
        if (u != null) {
            Database.delCart(id_product, u.getUser_name());
        }
//        session.setAttribute("list_cart", listCart);
        //ve lai trang show_cart
           response.sendRedirect("show_cart");

    }
}
