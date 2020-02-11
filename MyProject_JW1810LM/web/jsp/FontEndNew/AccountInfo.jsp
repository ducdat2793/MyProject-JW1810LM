<%-- 
    Document   : AccountInfoEditing
    Created on : Oct 15, 2019, 4:23:31 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                </div>

                <div class="body-content">
                    <div class="container">
                        <div class="sign-in-page">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 sign-in">

                                    <h2>Thông tin tài khoản</h2>
                                    <table class="table table-striped table-bordered table-condensed">
                                        <tbody class="active">
                                            <tr>
                                                <td>Email đăng nhập: </td>
                                                <td>${accountInfo.email} </td>   
                                        </tr>
                                        <tr><td>Tên: </td>   
                                            <td>${accountInfo.userName} </td>
                                        </tr>
                                        <tr><td>Địa chỉ: </td>   
                                            <td>${accountInfo.address} </td>
                                        </tr>
                                        <tr> 
                                            <td>Số điện thoại:</td>   
                                            <td>${accountInfo.phone} </td> 
                                        </tr> 
                                    </tbody>
                                </table>   
                                <a class="btn-upper btn btn-primary checkout-page-button" href="${pageContext.request.contextPath}/homeFontEnd/initEditAccountInfo.htm">
                                    Sửa thông tin tài khoản</a>

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
