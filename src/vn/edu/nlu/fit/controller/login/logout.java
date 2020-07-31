package vn.edu.nlu.fit.controller.login;

import vn.edu.nlu.fit.model.cart.ListCart;
import vn.edu.nlu.fit.model.user.User;
import vn.edu.nlu.fit.model.user.UserFacebook;
import vn.edu.nlu.fit.model.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class logout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");
        User u = null;
        UserFacebook uf = null;
        ListCart listCart=null;
        HttpSession session = request.getSession();
        session.setAttribute("user", u);
        session.setAttribute("UserFacebook", uf);
        session.setAttribute("list_cart",listCart);
        response.sendRedirect(Util.fullPath("home"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
