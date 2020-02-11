<%-- 
    Document   : AccountInfo
    Created on : Oct 13, 2019, 7:13:50 PM
    Author     : Administrator
--%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <jsp:include page="Head.jsp"></jsp:include>  
        <link href="../css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="../js/sweetalert.min.js" type="text/javascript"></script>  
        <body>
        <jsp:include page="Header.jsp"></jsp:include> 
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="home.html">Trang chủ</a></li>
                            <li class='active'>Thông tin tài khoản</li>
                        </ul>
                    </div><!-- /.breadcrumb-inner -->
                </div><!-- /.container -->
                <div class="body-content">
                    <div class="container">
                        <div class="sign-in-page">
                            <div class="row">
                                <!-- Sign-in -->			
                                <div class="col-md-6 col-sm-6 sign-in">
                                    <h4 class="">Trang sửa thông tin tài khoản</h4>
                                <f:form class="register-form outer-top-xs" accept-charset='UTF-8' action="${pageContext.request.contextPath}/homeFontEnd/editAccountInfo.htm" id='customer_register' commandName="accountInfo">
                                    <input name='FormType' type='hidden' value='customer_register' />
                                    <input name='utf8' type='hidden' value='true' /> 
                                    <div class="userform">
                                        <div class="form-group message">
                                            ${message}
                                        </div>
                                        <div class="form-group">
                                            <f:input type="hidden" name="userId" class="form-control unicase-form-control text-input" id="userId" path="userId" />
                                        </div>                  
                                        <div class="form-group">
                                            <label>Email đăng nhập: <span class="required">*</span></label>
                                            <f:input type="text" name="email" class="form-control unicase-form-control text-input" id="email" path="email" readonly="true"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Tên : <span class="required">*</span></label>
                                            <f:input type="text" name="FirstName" class="form-control unicase-form-control text-input" id="userName" path="userName" />
                                        </div>
                                        <div class="form-group">
                                            <label>Địa chỉ: <span class="required">*</span></label>
                                            <f:input type="text" name="LastName" class="form-control unicase-form-control text-input" id="address" path="address" />
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại: <span class="required">*</span></label>
                                            <f:input type="text" name="LastName" class="form-control unicase-form-control text-input" id="phone" path="phone" />
                                        </div> 
                                        <div class="form-group">
                                            <label>Mật khẩu : <span class="required">*</span></label>
                                            <f:input type="text" name="LastName" class="form-control unicase-form-control text-input" id="password" path="password" />
                                        </div>   
                                        <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Sửa thông tin</button>                      
                                    </div>
                                </f:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.breadcrumb -->
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
