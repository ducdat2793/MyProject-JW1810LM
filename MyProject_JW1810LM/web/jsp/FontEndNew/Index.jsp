<%-- 
    Document   : Index
    Created on : Sep 24, 2019, 6:13:42 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <jsp:include page="Head.jsp"></jsp:include>   

        <body class="cnt-home">

        <jsp:include page="Header.jsp"></jsp:include>

            <div class="body-content outer-top-vs" id="top-banner-and-menu">
                <div class="container">
                    <div class="row"> 
                        <!-- ============================================== SIDEBAR ============================================== -->
                        <div class="col-xs-12 col-sm-12 col-md-3 sidebar"> 

                            <!-- ================================== TOP NAVIGATION ================================== -->
                        <jsp:include page="TopNav.jsp"></jsp:include>  
                            <!-- ================================== TOP NAVIGATION : END ================================== -->  

                            <!-- ============================================== HOT DEALS ============================================== -->
                        <jsp:include page="HotDeal.jsp"></jsp:include>   
                            <!-- ============================================== HOT DEALS: END ============================================== -->   

                            <!-- ============================================== SPECIAL OFFER ============================================== -->
                        <jsp:include page="SpecialOffer.jsp"></jsp:include>            
                            <!-- ============================================== SPECIAL OFFER : END ============================================== --> 

                            <!-- ============================================== PRODUCT TAGS ============================================== -->
                        <jsp:include page="ProductTag.jsp"></jsp:include>   
                            <!-- ============================================== PRODUCT TAGS : END ============================================== --> 

                            <!-- ============================================== SPECIAL DEALS ============================================== -->
                        <jsp:include page="SpecialDeal.jsp"></jsp:include>             
                            <!-- ============================================== SPECIAL DEALS : END ============================================== --> 

                            <!-- ============================================== NEWSLETTER ============================================== -->
                        <jsp:include page="NewLetter.jsp"></jsp:include>        
                            <!-- ============================================== NEWSLETTER: END ============================================== --> 

                            <!-- ============================================== Testimonials============================================== -->
                        <jsp:include page="Testimonials.jsp"></jsp:include>          
                            <!-- ============================================== Testimonials: END ============================================== -->       

                            <div class="home-banner"> <img src="../jsp/FontEndNew/images/banners/LHS-banner.jpg" alt="Image"> </div>
                        </div>
                        <!-- /.sidemenu-holder --> 
                        <!-- ============================================== SIDEBAR : END ============================================== --> 

                        <!-- ============================================== CONTENT ============================================== -->
                        <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 

                            <!-- ========================================== SECTION – SLIDER ========================================= -->    
                        <jsp:include page="Slider.jsp"></jsp:include>   
                            <!-- ========================================= SECTION – SLIDER : END ========================================= --> 

                            <!-- ============================================== SCROLL TABS ============================================== -->
                        <jsp:include page="NewProduct.jsp"></jsp:include>  
                            <!-- ============================================== SCROLL TABS : END ============================================== --> 

                            <!-- ============================================== WIDE PRODUCTS ============================================== -->
                            <div class="wide-banners wow fadeInUp outer-bottom-xs">
                                <div class="row">
                                    <div class="col-md-7 col-sm-7">
                                        <div class="wide-banner cnt-strip">
                                            <div class="image"> <img class="img-responsive" src="../jsp/FontEndNew/images/banners/home-banner1.jpg" alt=""> </div>
                                        </div>
                                        <!-- /.wide-banner --> 
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-md-5 col-sm-5">
                                        <div class="wide-banner cnt-strip">
                                            <div class="image"> <img class="img-responsive" src="../jsp/FontEndNew/images/banners/home-banner2.jpg" alt=""> </div>
                                        </div>
                                        <!-- /.wide-banner --> 
                                    </div>
                                    <!-- /.col --> 
                                </div>
                                <!-- /.row --> 
                            </div>
                            <!-- /.wide-banners -->    
                            <!-- ============================================== WIDE PRODUCTS : END ============================================== --> 
                            <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                        <jsp:include page="DiscountProduct.jsp"></jsp:include>  
                            <!-- ============================================== FEATURED PRODUCTS : END ============================================== --> 

                            <!-- ============================================== WIDE PRODUCTS ============================================== -->
                            <div class="wide-banners wow fadeInUp outer-bottom-xs">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wide-banner cnt-strip">
                                            <div class="image"> <img class="img-responsive" src="../jsp/FontEndNew/images/banners/home-banner.jpg" alt=""> </div>
                                            <div class="strip strip-text">
                                                <div class="strip-inner">
                                                    <h2 class="text-right">Sách mới mùa đông 2019<br>
                                                        <span class="shopping-needs">Giảm giá 40% </span></h2>
                                                </div>
                                            </div>
                                            <div class="new-label">
                                                <div class="text">Mới</div>
                                            </div>
                                            <!-- /.new-label --> 
                                        </div>
                                        <!-- /.wide-banner --> 
                                    </div>
                                    <!-- /.col --> 

                                </div>
                                <!-- /.row --> 
                            </div>
                            <!-- /.wide-banners --> 

                        <jsp:include page="BestSellerProduct.jsp"></jsp:include> 

                        <jsp:include page="BlogSlider.jsp"></jsp:include>

                        <jsp:include page="MostViewProduct.jsp"></jsp:include>   
                        </div>
                        <!-- /.homebanner-holder --> 
                        <!-- ============================================== CONTENT : END ============================================== --> 
                    </div>
                    <!-- /.row --> 
                <jsp:include page="BrandSlider.jsp"></jsp:include>
                    <!-- /.logo-slider -->   
                </div>
                <!-- /.container --> 
            </div>
            <!-- /#top-banner-and-menu --> 
            <!-- ============================================================= FOOTER ============================================================= -->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- ============================================================= FOOTER : END============================================================= --> 
        <!-- For demo purposes – can be removed on production --> 
        <!-- For demo purposes – can be removed on production : End --> 
        <!-- JavaScripts placed at the end of the document so the pages load faster --> 
        <script src="../jsp/FontEndNew/js/jquery-1.11.1.min.js"></script> 
        <!-- 2 phien ban bootstrap 3.2.0 deu su dung duoc-->
        <!--<script src="../jsp/FontEndNew/js/bootstrap.min.js"></script>--> 
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
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
