<%@ page import="vn.edu.nlu.fit.model.Util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="<%=Util.fullPath("img/fav-icon.png")%>" type="image/x-icon"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Persuit</title>

    <!-- Icon css link -->
    <link href="<%=Util.fullPath("css/font-awesome.min.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/line-icon/css/simple-line-icons.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/elegant-icon/style.css")%>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<%=Util.fullPath("css/bootstrap.min.css")%>" rel="stylesheet">

    <!-- Rev slider css -->
    <link href="<%=Util.fullPath("vendors/revolution/css/settings.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/revolution/css/layers.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/revolution/css/navigation.css")%>" rel="stylesheet">

    <!-- Extra plugin css -->
    <link href="<%=Util.fullPath("vendors/owl-carousel/owl.carousel.min.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/bootstrap-selector/css/bootstrap-select.min.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("vendors/vertical-slider/css/jQuery.verticalCarousel.css")%>" rel="stylesheet">

    <link href="<%=Util.fullPath("css/style.css")%>" rel="stylesheet">
    <link href="<%=Util.fullPath("css/responsive.css")%>" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home_sidebar">


<div class="home_box">

    <!--================Menu Area =================-->
    <%@include file="header.jsp" %>
    <!--================End Menu Area =================-->

    <!--================Main Content Area =================-->
    <section class="home_sidebar_area">
        <div class="container">
            <div class="row row_disable">
                <div class="col-lg-9 float-md-right">
                    <div class="sidebar_main_content_area">
                        <div class="advanced_search_area">
                            <select class="selectpicker">
                                <option>All Categories</option>
                                <option>All Categories</option>
                                <option>All Categories</option>
                            </select>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search" aria-label="Search">
                                <span class="input-group-btn">
                                            <button class="btn btn-secondary" type="button"><i
                                                    class="icon-magnifier icons"></i></button>
                                        </span>
                            </div>
                        </div>
                        <div class="main_slider_area">
                            <div id="home_box_slider" class="rev_slider" data-version="5.3.1.6">
                                <ul>
                                    <li data-index="rs-1587" data-transition="fade" data-slotamount="default"
                                        data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default"
                                        data-easeout="default" data-masterspeed="300"
                                        data-thumb="<%=Util.fullPath("img/home-slider/slider-1.jpg")%>"
                                        style="width: 400px" data-rotate="0" data-saveperformance="off"
                                        data-title="Creative" data-param1="01" data-param2="" data-param3=""
                                        data-param4="" data-param5="" data-param6="" data-param7="" data-param8=""
                                        data-param9="" data-param10="" data-description="">
                                        <!-- MAIN IMAGE -->
                                        <img src="<%=Util.fullPath("img/home-slider/slider-1.jpg")%>" alt=""
                                             data-bgposition="center center" data-bgfit="cover"
                                             data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg"
                                             data-no-retina>

                                    </li>
                                    <li data-index="rs-1587" data-transition="fade" data-slotamount="default"
                                        data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default"
                                        data-easeout="default" data-masterspeed="300"
                                        data-thumb="<%=Util.fullPath("img/home-slider/slider-1.jpg")%>"
                                        style="width: 400px" data-rotate="0" data-saveperformance="off"
                                        data-title="Creative" data-param1="01" data-param2="" data-param3=""
                                        data-param4="" data-param5="" data-param6="" data-param7="" data-param8=""
                                        data-param9="" data-param10="" data-description="">
                                        <!-- MAIN IMAGE -->
                                        <img src="<%=Util.fullPath("img/home-slider/slider-2.jpg")%>" alt=""
                                             data-bgposition="center center" data-bgfit="cover"
                                             data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg"
                                             data-no-retina>

                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="promotion_area">
                            <div class="feature_inner row m0">
                                <div class="left_promotion">
                                    <div class="f_add_item">
                                        <div class="f_add_img"><img class="img-fluid"
                                                                    src="<%=Util.fullPath("img/feature-add/f-add-6.jpg")%>"
                                                                    alt=""></div>
                                        <div class="f_add_hover">
                                        </div>
                                    </div>
                                </div>
                                <div class="right_promotion">
                                    <div class="f_add_item right_dir">
                                        <div class="f_add_img"><img class="img-fluid"
                                                                    src="<%=Util.fullPath("img/feature-add/f-add-7.jpg")%>"
                                                                    alt=""></div>
                                        <div class="f_add_hover">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="fillter_home_sidebar">
                            <ul class="portfolio_filter">
