package vn.edu.nlu.fit.controller.cart;

import vn.edu.nlu.fit.model.cart.ListCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/show_cart")
public class show_cart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //lay listCart tu session
        ListCart listCart = (ListCart) session.getAttribute("list_cart");
        if (listCart == null)
            listCart = new ListCart();
        session.setAttribute("list_cart", listCart);
        //gui trang cart.jsp attribute liscart
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }
}
