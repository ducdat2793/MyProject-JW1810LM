<%-- 
    Document   : Contact
    Created on : Nov 4, 2019, 6:19:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ</title>
        <jsp:include page="Head.jsp"></jsp:include>  
            <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" type="text/css"/>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>  

        </head>
        <body>
        <jsp:include page="Header.jsp"></jsp:include>  
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                        <li class='active'>Liên hệ</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <div class="body-content">
            <div class="container">
                <div class="contact-page">
                    <div class="row">
                        <div class="col-md-12 contact-map outer-bottom-vs">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.3808031019744!2d105.88148371542971!3d20.97
                                    7367186026218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ae9916f075ff%3A0xd6b2711a50a6ff21!2zVM
                                    OieSBUcsOgLCBIb8OgbmcgTWFpLCBIw6AgTuG7mWksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1572920612004!5m2!1sen!2s"
                                    width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="">                           
                            </iframe>
                          
                        </div>
                        <div class="col-md-9 contact-form">
                            <div class="col-md-12 contact-title">
                                <h4>Contact Form</h4>
                            </div>
                            <br><br>
                             <div class="alert alert-info" id="message"> ${tb}</div>   
                               <script>
                                var ms = document.getElementById("message").value;
                                if (ms == null) {
                                    var x = document.getElementById("message");
                                    x.getAttributeNode("class").value = "";

                                }
                                if (ms == [[${tb}]] ) {
                                    var x = document.getElementById("message");
                                    x.getAttributeNode("class").value = "alert alert-info";
                                }
                            </script>
                            <f:form action="${pageContext.request.contextPath}/navBar/confirmFeeback.htm" class="register-form" role="form" commandName="feeback">                               
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputName">Tên của bạn <span>*</span></label>
                                        <f:input type="text" class="form-control unicase-form-control text-input" id="name" path="name" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputEmail1">Địa chỉ Email <span>*</span></label>
                                        <f:input type="email" class="form-control unicase-form-control text-input" id="email" path="email"/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputTitle">Tiêu đề <span>*</span></label>
                                        <f:input type="text" class="form-control unicase-form-control text-input" id="title" placeholder="Tiêu đề" path="title"/>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputComments">Nhận xét của bạn <span>*</span></label>
                                        <f:textarea class="form-control unicase-form-control" id="content" path="content"></f:textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 outer-bottom-small m-t-20">
                                    <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Gửi tin</button>
                                </div>
                            </f:form>
                        </div>
                        <div class="col-md-3 contact-info">
                            <div class="contact-title">
                                <h4>Thông tin</h4>
                            </div>
                            <div class="clearfix address">
                                <span class="contact-i"><i class="fa fa-map-marker"></i></span>
                                <span class="contact-span">BAKP Hoàng Quốc Việt</span>
                            </div>
                            <div class="clearfix phone-no">
                                <span class="contact-i"><i class="fa fa-mobile"></i></span>
                                <span class="contact-span">+(84) 123-4567<br>+(84) 456-7890</span>
                            </div>
                            <div class="clearfix email">
                                <span class="contact-i"><i class="fa fa-envelope"></i></span>
                                <span class="contact-span"><a href="#">testMail@gmail.com</a></span>
                            </div>
                        </div>
                    </div> <!-- /.row -->
                </div> <!-- /.contact page -->                
            </div> <!-- /.containter -->  
        </div>   <!-- /.body content -->
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