<%--                                <li class="active" data-filter="*"><a href="#">Samsung</a></li>--%>
<%--                                <li data-filter=".woman"><a href="#">Iphone</a></li>--%>
<%--                                <li data-filter=".shoes"><a href="#">Xiaomi</a></li>--%>
<%--                                <li data-filter=".bags"><a href="#">Huwei</a></li>--%>
                            </ul>

                            <!----------------------Product------------------------>
                            <div class="home_l_product_slider owl-carousel">
                                <%
                                    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                                    rs.beforeFirst();
                                    for (int i = 0; i < 8; i++) {
                                %>
                                <div class="item woman shoes">
                                    <%
                                        int count=0;
                                        while (count<2){
                                            rs.next();
                                            if ( rs.getString(5).equalsIgnoreCase("DT")) {
                                                count++;
                                    %>
                                    <div class="l_product_item">

                                        <div class="l_p_img" >
                                            <a href="<%=Util.fullPath("detail_product?detail="+rs.getString(6))%>">
                                                <img src="<%=Util.splitImg(rs.getString(3))%>" alt="img">
                                                <h5 class="sale">Sale</h5>
                                            </a>
                                        </div>
                                        </a>
                                        <div style="text-align: center">
                                            <%
                                                if (rs.getInt(8) == 0) {
                                            %>
                                            <span style="font-size: 10px;color: #1b1e21">Chưa có đánh giá</span>
                                            <%
                                            } else {

                                                for (int j = 0; j < rs.getInt(8); j++) {
                                            %>
                                            <i class="fa fa-star star" style="color:darkorange"></i>
                                            <%
                                                }
                                                for (int j = 0; j < 5 - rs.getInt(8); j++) {
                                            %>

                                            <i class="fa fa-star star" style="color: #9fcdff"></i>
                                            <%
                                                    }
                                                }
                                            %>
                                        </div>
                                        <div class="l_p_text">
                                            <ul>
                                                <li class="p_icon"><a href="#"><i class="icon_piechart"></i></a></li>
                                                <li>
                                                    <div  class="btn_add">
                                                        <a class="add_cart_btn add" href="<%=Util.fullPath("add?id=" + rs.getString(6))%>">Add To Cart</a>
                                                        <input type="hidden" class="id_product"
                                                               value="<%=rs.getString(6)%>">
                                                    </div>
                                                </li>
                                                <li class="p_icon"><a href="#"><i class="icon_heart_alt"></i></a></li>
                                            </ul>
                                            <h4><%=rs.getString(1)%>
                                            </h4>
                                            <h5>
                                                <del><%=Util.convertPrice(rs.getDouble(2))%>
                                                </del>
                                                </br> <%=Util.convertPrice(rs.getDouble(2) - rs.getDouble(7))%>
                                            </h5>
                                        </div>
                                        </a>


                                    </div>
                                    <%

                                            }
                                        }
                                    %>

                                </div>
                                <%

                                    }
                                %>

                            </div>
                        </div>
                        <!-----------------------------------------Blog-------------------------------------------->
                        <div class="home_sidebar_blog">
                            <h3 class="single_title">From The Blog</h3>
                            <div class="row">
                                <div class="col-lg-4 col-sm-6">
                                    <div class="from_blog_item">
                                        <img class="img-fluid"
                                             src="<%=Util.fullPath("img/blog/from-blog/f-blog-4.jpg")%>" alt="">
                                        <div class="f_blog_text">
                                            <h5>Phone</h5>
                                            <p>Neque porro quisquam est qui dolorem ipsum</p>
                                            <h6>21.09.2017</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-6">
                                    <div class="from_blog_item">
                                        <img class="img-fluid"
                                             src="<%=Util.fullPath("img/blog/from-blog/f-blog-5.jpg")%>" alt="">
                                        <div class="f_blog_text">
                                            <h5>Phone</h5>
                                            <p>Neque porro quisquam est qui dolorem ipsum</p>
                                            <h6>21.09.2017</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-6">
                                    <div class="from_blog_item">
                                        <img class="img-fluid"
                                             src="<%=Util.fullPath("img/blog/from-blog/f-blog-6.jpg")%>" alt="">
                                        <div class="f_blog_text">
                                            <h5>Phone</h5>
                                            <p>Neque porro quisquam est qui dolorem ipsum</p>
                                            <h6>21.09.2017</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-3 float-md-right">
                    <div class="left_sidebar_area">
                        <aside class="l_widget l_categories_widget">
                            <div class="l_title">
                                <h3>categories</h3>
                            </div>
                            <ul>
                                <li><a href="#">APPLE</a></li>
                                <li><a href="#">SAMSUNG</a></li>
                                <li><a href="#">DELL</a></li>
                                <li><a href="#">XIAOMI</a></li>
                                <li><a href="#">LENOVO</a></li>
                                <li><a href="#">ASUS</a></li>
                                <li><a href="#">ASUS</a></li>
                            </ul>
                        </aside>
                        <aside class="l_widget l_supper_widget">
                            <img class="img-fluid" src="
                                                <%=Util.fullPath("img/banner614-k20.gif")%>" alt="">

                        </aside>
                        <aside class="l_widget l_feature_widget">
                            <div class="verticalCarousel">
                                <div class="verticalCarouselHeader">
                                    <div class="float-md-left">
                                        <h3>Featured Products</h3>
                                    </div>
                                    <div class="float-md-right">
                                        <a href="#" class="vc_goUp"><i class="arrow_carrot-left"></i></a>
                                        <a href="#" class="vc_goDown"><i class="arrow_carrot-right"></i></a>
                                    </div>
                                </div>
                                <ul class="verticalCarouselGroup vc_list ">
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img style="width: 80px; height: 70px" src="<%=Util.fullPath("img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg")%>"
                                                     alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Iphone 6s</h4>
                                                <h5>$45.05</h5>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </aside>

                        <aside class="l_widget l_hot_widget">
                            <h3>Summer Hot Sale</h3>
                            <p>Premium 700 Product , Titles and Content Ideas</p>
                            <a class="discover_btn" href="#">shop now</a>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Main Content Area =================-->

    <!--================World Wide Service Area =================-->
    <section class="world_service">
        <div class="container">
            <div class="world_service_inner">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="world_service_item">
                            <h4><img src="<%=Util.fullPath("img/icon/world-icon-1.png")%>" alt="">Worldwide Service</h4>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="world_service_item">
                            <h4><img src="<%=Util.fullPath("img/icon/world-icon-2.png")%>" alt="">247 Help Center</h4>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="world_service_item">
                            <h4><img src="<%=Util.fullPath("img/icon/world-icon-3.png")%>" alt="">Safe Payment</h4>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="world_service_item">
                            <h4><img src="<%=Util.fullPath("img/icon/world-icon-4.png")%>" alt="">Quick Delivary</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End World Wide Service Area =================-->


    <!--================Footer Area =================-->
    <%@include file="footer.jsp" %>
    <!--================End Footer Area =================-->

