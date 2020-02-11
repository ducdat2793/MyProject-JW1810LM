<%-- 
    Document   : ProductDetail
    Created on : Sep 29, 2019, 11:59:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <jsp:include page="Head.jsp"></jsp:include> 

        <body class="cnt-home">    
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ \</a></li>
                        <li><a href="#">Chi tiết sản phẩm \</a></li>
                        <li class='active'>${product.productName}</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->


        <div class="body-content outer-top-xs">
            <div class='container'>           
                <div class='row single-product'>
                    <!--side bar-->
                    <div class="col-xs-12 col-sm-12 col-md-3 sidebar"> 
                        <jsp:include page="HotDeal.jsp"></jsp:include> 
                        <jsp:include page="NewLetter.jsp"></jsp:include>    
                        </div>
                        <!--/side bar-->    
                        <div class='col-md-9'>
                            <div class="detail-block">
                                <!--THÔNG TIN SẢN PHẨM CHO TẤT CẢ CÁC MỤC-->
                                <div class="row  wow fadeInUp">
                                    <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                                        <div class="product-item-holder size-big single-product-gallery small-gallery">

                                            <div id="owl-single-product">
                                                <!-- slide ảnh lớn-->                                    
                                                <div class="single-product-gallery-item" id="slide1">
                                                    <a data-lightbox="image-1" data-title="Gallery" href="assets/images/products/p8.jpg">
                                                        <img class="img-responsive" alt="" src="assets/images/blank.gif" data-echo="../jsp/FontEndNew/images/products/${product.images}" />
                                                </a>
                                            </div><!-- /.single-product-gallery-item -->
                                            <!-- kết thúc slide ảnh lớn-->                                   

                                        </div><!-- /.single-product-slider -->


                                        <div class="single-product-gallery-thumbs gallery-thumbs">

                                            <div id="owl-single-product-thumbnails">

                                                <!-- slide ảnh nhỏ-->
                                                <div class="item">
                                                    <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="1" href="#slide1">
                                                        <img class="img-responsive" width="85" alt="" src="assets/images/blank.gif" data-echo="../jsp/FontEndNew/images/products/${product.images}" />
                                                    </a>
                                                </div>
                                                <!--kết thúc slide ảnh nhỏ-->   
                                            </div><!-- /#owl-single-product-thumbnails -->
                                        </div><!-- /.gallery-thumbs -->

                                    </div><!-- /.single-product-gallery -->
                                </div><!-- /.gallery-holder -->        			
                                <div class='col-sm-6 col-md-7 product-info-block'>

                                    <!--vòng lặp thông tin sản phẩm-->
                                    <div class="product-info">        
                                        <h1 class="name">${product.productName}</h1>

                                        <div class="rating-reviews m-t-20">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="rating rateit-small"></div>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div class="reviews">
                                                        <a href="#" class="lnk">(13 Reviews)</a>
                                                    </div>
                                                </div>
                                            </div><!-- /.row -->		
                                        </div><!-- /.rating-reviews -->

                                        <div class="stock-container info-container m-t-10">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="stock-box">
                                                        <span class="label">Trạng thái :</span>
                                                    </div>	
                                                </div>
                                                <div class="col-sm-9">
                                                    <div class="stock-box">
                                                        <span class="value">${quantityAvailable}</span>
                                                    </div>	
                                                </div>
                                            </div><!-- /.row -->	
                                        </div><!-- /.stock-container -->

                                        <div class="description-container m-t-20">
                                            ${product.content}
                                        </div><!-- /.description-container -->

                                        <div class="price-container info-container m-t-20">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="price-box">
                                                        <span class="price"> ${product.priceDiscount} đ</span>
                                                        <span class="price-strike">${product.price}</span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="favorite-button m-t-10">
                                                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
                                                            <i class="fa fa-heart"></i>
                                                        </a>
                                                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                                                            <i class="fa fa-signal"></i>
                                                        </a>
                                                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                                                            <i class="fa fa-envelope"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div><!-- /.row -->
                                        </div><!-- /.price-container -->

                                        <div class="quantity-container info-container">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <span class="label">Số lượng :</span>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="cart-quantity">
                                                        <div class="quant-input">
                                                            <div class="arrows">
                                                                <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                                                                <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                                                            </div>
                                                            <input type="text" value="1">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-sm-7">
                                                    <a href="<%=request.getContextPath()%>/CartController/addCart.htm?Id=${product.productId}" class="btn btn-primary">
                                                        <i class="fa fa-shopping-cart inner-right-vs"></i> THÊM VÀO GIỎ HÀNG</a>
                                                </div>
                                            </div><!-- /.row -->
                                        </div><!-- /.quantity-container -->

                                    </div><!-- /.product-info -->

                                    <!--KẾT THÚC THÔNG TIN CHI TIẾT SẢN PHẨM-->
                                </div><!-- /.col-sm-7 -->
                            </div><!-- /.row -->
                            <!--KẾT THÚC VÒNG LẶP THÔNG TIN SẢN PHẨM CHO TẤT CẢ CÁC MỤC-->
                            <!-- /detail block -->
                        </div>

                        <div class="product-tabs inner-bottom-xs  wow fadeInUp">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                                        <li class="active"><a data-toggle="tab" href="#description">MÔ TẢ SÁCH</a></li>
                                        <li><a data-toggle="tab" href="#review">ĐÁNH GIÁ</a></li>
                                        <li><a data-toggle="tab" href="#tags">TAGS</a></li>
                                    </ul><!-- /.nav-tabs #product-tabs -->
                                </div>
                                <div class="col-sm-9">

                                    <div class="tab-content">

                                        <div id="description" class="tab-pane in active">
                                            <div class="product-tab">
                                                <p class="text">${product.content}</p>
                                            </div>	
                                        </div><!-- /.tab-pane -->

                                        <div id="review" class="tab-pane">
                                            <div class="product-tab">

                                                <div class="product-reviews">
                                                    <h4 class="title">Đánh giả của khách hàng</h4>

                                                    <div class="reviews">
                                                        <div class="review">
                                                            <div class="review-title"><span class="summary">We love this product</span><span class="date"><i class="fa fa-calendar"></i><span>1 days ago</span></span></div>
                                                            <div class="text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit.Aliquam suscipit."</div>
                                                        </div>

                                                    </div><!-- /.reviews -->
                                                </div><!-- /.product-reviews -->



                                                <div class="product-add-review">
                                                    <h4 class="title">Viết đánh giá của bạn</h4>
                                                    <div class="review-table">
                                                        <div class="table-responsive">
                                                            <table class="table">	
                                                                <thead>
                                                                    <tr>
                                                                        <th class="cell-label">&nbsp;</th>
                                                                        <th>1 sao</th>
                                                                        <th>2 sao</th>
                                                                        <th>3 sao</th>
                                                                        <th>4 sao</th>
                                                                        <th>5 stars</th>
                                                                    </tr>
                                                                </thead>	
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="cell-label">Quality</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Price</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Value</td>
                                                                        <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table><!-- /.table .table-bordered -->
                                                        </div><!-- /.table-responsive -->
                                                    </div><!-- /.review-table -->

                                                    <div class="review-form">
                                                        <div class="form-container">
                                                            <form role="form" class="cnt-form">

                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="exampleInputName">Tên của bạn <span class="astk">*</span></label>
                                                                            <input type="text" class="form-control txt" id="exampleInputName" placeholder="">
                                                                        </div><!-- /.form-group -->
                                                                        <div class="form-group">
                                                                            <label for="exampleInputSummary">Tóm tắt <span class="astk">*</span></label>
                                                                            <input type="text" class="form-control txt" id="exampleInputSummary" placeholder="">
                                                                        </div><!-- /.form-group -->
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="exampleInputReview">Đánh giá <span class="astk">*</span></label>
                                                                            <textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" placeholder=""></textarea>
                                                                        </div><!-- /.form-group -->
                                                                    </div>
                                                                </div><!-- /.row -->

                                                                <div class="action text-right">
                                                                    <button class="btn btn-primary btn-upper">XÁC NHẬN</button>
                                                                </div><!-- /.action -->

                                                            </form><!-- /.cnt-form -->
                                                        </div><!-- /.form-container -->
                                                    </div><!-- /.review-form -->

                                                </div><!-- /.product-add-review -->										

                                            </div><!-- /.product-tab -->
                                        </div><!-- /.tab-pane -->

                                        <div id="tags" class="tab-pane">
                                            <div class="product-tag">

                                                <h4 class="title">Tags sản phẩm</h4>
                                                <form role="form" class="form-inline form-cnt">
                                                    <div class="form-container">
                                                        <div class="form-group">
                                                            <label for="exampleInputTag">Thêm Tag của bạn: </label>
                                                            <input type="email" id="exampleInputTag" class="form-control txt">
                                                        </div>
                                                        <button class="btn btn-upper btn-primary" type="submit">THÊM TAGS</button>
                                                    </div><!-- /.form-container -->
                                                </form><!-- /.form-cnt -->

                                                <form role="form" class="form-inline form-cnt">
                                                    <div class="form-group">
                                                        <label>&nbsp;</label>
                                                        <span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
                                                    </div>
                                                </form><!-- /.form-cnt -->

                                            </div><!-- /.product-tab -->
                                        </div><!-- /.tab-pane -->

                                    </div><!-- /.tab-content -->
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                        </div><!-- /.product-tabs -->
                        
                        <jsp:include page="RelateProduct.jsp"></jsp:include> 
                        </div><!-- /.col -->
                        <div class="clearfix"></div>
                    </div><!-- /.row -->
                <jsp:include page="BrandSlider.jsp"></jsp:include>
                </div><!-- /.container -->
            </div><!-- /.body-content -->


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