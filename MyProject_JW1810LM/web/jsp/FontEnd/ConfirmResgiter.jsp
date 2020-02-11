<%-- 
    Document   : ConfirmRedister
    Created on : Sep 6, 2019, 5:00:46 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="Head.jsp"></jsp:include>
    
     <link href="/MyProject_JW1810LM/jsp/BackEnd/css/sweetalert.css" rel="stylesheet" type="text/css"/>
    <script src="/MyProject_JW1810LM/jsp/BackEnd/js/sweetalert.min.js" type="text/javascript"></script>
     
        <body>
            <div class="fullLoading" style="display:none">
                <div class="cssload-ball"></div>
            </div>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="breadcrumb">
                <div class="container">
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                        <li class="divide"><i class="fa fa-angle-right"></i></li>

                        <li><span>Đăng kí thành công</span></li>

                    </ul>
                </div>
            </div>

            <section class="page-account">
                <div class="container"> 
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h2 class="page-title">Đăng kí thành công. Cảm ơn bạn đẫ đăng kí tài khoản người dùng. Mời bạn tiếp tục sử dụng các dịch vụ của chúng tôi.</h2>
                    <a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm" class="btn btn-primary" >Tiếp tục</a>
                   
                    </div>
                </div>
            </section> 
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

