package vn.edu.nlu.fit.controller.cart;

import vn.edu.nlu.fit.model.Database;
import vn.edu.nlu.fit.model.user.User;
import vn.edu.nlu.fit.model.Util;
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

@WebServlet("/increase")
public class increase extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //lay parameter tu  trang cart.jsp
        String id_product = request.getParameter("id_product");

        HttpSession session = request.getSession();
        //lay user tu session
        User u = (User) session.getAttribute("user");
        UserFacebook uf= (UserFacebook) session.getAttribute("UserFacebook");
        //lay listCart tu session
        ListCart listCart = (ListCart) session.getAttribute("list_cart");
        //tang so luong cua cart co id==id_product len 1
        for (Cart item : listCart.list_cart) {
            if (item.getPro().getId_product().equals(id_product) && item.getTotal() < item.getPro().getTotal()) {
                item.setTotal(item.getTotal() + 1);
                //neu da dang nhap thi xoa cart trong database
                if(u!=null){
                    Database.setSLC(id_product,u.getUser_name(),item.getTotal());
                }else if(uf!=null){
                    Database.setSLC(id_product, uf.getId(),item.getTotal());
                }
            }
        }
        //ve lai trang show_cart
        response.sendRedirect(Util.fullPath("show_cart"));
    }

}
