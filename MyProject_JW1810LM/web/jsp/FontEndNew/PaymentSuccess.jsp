<%-- 
    Document   : PaymentSuccess
    Created on : Oct 31, 2019, 8:41:57 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toán thành công</title>

        <jsp:include page="Head.jsp"></jsp:include>  
            <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" type="text/css"/>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>  
        </head>
        <body>
        <jsp:include page="Header.jsp"></jsp:include>  
            <div class="container">
                <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                    <h1>${messageSuc} ${messageSu}</h1>
                <h3>Chúc mừng bạn thanh toán thành công.Xin vui lòng vào <a
                        href="https://mail.google.com">mail</a> để xem chi tiết!</h3>           
                <button class="btn-upper btn btn-primary checkout-page-button" onclick="location.href = '${pageContext.request.contextPath}/homeFontEnd/getData.htm'" >Tiếp tục mua hàng
                </button>
                <br>
            </div>
        </div>

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