</div>
<%@include file="backToTop.jsp" %>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=Util.fullPath("js/jquery-3.2.1.min.js")%>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=Util.fullPath("js/popper.min.js")%>"></script>
<script src="<%=Util.fullPath("js/bootstrap.min.js")%>"></script>
<!-- Rev slider js -->
<script src="<%=Util.fullPath("vendors/revolution/js/jquery.themepunch.tools.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/jquery.themepunch.revolution.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.actions.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.video.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.slideanims.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.navigation.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/revolution/js/extensions/revolution.extension.slideanims.min.js")%>"></script>
<!-- Extra plugin css -->
<script src="<%=Util.fullPath("vendors/counterup/jquery.waypoints.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/counterup/jquery.counterup.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/owl-carousel/owl.carousel.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/bootstrap-selector/js/bootstrap-select.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/image-dropdown/jquery.dd.min.js")%>"></script>
<script src="<%=Util.fullPath("js/smoothscroll.js")%>"></script>
<script src="<%=Util.fullPath("vendors/isotope/imagesloaded.pkgd.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/isotope/isotope.pkgd.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/magnify-popup/jquery.magnific-popup.min.js")%>"></script>
<script src="<%=Util.fullPath("vendors/vertical-slider/js/jQuery.verticalCarousel.js")%>"></script>
<script src="<%=Util.fullPath("vendors/jquery-ui/jquery-ui.js")%>"></script>
<script src="<%=Util.fullPath("js/theme.js")%>"></script>
</body>
</html>