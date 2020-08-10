package vn.edu.nlu.fit.controller;

 import vn.edu.nlu.fit.model.UserFacebook;

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
        ss.setAttribute("UserFacebook", uf);
        response.sendRedirect("home");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
