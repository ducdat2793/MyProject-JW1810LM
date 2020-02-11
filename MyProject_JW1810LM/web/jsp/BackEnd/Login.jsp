

<%-- 
    Document   : Login
    Created on : Jun 8, 2017, 1:46:39 PM
    Author     : TuyenMap
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Login Page - Ace Admin</title>  
        
        <jsp:include page="Head.jsp"></jsp:include>      
        
            <script>
                function validate() {
                    var username = document.getElementById("username").value;
                    var pass = document.getElementById("password").value;
                    if (username != "" && pass != "") {
                        return true;
                    } else {
                        if (username == "") {
                            swal("Bạn phải nhập tên đăng nhập.");
                            document.getElementById("username").focus();
                            return false;
                        }
                        if (pass == "") {
                            swal("Bạn phải nhập mật khẩu.");
                            document.getElementById("password").focus();
                            return false;
                        }
                    }
                }
            </script>
        </head>

        <body class="login-layout">
            <div class="main-container">
                <div class="main-content">
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1">
                            <div class="login-container">
                                <div class="center">
                                    <h1>
                                        <i class="ace-icon fa fa-leaf green"></i>
                                        <span class="red">E-Book HN</span>
                                        <span class="white" id="id-text2"> </span>
                                    </h1>
                                    <h4 class="blue" id="id-company-text">Quản trị website</h4>
                                </div>
                                <div class="space-6"></div>

                                <div class="position-relative">
                                    <div id="login-box" class="login-box visible widget-box no-border">
                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <h4 class="header blue lighter bigger">
                                                    <i class="ace-icon fa fa-coffee green"></i>
                                                    Thông tin đăng nhập
                                                </h4>
                                                <div class="space-6"></div>
                                            <f:form action="${pageContext.request.contextPath}/admin/adminLogin.htm" commandName="user" onsubmit="return validate()">
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <div class="message">
                                                            ${message}
                                                        </div>
                                                    </label>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <f:input type="text" class="form-control" placeholder="Tên đăng nhập" path="userName" id="username" />
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <f:input type="password" class="form-control" placeholder="Mật khẩu" path="password" id="password" />
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>
                                                    <div class="space"></div>
                                                    <div class="clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace" />
                                                            <span class="lbl"> Nhớ mật khẩu</span>
                                                        </label>
                                                        <button type="submit" class="width-45 pull-right btn btn-sm btn-primary">
                                                            <i class="ace-icon fa fa-key"></i>
                                                            <span class="bigger-110">Đăng nhập</span>
                                                        </button>
                                                    </div>
                                                    <div class="space-4"></div>
                                                </fieldset>
                                            </f:form>

                                            <div class="social-or-login center">
                                                <span class="bigger-110">Đăng nhập với</span>
                                            </div>
                                            <div class="space-6"></div>
                                            <div class="social-login center">
                                                <a class="btn btn-primary">
                                                    <i class="ace-icon fa fa-facebook"></i>
                                                </a>
                                                <a class="btn btn-info">
                                                    <i class="ace-icon fa fa-twitter"></i>
                                                </a>
                                                <a class="btn btn-danger">
                                                    <i class="ace-icon fa fa-google-plus"></i>
                                                </a>
                                            </div>
                                        </div><!-- /.widget-main -->
                                        <div class="toolbar clearfix">
                                            <div>
                                                <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                                    <i class="ace-icon fa fa-arrow-left"></i>
                                                    Quên mật khẩu
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#" data-target="#signup-box" class="user-signup-link">
                                                    Đăng kí tài khoản
                                                    <i class="ace-icon fa fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div><!-- /.widget-body -->
                                </div><!-- /.login-box -->

                                <div id="forgot-box" class="forgot-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header red lighter bigger">
                                                <i class="ace-icon fa fa-key"></i>
                                                Nhận lại mật khẩu
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>
                                                Mời bạn nhập email đã đăng ký
                                            </p>
                                        <f:form action="${pageContext.request.contextPath}/admin/backEndRecoverPass.htm" commandName="user">
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <f:input type="email" class="form-control" placeholder="Email" id="email" path="email"/>
                                                            <i class="ace-icon fa fa-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <div class="clearfix">
                                                        <button type="submit" class="width-35 pull-right btn btn-sm btn-danger">
                                                            <i class="ace-icon fa fa-lightbulb-o"></i>
                                                            <span class="bigger-110">Gửi !</span>
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </f:form>
                                        </div><!-- /.widget-main -->

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">
                                               Trở lại trang đăng nhập
                                                <i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div><!-- /.widget-body -->
                                </div><!-- /.forgot-box -->

                                <div id="signup-box" class="signup-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header green lighter bigger">
                                                <i class="ace-icon fa fa-users blue"></i>
                                              Đăng ký tài khoản (Chưa làm)
                                            </h4>

                                            <div class="space-6"></div>
                                            <p> Nhập thông tin: </p>

                                            <f:form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="email" class="form-control" placeholder="Email" />
                                                            <i class="ace-icon fa fa-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="text" class="form-control" placeholder="Username" />
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Password" />
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Repeat password" />
                                                            <i class="ace-icon fa fa-retweet"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block">
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl">
                                                            Tôi đồng ý 
                                                            <a href="#">điều khoản người sử dụng</a>
                                                        </span>
                                                    </label>

                                                    <div class="space-24"></div>

                                                    <div class="clearfix">
                                                        <button type="reset" class="width-30 pull-left btn btn-sm">
                                                            <i class="ace-icon fa fa-refresh"></i>
                                                            <span class="bigger-110">Reset</span>
                                                        </button>

                                                        <button type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                            <span class="bigger-110">Đăng ký</span>

                                                            <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </f:form>
                                        </div>

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">
                                                <i class="ace-icon fa fa-arrow-left"></i>
                                                Trở lại trang đăng nhập
                                            </a>
                                        </div>
                                    </div><!-- /.widget-body -->
                                </div><!-- /.signup-box -->
                            </div><!-- /.position-relative -->

                            <div class="navbar-fixed-top align-right">
                                <br />
                                &nbsp;
                                <a id="btn-login-dark" href="#">Dark</a>
                                &nbsp;
                                <span class="blue">/</span>
                                &nbsp;
                                <a id="btn-login-blur" href="#">Blur</a>
                                &nbsp;
                                <span class="blue">/</span>
                                &nbsp;
                                <a id="btn-login-light" href="#">Light</a>
                                &nbsp; &nbsp; &nbsp;
                            </div>
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.main-content -->
        </div><!-- /.main-container -->
        <script src="../jsp/BackEnd/js/jquery.2.1.4.min.js"></script>

      
<script type="text/javascript">
window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement)
                document.write("<script src='/SpringFrameworks/jsp/Admin/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="/SpringFrameworks/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function ($) {
                $(document).on('click', '.toolbar a[data-target]', function (e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });
            //you don't need this, just used for changing background
            jQuery(function ($) {
                $('#btn-login-dark').on('click', function (e) {
                    $('body').attr('class', 'login-layout');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-light').on('click', function (e) {
                    $('body').attr('class', 'login-layout light-login');
                    $('#id-text2').attr('class', 'grey');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-blur').on('click', function (e) {
                    $('body').attr('class', 'login-layout blur-login');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'light-blue');

                    e.preventDefault();
                });
            });
        </script>
    </body>
</html>