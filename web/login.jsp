<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="img/fav-icon.png" type="image/x-icon"/>
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

<!--================Menu Area =================-->
<%@include file="header.jsp" %>
<!--================End Menu Area =================-->

<!--================login Area =================-->
<section class="login_area p_100">
    <div class="container">
        <div class="login_inner">
            <div class="row">
                <div class="col-lg-4">
                    <div class="login_title">
                        <h2>log in your account</h2>
                        <p>Log in to your account to discovery all great features in this template.</p>
                    </div>
                    <form class="login_form row" action="login" method="post">
                        <div class="col-lg-12 form-group">
                            <input class="form-control" type="text" name="username" placeholder="User Name" required>
                        </div>
                        <div class="col-lg-12 form-group">
                            <input class="form-control" type="password" name="password" placeholder="Password" required>
                        </div>
                        <div class="col-lg-12 form-group">
                            <div class="creat_account">
                                <fb:login-button
                                        scope="public_profile,email"
                                        onlogin="checkLogin();">
                                </fb:login-button>
                            </div>
                            <h4>Forgot your password ?</h4>

                        </div>
                        <div class="col-lg-12 form-group">

                            <button type="submit" value="submit" class="btn update_btn form-control">Login</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-8">
                    <div class="login_title">
                        <h2>create account</h2>
                        <p>Follow the steps below to create email account enjoy the great mail.com emailing experience.
                            Vivamus tempus risus vel felis condimentum, non vehicula est iaculis.</p>
                    </div>
                    <form class="login_form row">
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="text" placeholder="Name">
                        </div>
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="email" placeholder="Email">
                        </div>
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="text" placeholder="User Name">
                        </div>
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="text" placeholder="Phone">
                        </div>
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="password" placeholder="Password">
                        </div>
                        <div class="col-lg-6 form-group">
                            <input class="form-control" type="password" placeholder="Re-Password">
                        </div>
                        <div class="col-lg-6 form-group">
                            <button type="submit" value="submit" class="btn subs_btn form-control">register now</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End login Area =================-->

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
<!-- script dang nhap bang facebook -->
<script>
    // xử lý trạng thái đăng nhập
    function statusChangeCallback(response) {
        // người dùng đã đăng nhập fackebook và đăng nhập website
        if (response.status === 'connected') {
            alert('Bạn đã đăng nhập thành công');

            // người dùng đã đăng nhập facebook nhưng chưa đăng nhập website
        } else if (response.status === 'not connected') {

            alert('Bạn chưa đăng nhập website');
        } else {
            // người dùng chưa đưng nhập facebook

            alert('Bạn chưa đăng nhập facebook');

        }
    }

    function checkLogin() {
        FB.api('/me', {fields: ' name, email'}, function (response) {
            window.location = 'http://graph.facebook.com/oauth/authorize?client_id=735019480627374&scope=public_profile,email,user_likes&redirect_uri=http://localhost:8080/web_mobile/home?name=' + response.name + '&email=' + response.email + '&id=' + response.id;
        });
    }


    // load lên các thành phần cần thiết của facebook
    window.fbAsyncInit = function () {
        FB.init({
            appId: '735019480627374',
            cookie: true,
            xfbml: true,
            version: 'v7.0'
        });

// gọi hàm kiểm tra kết quả đăng nhập hiện tại
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });

    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

</script>
</body>
</html>