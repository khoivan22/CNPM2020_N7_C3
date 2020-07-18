<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Chi tiết sản phẩm | Saitama</title>
    <link rel="stylesheet" href="<%=Util.fullPath("css/detail_product.css")%>">
    <%@include file="headAllPage.jsp" %>
</head>
<body>
<%@include file="backToTop.jsp" %>
<%--=================   HEADER   ==============--%>
<%@include file="header.jsp" %>
<%-----------------------------------------------%>

<%--=================   BODY    ===============--%>
<section id="product_detail" class="bg-light">
    <div class="container">
        <!-- CHI TIẾT SẢN PHẨM-->
        <div class="py-3">
            <h3>Chi tiết sản phẩm</h3>
        </div>
        <%
            ResultSet detail = (ResultSet) request.getAttribute("detailProduct");
            ResultSet comment = (ResultSet) request.getAttribute("comment");
            while (detail.next()) {
        %>
        <div class="row">

            <div class="col-md-7 col-12">
                <div id="add_cart" class="img_product_detail" align="center">
                    <div id="thumbnails-product" class="carousel slide carousel-fade carousel-thumbnails bg-white"
                         data-ride="carousel"
                         data-interval="2000">
                        <div style="padding-bottom: 100px">
                            <div class="carousel-inner" role="listbox">
                                <%
                                    String img = detail.getString(3);
                                    String[] arrImg = img.split("~");
                                    int j = 0;
                                    for (String image : arrImg) {
                                        if (j == 0) {
                                %>
                                <div class="carousel-item active">
                                    <img class="img-fluid d-block" src="<%=image%>" alt="slide">
                                </div>
                                <%
                                } else {
                                %>
                                <div class="carousel-item">
                                    <img class="img-fluid d-block" src="<%=image%>" alt="slide">
                                </div>
                                <%
                                        }
                                        j++;
                                    }
                                %>
                            </div>
                        </div>
                        <%--=============== CONTROL ===============--%>
                        <a class="carousel-control-prev" href="#thumbnails-product" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#thumbnails-product" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"
                                  style=""></span>
                            <span class="sr-only">Next</span>
                        </a>
                        <ol class="carousel-indicators">
                            <%
                                for (int i = 0; i < arrImg.length; i++) {
                                    if (i == 0) {
                            %>
                            <li data-target="#thumbnails-product" data-slide-to="<%=i%>" class="active">
                                <img class="d-block w-100" src="<%=arrImg[i]%>" class="img-fluid">
                            </li>
                            <%
                            } else {
                            %>
                            <li data-target="#thumbnails-product" data-slide-to="<%=i%>">
                                <img class="d-block w-100" src="<%=arrImg[i]%>" class="img-fluid">
                            </li>
                            <%
                                    }
                                }
                            %>
                        </ol>
                    </div>
                    <%--=========================--%>
                    <%

                        if (detail.getInt(8) == 0) {
                    %>
                    <p>Chưa có đánh giá</p>
                    <%
                    } else {

                        for (int i = 0; i < detail.getInt(8); i++) {
                            System.out.println("");
                    %>
                    <i class="fa fa-star star" style="color:darkorange"></i>

                    <%
                        }
                        for (int i = 0; i < 5 - detail.getInt(8); i++) {
                            System.out.println("b");
                    %>

                    <i class="fa fa-star star" style="color: #9fcdff"></i>
                    <%
                            }
                        }
                    %>
                    <h5 class="my-3"><%=Util.convertPrice(detail.getDouble(2) - detail.getDouble(7))%>
                    </h5>
                    <del style="font-size: 18px;display: <%=detail.getDouble(7)==0?"none":"block"%>"
                         class="my-3"><%=Util.convertPrice(detail.getDouble(2))%>
                    </del>
                </div>
                <div align="center">
                    <form class="d-inline"
                          action="<%=Util.fullPath("add?id=" + detail.getString(6)+"&btn=buynow")%>"
                          method="post">
                        <button class="btn_buy col-md-5 buy_now mt-1" type="submit">Mua ngay
                        </button>
                    </form>
                    <button class="btn_add btn_add_add col-md-5 add_shop_cart mt-1" type="submit">Thêm vào giỏ
                        <input type="hidden" class="id_product" name="" value="<%=detail.getString(6)%>">
                    </button>
                </div>
            </div>
            <%--========    Thông số sản phẩm   =============--%>
            <div class="col-md-5 col-12">
                <div>
                    <h4 class="mt-5">Thông số kĩ thuật</h4>
                    <h5 class="my-3"><%=detail.getString(1)%>
                    </h5>
                    <%
                        ResultSet conf = (ResultSet) request.getAttribute("configuration");
                        while
                        (conf.next()) {
                    %>
                    <p>Màn hình : <span><%=conf.getString(2)%></span></p>
                    <p>Camera trước :<span><%=conf.getString(3)%></span></p>
                    <p>Camera sau : <span><%=conf.getString(4)%></span></p>
                    <p>Ram : <span><%=conf.getString(5)%></span></p>
                    <p>Bộ nhớ trong : <span><%=conf.getString(6)%></span></p>
                    <p>CPU : <span><%=conf.getString(7)%></span></p>
                    <p>GPU : <span><%=conf.getString(8)%></span></p>
                    <p>Dung lượng pin : <span><%=conf.getString(9)%></span></p>
                    <p>Hệ điều hành : <span><%=conf.getString(10)%></span></p>
                    <p>Thẻ sim : <span><%=conf.getString(11)%></span></p>
                    <%
                        }
                    %>
                </div>
            </div>
            <%-------------------------------------------------%>
        </div>
        <%
            }
        %>
        <!--ĐÁNH GIÁ SẢN PHẨM-->

        <div class="py-3">
            <h3>Nhận xét sản phẩm</h3>
        </div>
        <%
            if (request.getAttribute("check") != null) {
                if ((int) request.getAttribute("check") == 0) {

        %>
        <div>
            <p style="margin-bottom: 10px;font-size: 15px">**Đánh giá sản phẩm**</p>
            <div class="float-left">
                <p class="rating">
                    <i class="fa fa-star star_detail" id="star1" onclick="this.style.color='darkorange';
                document.getElementById('star5').style.color='darkorange';
                document.getElementById('star2').style.color='darkorange';
                document.getElementById('star3').style.color='darkorange';
                document.getElementById('star4').style.color='darkorange';
                document.getElementById('star_num').value='5';
                "></i>
                    <i class="fa fa-star star_detail" id="star2"
                       onclick="this.style.color='darkorange';
                    document.getElementById('star1').style.color='#9fcdff';
                    document.getElementById('star3').style.color='darkorange';
                    document.getElementById('star4').style.color='darkorange';
                    document.getElementById('star5').style.color='darkorange';
                    document.getElementById('star_num').value='4';
                "></i>

                    <i class="fa fa-star star_detail" id="star3"
                       onclick="this.style.color='darkorange';
                    document.getElementById('star1').style.color='#9fcdff';
                    document.getElementById('star2').style.color='#9fcdff';
                    document.getElementById('star4').style.color='darkorange';
                    document.getElementById('star5').style.color='darkorange';
                    document.getElementById('star_num').value='3';
                "></i>
                    <i class="fa fa-star star_detail" id="star4"
                       onclick="this.style.color='darkorange';
                    document.getElementById('star1').style.color='#9fcdff';
                    document.getElementById('star2').style.color='#9fcdff';
                    document.getElementById('star3').style.color='#9fcdff';
                    document.getElementById('star5').style.color='darkorange';
                    document.getElementById('star_num').value='2';
"></i>
                    <i class="fa fa-star star_detail" id="star5"
                       onclick="this.style.color='darkorange';
                    document.getElementById('star1').style.color='#9fcdff';
                    document.getElementById('star2').style.color='#9fcdff';
                    document.getElementById('star3').style.color='#9fcdff';
                    document.getElementById('star4').style.color='#9fcdff';
                    document.getElementById('star_num').value='1';
"></i>

                </p>
            </div>
        </div>
        <%
                }
            }
        %>
        <div class="product_evaluation">
            <form id="form_comment">
                <div class="input-group mb-3">
                    <%
                        detail.first();
                    %>
                    <input id="id" name="id" type="hidden" value="<%=detail.getString(6)%>">
                    <input id="comment" name="comment" type="text" class="form-control"
                           placeholder="Viết đánh giá ..." autocomplete="off">
                    <input id="star_num" name="star_num" type="number" value="" style="display: none">
                    <div class="input-group-append">
                        <%
                            User user = (User) session.getAttribute("user");
                            if (user == null) {
                        %>
                        <button type="button" onclick="swal.fire({
                            title: 'Bạn cần đăng nhập.',
                            confirmButtonColor: '#ff6700'});"
                                class="btn_evaluation btn btn-dark">Bình luận
                        </button>
                        <%
                        } else {
                        %>
                        <button id="btn_evaluation" class="btn_evaluation btn btn-dark" type="submit">Bình luận</button>
                        <%
                            }
                        %>
                    </div>
                </div>
            </form>
            <div>
                <%
                    comment.beforeFirst();
                    while (comment.next()) {
                %>
                <div class="user_evaluation">
                    <span class="float-right"><%=comment.getString(5)%></span>
                    <p>Bởi : <%=comment.getString(2)%>
                    </p>
                    <div style="">
                        <%
                            if (comment.getInt(7) != 0) {
                                for (int i = 0; i < comment.getInt(7); i++) {
                        %>
                        <i class="fa fa-star star" style="color:darkorange"></i>
                        <%
                            }
                            for (int i = 0; i < 5 - comment.getInt(7); i++) {
                        %>

                        <i class="fa fa-star star" style="color: #9fcdff"></i>
                        <%
                                }
                            }
                        %>


                    </div>
                    <span><%=comment.getString(4)%></span>
                    <%
                        if (user != null && user.getUser_name().equals(comment.getString(1))) {
                    %>
                    <a id="del_comment" class=" float-right" style="color: #000 !important;">
                        Xóa
                        <input type="hidden" id="id_comment" value="<%=comment.getInt(6)%>">
                    </a>
                    <%
                        }
                    %>

                </div>
                <%
                    }
                %>
            </div>
        </div>
        <!--SẢN PHẨM TƯƠNG TỰ-->
        <div class="py-3">
            <h3>Sản phẩm tương tự</h3>
        </div>
        <div class="product_similar">
            <div class="row">
                <%
                    int i = 1;
                    ResultSet like = (ResultSet) request.getAttribute("like");
                    while
                    (like.next()) {
                        if (i <= 8) {
                %>
                <div class="frame col-1-5 d-flex align-items-stretch">
                    <div class="product_item">
                        <div class="figure figure-img">
                            <a href="<%=Util.fullPath("detail_product?detail="+like.getString(6))%>">
                                <%
                                    String img = like.getString(3);
                                    String[] arrImg = img.split("~");
                                %>
                                <img class="img-fluid" src="<%=arrImg[0]%>" alt="img">
                                <label class="discountt1"
                                       style="visibility: <%=like.getDouble(7)==0?"hidden":"visible"%>">
                                    <i class="fas fa-tags"> </i> GIẢM <%=Util.convertPrice(like.getDouble(7))%>
                                </label>
                                <div class="cotain_icon1">
                                    <div class="btn_add icon">
                                        <a><i class="fas fa-cart-plus"> </i></a>
                                        <input type="hidden" class="id_product" value="<%=like.getString(6)%>">
                                    </div>
                                    <div class="icon">
                                        <a href="<%=Util.fullPath("add?id=" + like.getString(6)+"&btn=buynow")%>">
                                            <i class="fas fa-dollar-sign"></i>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <h5 class="product_name"><a
                                href="<%=Util.fullPath("detail_product?detail="+like.getString(6))%>">
                            <%=like.getString(1)%>
                        </a>
                            <div style="text-align: center">
                                <%
                                    if (like.getInt(8) == 0) {
                                %>
                                <span style="font-size: 10px;color: #1b1e21">Chưa có đánh giá</span>
                                <%
                                } else {

                                    for (int j = 0; j < like.getInt(8); j++) {
                                %>
                                <i class="fa fa-star star" style="color:darkorange"></i>
                                <%
                                    }
                                    for (int j = 0; j < 5 - like.getInt(8); j++) {
                                %>

                                <i class="fa fa-star star" style="color: #9fcdff"></i>
                                <%
                                        }
                                    }
                                %>
                            </div>
                            <span class="product_price"><%=Util.convertPrice(like.getDouble(2) - like.getDouble(7))%></span>
                            <div>
                                        <span style="font-size: 12px;color: #4e555b;visibility: <%=like.getDouble(7)==0?"hidden":"visible"%>">
                                        <del class="product_price"><%=Util.convertPrice(like.getDouble(2))%></del>
                                    </span>
                            </div>
                        </h5>
                    </div>
                </div>
                <%
                            i++;
                        }
                    }
                %>
            </div>
        </div>
    </div>
