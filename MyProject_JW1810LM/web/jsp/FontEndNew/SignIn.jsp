<%-- 
    Document   : SignIn
    Created on : Oct 9, 2019, 1:08:29 AM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <jsp:include page="Head.jsp"></jsp:include>  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>  
        <script>
            function signInValidate() {
                var email = document.getElementById("signInEmail").value;
                var password = document.getElementById("signInPassword").value;
                var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;

                if (email != "" && password != "" && pattern.test(email) == true) {
                    return true;

                } else {
                    if (email == "") {
                        swal("Bạn phải nhập email.");
                        document.getElementById("signInEmail").focus();
                        return false;
                    } else {

                        if (!pattern.test(email)) {
                            swal("Bạn nhập sai định dạng email. Mời bạn nhập lại.");
                            document.getElementById("signInEmail").focus();
                            return false;
                        }
                    }
                    if (password == "") {
                        swal("Bạn phải nhập mật khẩu.");
                        document.getElementById("signInPassword").focus();
                        return false;
                    }
                }
            }
        </script>

        <script>
            function signUpValidate() {

                var userName = document.getElementById("userName").value;
                var password = document.getElementById("password").value;
                var phone = document.getElementById("phone").value;
                var address = document.getElementById("address").value;
                var email = document.getElementById("email").value;
                var passwordConfirm = document.getElementById("passwordConfirm").value;
                var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;

                if (userName != "" && password != "" && address != "" && phone != "" && email != "" && passwordConfirm == password && pattern.test(email) == true) {
                    return true;

                } else {
                    if (email == "") {
                        swal("Bạn phải nhập email.");
                        document.getElementById("email").focus();
                        return false;
                    } else {
                        if (!pattern.test(email)) {
                            swal("Bạn nhập sai định dạng email. Mời bạn nhập lại.");
                            document.getElementById("email").focus();
                            return false;
                        }
                    }
                    if (userName == "") {
                        swal("Bạn phải nhập tên .");
                        document.getElementById("userName").focus();
                        return false;
                    }
                    if (address == "") {
                        swal("Bạn phải nhập địa chỉ.");
                        document.getElementById("address").focus();
                        return false;
                    }
                    if (phone == "") {
                        swal("Bạn phải nhập số điện thoại.");
                        document.getElementById("phone").focus();
                        return false;
                    }
                    if (password == "") {
                        swal("Bạn phải nhập mật khẩu.");
                        document.getElementById("password").focus();
                        return false;
                    }
                    if (passwordConfirm != password) {
                        swal("Xác nhận mật khẩu chưa chính xác.");
                        document.getElementById("phone").focus();
                        return false;
                    }
                }
            }
        </script>

        <body>
        <jsp:include page="Header.jsp"></jsp:include>  
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                        <li class='active'>Đăng Nhập</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <div class="body-content">
            <div class="container">
                <div class="sign-in-page">
                    <div class="row">
                        <!-- Sign-in -->			
                        <div class="col-md-6 col-sm-6 sign-in">
                            <p class="alert alert-danger" id="thongbao">${thongBao}</p>
                            <script>
                                var tb = document.getElementById("thongbao").value;
                                if (tb == null) {
                                    var x = document.getElementById("thongbao");
                                    x.getAttributeNode("class").value = "";
                                }
                                if (tb == [[${thongBao}]]) {
                                    var x = document.getElementById("thongbao");
                                    x.getAttributeNode("class").value = "alert alert-danger";
                                }
