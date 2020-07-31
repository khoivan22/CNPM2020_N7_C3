package vn.edu.nlu.fit.controller.cart;

import vn.edu.nlu.fit.model.*;
import vn.edu.nlu.fit.model.cart.Cart;
import vn.edu.nlu.fit.model.cart.ListCart;
import vn.edu.nlu.fit.model.user.User;
import vn.edu.nlu.fit.model.user.UserFacebook;

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

            //lay parameter tu  trang home.jsp
            String id_product = request.getParameter("id");
            String btn_buy_now = request.getParameter("btn");
            Cart item = new Cart(Database.getProduct(id_product), 1);

            //lay list cart tu sesstion
            ListCart listCArt = (ListCart) session.getAttribute("list_cart");
            //lay user t session
            User u = (User) session.getAttribute("user");
            UserFacebook uf= (UserFacebook) session.getAttribute("UserFacebook");
            //neu listcart null thi tao moi
            if (listCArt == null) {
                listCArt = new ListCart();
                listCArt.list_cart.add(item);
            }
            if (!listCArt.list_cart.isEmpty()) {
                int check = 0;
                for (Cart product : listCArt.list_cart) {
                    check++;
                    if (product.getPro().getId_product().equals(id_product)) {
                        product.setTotal(product.getTotal() + 1);
                        if (u != null) {
                            Database.setSLC(id_product, u.getUser_name(), product.getTotal());
                        }
                       if(uf!=null){
                            Database.setSLC(id_product, uf.getId(), product.getTotal());
                        }
                        break;
                    }
        }
                if (check == listCArt.list_cart.size()) {
                    listCArt.list_cart.add(item);
                    if (u != null) {
                        Database.addCart(item, u.getUser_name());
                    }
                    if(uf!=null){
                        Database.addCart(item, uf.getId());
                    }
                }
            }
            session.setAttribute("list_cart", listCArt);
            if(btn_buy_now!=null)
            response.sendRedirect(Util.fullPath("show_cart"));
            else
                response.sendRedirect(Util.fullPath("home"));
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}