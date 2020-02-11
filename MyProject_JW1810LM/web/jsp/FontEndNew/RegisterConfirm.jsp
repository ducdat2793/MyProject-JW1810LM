<%-- 
    Document   : RegisterConfirm
    Created on : Oct 10, 2019, 12:20:40 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký thành công</title>
    </head>
    <jsp:include page="Head.jsp"></jsp:include>  
        <body>
        <jsp:include page="Header.jsp"></jsp:include>  
            <div class="body-content">
                <div class="container">
                    <div class="sign-in-page">
                        <div class="row">
                            <div class="col-md-12 col-sm-6 sign-in">
                                <h4 class="checkout-subtitle">Đăng ký thành công,thông tin tài khoản đã được gửi qua email.</h4>
                                <p class="text title-tag-line"> <a href="${pageContext.request.contextPath}/homeFontEnd/initLogin.htm">Trở lại trang đăng nhập</a>  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
