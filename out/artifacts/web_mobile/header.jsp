<%@ page import="vn.edu.nlu.fit.model.Util" %>
<%@ page import="vn.edu.nlu.fit.model.user.User" %>
<%@ page import="vn.edu.nlu.fit.model.user.UserFacebook" %><%--
  Created by IntelliJ IDEA.
  User: vkhoi
  Date: 7/18/2020
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="shop_header_area carousel_menu_area">
    <div class="carousel_top_header black_top_header row m0">
        <div class="container">
            <div class="carousel_top_h_inner">
                <div class="float-md-left">
                    <div class="top_header_left">
                        <div class="selector">
                        </div>

                    </div>
                </div>
                <div class="float-md-right">
                </div>
            </div>
        </div>
    </div>
    <div class="carousel_menu_inner">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="<%=Util.fullPath("home")%>"><img src="<%=Util.fullPath("img/logo.png")%>"
                                                                               alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>

                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown submenu active">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Điện thoại <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="index.html">SAMSUNG</a></li>
                                <li class="nav-item"><a class="nav-link" href="home-carousel.html">OPPO</a></li>
                                <li class="nav-item"><a class="nav-link" href="home-fullwidth.html">XIAOMI</a></li>
                                <li class="nav-item"><a class="nav-link" href="home-parallax.html">APPLE</a></li>
                                <li class="nav-item"><a class="nav-link" href="home.jsp">HUWEI</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Laptop <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="compare.html">DELL</a></li>
                                <li class="nav-item"><a class="nav-link" href="checkout.html">ASUS</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.html">LENOVO</a></li>
                                <li class="nav-item"><a class="nav-link" href="track.html"></a></li>
                                <li class="nav-item"><a class="nav-link" href="login.jsp">APPLE</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Phụ kiện <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                    </ul>
                    <ul class="navbar-nav justify-content-end">
                        <%
                            User u = (User) session.getAttribute("user");
                            UserFacebook uf = (UserFacebook) session.getAttribute("UserFacebook");
                            if (u == null && uf == null) {


                        %>
                        <li class="search_icon"><a href="#"><i style="font-size: 14px"> Register</i></a></li>
                        <li class="user_icon"><a href="<%=Util.fullPath("login.jsp")%>"><i
                                style="font-size: 14px">Login</i></a></li>
                        <%
                        } else {

                        %>
                        <li><a href="#"><i class="fa fa-user" style="font-size: 30px; align-content: center"></i></a>
                        </li>
                        <li class="user_icon"><a href="<%=Util.fullPath("logout")%>"><i
                                style="font-size: 14px">Logout</i></a></li>
                        <%
                            }
                        %>
                        <li class="cart_cart"><a href="<%=Util.fullPath("show_cart")%>"><i
                                class="icon-handbag icons"></i></a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

</header>