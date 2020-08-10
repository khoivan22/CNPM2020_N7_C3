package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.model.UserFacebook;
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
        HttpSession session = request.getSession();
        session.setAttribute("user", u);
        session.setAttribute("UserFacebook", uf);
        response.sendRedirect(Util.fullPath("home"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
