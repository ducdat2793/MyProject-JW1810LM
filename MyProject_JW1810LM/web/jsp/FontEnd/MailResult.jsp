<%-- 
    Document   : Result
    Created on : Aug 1, 2019, 8:59:36 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="polo-theme - Thanh toán đơn hàng" />
        <title>polo-theme - Thanh toán đơn hàng</title>
        <link rel="shortcut icon" href="//bizweb.dktcdn.net/assets/favicon.ico"
              type="image/x-icon" />
        <link href='/MyProject_JW1810LM/jsp/BackEnd/css/bootstrap.min.css'
              rel='stylesheet' type='text/css' />
        <!-- <link href='/MyProject_JW1810LM/jsp/BackEnd/css/nprogress.css' rel='stylesheet'
        type='text/css' />-->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.css' rel='stylesheet'
              type='text/css' />
        <link href='/MyProject_JW1810LM/jsp/BackEnd/css/font-awesome.min.css'
              rel='stylesheet' type='text/css' />
        <link href='/MyProject_JW1810LM/jsp/FontEnd/css/checkout_new.css'
              rel='stylesheet' type='text/css' />
    </head>
    <body class="body--custom-background-color ">
        <div class="banner" data-header="">
            <div class="wrap">
                <div class="shop logo logo--left ">
                    <h1 class="shop__name">
                        <a href="/">
                            polo-theme
                        </a>
                    </h1>
                </div>
            </div>
        </div>
        <section class="page-account">
            <div class="container">
                <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                    <h1>${messageSuc} ${messageSu}</h1>
                    <h3>Chúc mừng bạn thanh toán thành công.Xin vui lòng vào <a
                            href="https://mail.google.com">mail</a> để xem chi tiết!</h3>
                    <a class="btn blue"
                       href="${pageContext.request.contextPath}/homeFontEnd/getProductByPagging.htm">Tiếp tục mua hàng</a>

                </div>
            </div>
        </section>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/jquery.min.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/bootstrap.min.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/twine.min.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/validator.min.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/nprogress.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/money-helper.js'
        type='text/javascript'></script>
        <script src='/MyProject_JW1810LM/jsp/FontEnd/js/checkout_new_v2.js'
        type='text/javascript'></script>
    </body>
</html>
