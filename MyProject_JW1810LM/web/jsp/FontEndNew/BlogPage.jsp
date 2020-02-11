<%-- 
    Document   : BlogPage
    Created on : Nov 7, 2019, 11:06:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tin tức</title>
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
                        <li class='active'>Tin tức</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <div class="body-content">
            <div class="container">
                <div class="row">
                    <div class="blog-page">
                        <div class="col-md-9">
                            <div class="blog-post  wow fadeInUp">
                                <a href="blog-details.html"><img class="img-responsive" src="../jsp/FontEndNew/images/blog-post/blog_big_01.jpg" alt=""></a>
                                <h1><a href="blog-details.html">Tin 01</a></h1>
                                <span class="author">Tên tác giả</span>
                                <span class="review">Số lượng Comments</span>
                                <span class="date-time">14/06/2016 10.00AM</span>
                                <p>Nội dung tin tức...</p>
                                <a href="#" class="btn btn-upper btn-primary read-more">Xem thêm</a>
                            </div>
                            <div class="blog-post outer-top-bd  wow fadeInUp">
                                <a href="blog-details.html"><img class="img-responsive" src="../jsp/FontEndNew/images/blog-post/blog_big_02.jpg" alt=""></a>
                                <h1><a href="blog-details.html">Tin 02</a></h1>
                                <span class="author">Sarah Smith</span>
                                <span class="review">6 Comments</span>
                                <span class="date-time">20/06/2016 11.00AM</span>
                                <p>Nội dung tin tức...</p>
                                <a href="#" class="btn btn-upper btn-primary read-more">Xem thêm</a>
                            </div>
                            <div class="clearfix blog-pagination filters-container  wow fadeInUp" style="padding:0px; background:none; box-shadow:none; margin-top:15px; border:none">

                                <div class="text-right">
                                    <div class="pagination-container">
                                        <ul class="list-inline list-unstyled">
                                            <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                            <li><a href="#">1</a></li>	
                                            <li class="active"><a href="#">2</a></li>	
                                            <li><a href="#">3</a></li>	
                                            <li><a href="#">4</a></li>	
                                            <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                        </ul><!-- /.list-inline -->
                                    </div><!-- /.pagination-container -->    </div><!-- /.text-right -->
                            </div><!-- /.filters-container -->				
                        </div>  <!--</col-md-9>-->
                        <div class="col-md-3 sidebar">

                            <jsp:include page="TopNav.jsp"></jsp:include> 
                                <div class="sidebar-widget outer-bottom-xs wow fadeInUp">
                                    <h3 class="section-title">Thanh công cụ</h3>
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#popular" data-toggle="tab">Tin phổ biến</a></li>
                                        <li><a href="#recent" data-toggle="tab">Tin mới</a></li>
                                    </ul>
                                    <div class="tab-content" style="padding-left:0">
                                        <div class="tab-pane active m-t-20" id="popular">
                                            <div class="blog-post inner-bottom-30 " >
                                                <img class="img-responsive" src="../jsp/FontEndNew/images/blog-post/blog_big_01.jpg" alt="">
                                                <h4><a href="blog-details.html">Tin 01</a></h4>
                                                <span class="review">Số lượng comment</span>
                                                <span class="date-time">12/06/16</span>
                                                <p>Nội dung...</p>			
                                            </div>
                                            <div class="blog-post" >
                                                <img class="img-responsive" src="../jsp/FontEndNew/images/blog-post/blog_big_02.jpg" alt="">
                                                <h4><a href="blog-details.html">Tin 02</a></h4>
                                                <span class="review">Số lượng comment</span>
                                                <span class="date-time">23/06/16</span>
                                                <p>Nội dung...</p>
                                            </div>
                                        </div>
                                        <div class="tab-pane m-t-20" id="recent">
                                            <div class="blog-post inner-bottom-30" >
                                                <img class="img-responsive" src="../jsp/FontEndNew/images/blog-post/blog_big_03.jpg" alt="">
                                                <h4><a href="blog-details.html">Tin 03</a></h4>
                                                <span class="review">Số lượng comment</span>
                                                <span class="date-time">5/06/16</span>
                                                <p>Nội dung...</p>			
                                            </div>
                                        </div>
                                        <div class="sidebar-widget product-tag wow fadeInUp">
                                            <h3 class="section-title">Tags sản phẩm</h3>
                                            <div class="sidebar-widget-body outer-top-xs">
                                                <div class="tag-list">					
                                                    <a class="item" title="Phone" href="category.html">Sách lịch sử</a>
                                                    <a class="item active" title="Vest" href="category.html">Sách văn học</a>
                                                    <a class="item" title="Smartphone" href="category.html">Tiểu thuyết hành động phiêu lưu</a>
                                                    <a class="item" title="Furniture" href="category.html">Tiều thuyết kinh dị</a>                                                                    
                                                </div><!-- /.tag-list -->
                                            </div><!-- /.sidebar-widget-body -->
                                        </div><!-- /.sidebar-widget -->
                                        <!--/product tag-->  
                                    </div>
                                </div>
                                <!--product tag-->                       
                            </div>
                        </div>
                    </div>
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