//                                -----------------------------------------------
                            </script>
                            <h4 class="">Đăng nhập</h4>
                            <p class="">Xin chào,chào mừng bạn đến với tài khoản của bạn</p>
                            <div class="social-sign-in outer-top-xs">
                                <a href="#" class="facebook-sign-in"><i class="fa fa-facebook"></i> Đăng nhập với Facebook</a>
                                <a href="#" class="twitter-sign-in"><i class="fa fa-twitter"></i> Đăng nhập với Twitter</a>
                            </div>
                            <!--messege-->
                            <br>
                            <div class="alert alert-danger" id="message">${message}</div>

                            <script>
                                var ms = document.getElementById("message").value;
                                if (ms == null) {
                                    var x = document.getElementById("message");
                                    x.getAttributeNode("class").value = "";

                                }
                                if (ms == [[${message}]]) {
                                    var x = document.getElementById("message");
                                    x.getAttributeNode("class").value = "alert alert-danger";
                                }
                            </script>
                            <!--messege-->
                            <f:form action="${pageContext.request.contextPath}/homeFontEnd/signIn.htm" commandName="account" class="register-form outer-top-xs" role="form" onsubmit="return signInValidate()">
                                <div class="form-group">
                                    <label class="info-title" for="signInEmail">Địa chỉ email <span>*</span></label>
                                    <f:input type="email" class="form-control unicase-form-control text-input" id="signInEmail" path="email"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputPassword1">Mật khẩu <span>*</span></label>
                                    <f:input type="password" class="form-control unicase-form-control text-input" id="signInPassword" path="password"/>
                                </div>
                                <div class="radio outer-xs">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Ghi nhớ!
                                    </label>
                                    <a href="${pageContext.request.contextPath}/homeFontEnd/initRecoverPass.htm" class="forgot-password pull-right">Quên mật khẩu?</a>
                                </div>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng nhập</button>
                            </f:form>					
                        </div>
                        <!-- Sign-in -->
                        <!-- create a new account -->
                        <div class="col-md-6 col-sm-6 create-new-account">
                            <!--tu cho nay-->
                            <h4 class="checkout-subtitle">Tạo mới tào khoản</h4>
                            <p class="text title-tag-line">Tạo mới tào khoản của bạn</p>
                            ${sameEmail}

                            <script>
                                if (${sameEmail} !== null) {
                                    swal("Email đã được sử dụng");
                                }
                            </script>

                            <f:form action="${pageContext.request.contextPath}/homeFontEnd/signUp.htm" commandName="register" class="register-form outer-top-xs" role="form" onsubmit="return signUpValidate()">
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail2">Địa chỉ email <span>*</span></label>
                                    <f:input type="email" class="form-control unicase-form-control text-input" id="email" path="email"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Tên <span>*</span></label>
                                    <f:input type="text" class="form-control unicase-form-control text-input" id="userName" path="userName"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Địa chỉ <span>*</span></label>
                                    <f:input type="text" class="form-control unicase-form-control text-input" id="address" path="address"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Số điện thoại <span>*</span></label>
                                    <f:input type="text" class="form-control unicase-form-control text-input" id="phone" path="phone"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Mật khẩu <span>*</span></label>
                                    <f:input type="password" class="form-control unicase-form-control text-input" id="password" path="password"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Xác nhận mật khẩu <span>*</span></label>
                                    <input type="password" class="form-control unicase-form-control text-input" id="passwordConfirm"/>
                                </div>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng ký</button>
                            </f:form>
                            <!--den cho nay-->  
                        </div>
                    </div><!-- /.row -->
                </div> <!-- /.sigin-in-->
            </div> <!-- /.container-->
        </div> <!-- /.body content-->

        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="../jsp/FontEndNew/js/jquery-1.11.1.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-hover-dropdown.min.js"></script> 
        <script src="../jsp/FontEndNew/js/owl.carousel.min.js"></script> 
        <script src="../jsp/FontEndNew/js/echo.min.js"></script> 
        <script src="../jsp/FontEndNew/js/jquery.easing-1.3.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-slider.min.js"></script> 
        <script src="../jsp/FontEndNew/js/jquery.rateit.min.js"></script> 
        <script type="text/javascript" src="../jsp/FontEndNew/js/lightbox.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-select.min.js"></script> 
        <script src="../jsp/FontEndNew/js/wow.min.js"></script> 
        <script src="../jsp/FontEndNew/js/scripts.js"></script>
    </body>

</html>
