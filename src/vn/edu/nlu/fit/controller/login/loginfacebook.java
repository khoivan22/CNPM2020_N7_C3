package vn.edu.nlu.fit.controller.login;

 import vn.edu.nlu.fit.model.Database;
 import vn.edu.nlu.fit.model.cart.Cart;
 import vn.edu.nlu.fit.model.cart.ListCart;
 import vn.edu.nlu.fit.model.user.UserFacebook;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginfacebook")
public class loginfacebook extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain;charset=utf-8");
        //lay parametter tu trang login.jsp
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String id = request.getParameter("id");
        HttpSession ss = request.getSession();
        UserFacebook uf = new UserFacebook(name, id);
        ListCart listCart = (ListCart) ss.getAttribute("list_cart");
        if (listCart != null) {
            for (Cart c : listCart.list_cart) {
                if (Database.getCart(uf.getId(), c.getPro().getId_product()) == null) {
                    Database.addCart(c, id);
                } else {
                    int sl = c.getTotal() + Database.getCart(uf.getId(), c.getPro().getId_product()).getTotal();
                    Database.setSLC(c.getPro().getId_product(), uf.getId(), sl);
                }
            }
            listCart.list_cart.clear();
        }
        if (listCart == null) listCart = new ListCart();
        listCart.list_cart.addAll(Database.getListcart(uf.getId()).list_cart);
        ss.setAttribute("list_cart", listCart);
        ss.setAttribute("UserFacebook", uf);
        response.sendRedirect("home");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
