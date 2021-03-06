<%@ page import="vn.edu.nlu.fit.model.cart.ListCart" %>
<%@ page import="vn.edu.nlu.fit.model.cart.Cart" %>
<%@ page import="vn.edu.nlu.fit.model.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Persuit</title>

        <!-- Icon css link -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="vendors/line-icon/css/simple-line-icons.css" rel="stylesheet">
        <link href="vendors/elegant-icon/style.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="vendors/bootstrap-selector/css/bootstrap-select.min.css" rel="stylesheet">
        <link href="vendors/jquery-ui/jquery-ui.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        
        <!--================Header =================-->
        <%@include file="header.jsp" %>
        <!--================End Menu Area =================-->
        <!--================Shopping Cart Area =================-->
        <section class="shopping_cart_area p_100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="cart_items">
                            <h3>Your Cart Items</h3>
                            <div class="table-responsive-md" style="height: 70vh; overflow: auto" >
                                <table class="table">
                                    <tbody >
                                    <%
                                        ListCart list_item = (ListCart) session.getAttribute("list_cart");
                                        String s="";
                                        if (list_item.list_cart.isEmpty()) {
                                    %>
                                    <tr><p style="font-size: 25px" align="center">Chưa có sản phẩm</p></tr>
                                    <%
                                    } else {
                                        for (Cart item : list_item.list_cart) {
                                            s+=item.getPro().getProduct_name()+", ";
                                    %>
                                        <tr>
                                            <th scope="row">
                                                <a href="<%=Util.fullPath("delete?id_del="+item.getPro().getId_product())%>"><img src="img/icon/close-icon.png" ></a>
                                            </th>
                                            <td>
                                                <div class="media">
                                                    <a href="<%=Util.fullPath("detail_product?detail="+item.getPro().getId_product())%>"><div class="d-flex">
                                                        <img style="width: 102px; height: 123px" src="<%=Util.splitImg(item.getPro().getImg())%>" alt="">
                                                    </div>
                                                    </a>
                                                    <div class="media-body">
                                                        <h4><%=Util.splitImg(item.getPro().getProduct_name())%></h4>
                                                    </div>
                                                </div>
                                            </td>
                                            <td><p class="red"><%=Util.convertPrice(item.getPro().getPrice()-item.getPro().getDiscout())%></p></td>
                                            <td style="width: 100px">
                                                <div class="quantity">

                                                    <div class="custom" >
                                                               <a href="<%=Util.fullPath("reduction?id_product="+item.getPro().getId_product())%>"> <i style="color: #000" class="fa fa-minus-square"></i></a>
                                                        <span type="number" style="    background: bisque; padding-left: 11px; padding-right: 11px" class="rounded text-center"><%=item.getTotal()%></span>

                                                               <a href="<%=Util.fullPath("increase?id_product="+item.getPro().getId_product())%>"> <i style="color: #000" class="fa fa-plus-square"></i></a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td><p><%=Util.convertPrice((item.getPro().getPrice()-item.getPro().getDiscout())*item.getTotal())%></p></td>
                                        </tr>
                                   <%
                                       }}
                                   %>
                                    </tbody>

                                </table>
                            </div>
                            <div class="table-responsive-md">
                            <table class="table">
                            <tbody>
                            <tr class="last" >
                                <th scope="row">
                                    <img src="img/icon/cart-icon.png" alt="">
                                </th>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <h5>Cupon code</h5>
                                        </div>
                                        <div class="media-body">
                                            <input type="text" placeholder="Apply cuopon">
                                        </div>
                                    </div>
                                </td>
                                <td><p class="red"></p></td>
                                <td>
                                    <h3>update cart</h3>
                                </td>
                                <td></td>
                            </tr>
                            </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart_totals_area">
                            <h4>Cart Totals</h4>
                            <div class="cart_t_list">
                                <div class="media">
                                    <div class="d-flex">
                                        <h5>code:</h5>
                                    </div>
                                    <div class="media-body">
                                        <h6>1233333</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="d-flex">
                                        <h5>Products:</h5>
                                    </div>
                                    <div class="media-body" style="height: 20vh; overflow: auto">
                                        <p><%=s.substring(0,s.length()-2)%></p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="d-flex">
                                        
                                    </div>

                                </div>
                            </div>
                            <div class="total_amount row m0 row_disable">
                                <div class="float-left">
                                    Total
                                </div>
                                <div class="float-right">
                                    <%=Util.convertPrice(list_item.totalPrice())%>
                                </div>
                            </div>
                        </div>
                        <button type="submit" value="submit" class="btn subs_btn form-control">Buy</button>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Shopping Cart Area =================-->
        
        <!--================Footer Area =================-->
        <%@include file="footer.jsp" %>
        <!--================End Footer Area =================-->
        
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <!-- Extra plugin css -->
        <script src="vendors/counterup/jquery.waypoints.min.js"></script>
        <script src="vendors/counterup/jquery.counterup.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/bootstrap-selector/js/bootstrap-select.min.js"></script>
        <script src="vendors/image-dropdown/jquery.dd.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope.pkgd.min.js"></script>
        <script src="vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
        <script src="vendors/vertical-slider/js/jQuery.verticalCarousel.js"></script>
        <script src="vendors/jquery-ui/jquery-ui.js"></script>
        
        <script src="js/theme.js"></script>
    </body>
</html>