</section>
<%-----------------------------------------------%>

<%--=================   FOOTER    =============--%>
<%@include file="footer.jsp" %>
<%-----------------------------------------------%>

<%--============    PAY     ===================--%>
<%@include file="pay.jsp" %>
<%-----------------------------------------------%>

<%--=========   SLIDE IMG PRODUCT    ==========--%>
<style type="text/css">
    .carousel-indicators .carousel-indicators img {
        max-width: 100px;
        height: 50px;
        overflow: hidden;
        display: block;
    }

    .carousel-thumbnails .carousel-indicators li {
        height: auto;
        max-width: 100px;
        width: 50px;
        border: none;
        box-shadow: 1px 3px 5px 0px rgba(0, 0, 0, 1);
    }

    .carousel-thumbnails .carousel-indicators li.active {
        border-bottom: 4px solid #ff6700;
    }

    .carousel-control-next,
    .carousel-control-prev {
        filter: invert(100%);
    }

    #del_comment:hover {
        cursor: pointer;
    }
</style>
<%-----------------------------------------------%>
<script>
    /*Add comment   */
    $(document).ready(function () {
        $('#btn_evaluation').click(function (e) {
            e.preventDefault();

            var id = $('#id').val();
            var comment = $('#comment').val();
            var star_num = $('#star_num').val();
            if (comment == '') {
                Swal.fire({
                    title: 'Vui lòng nhập bình luận.',
                    confirmButtonColor: '#ff6700',
                });
            } else
                $.ajax({
                    url: '<%=Util.fullPath("comment")%>',
                    type: 'GET',
                    data: { /*Dữ liệu post lên server*/
                        id: id,
                        comment: comment,
                        star_num: star_num,
                    },
                    success: function (result) { /*Thành công thì thực hiện function(success)*/
                        location.reload();
                    },
                    error: function (error) { /*Lỗi thì thực hiện function(error)*/
                        alert(error);
                    }
                })
        });
    });
    /*Delete comment*/
    $(document).ready(function () {
        $("#del_comment").click(function () {
            swal.fire({
                title: 'Xóa bình luận.',
                showCancelButton: true,
                confirmButtonText: 'Xóa',
                cancelButtonText: 'Hủy',
                confirmButtonColor: '#ff6700',
                preConfirm: () => {
                    var id_comment = $('#id_comment').val();
                    var id = $('#id').val();
                    $.ajax({
                        url: "<%=Util.fullPath("del_comment")%>",
                        type: "get",
                        data: {
                            id_comment: id_comment,
                            id: id
                        },
                        success: function () {
                            location.reload();
                        },
                        error: function (error) {
                            alert(error);
                        }
                    });
                }
            });
        })
    });
</script>
</body>
</html>