package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.model.Database;
import vn.edu.nlu.fit.model.ListCart;
import vn.edu.nlu.fit.model.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/add")
public class add extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();

            String id_product = request.getParameter("id");
            String btn_buy_now = request.getParameter("btn");
            Cart item = new Cart(Database.getProduct(id_product), 1);

            ListCart listCArt = (ListCart) session.getAttribute("list_cart");

            if (listCArt == null)
                listCArt = new ListCart();
            if (!listCArt.list_cart.isEmpty()) {
                int check = 0;
                for (Cart product : listCArt.list_cart) {
                    check++;
                    if (product.getPro().getId_product().equals(id_product)) {
                        product.setTotal(product.getTotal() + 1);
                        break;
                    }
                    if (check == listCArt.list_cart.size()) {
                        listCArt.list_cart.add(item);
                        break;
                    }
                }
            } else {
                if (item != null) {
                    listCArt.list_cart.add(item);
                }
            }
            session.setAttribute("list_cart", listCArt);
            if (btn_buy_now != null)
                response.sendRedirect(Util.fullPath("show_cart"));
            else response.sendRedirect(Util.fullPath("home"));
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}