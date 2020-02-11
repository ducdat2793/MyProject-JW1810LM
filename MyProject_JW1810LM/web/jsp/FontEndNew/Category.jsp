<%-- 
    Document   : Category
    Created on : Oct 1, 2019, 8:24:09 PM
    Author     : Administrator
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="Head.jsp"></jsp:include> 

        <body>
        <jsp:include page="Header.jsp"></jsp:include>  

            <!--bread crum-->
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                  
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm"><h5>Trang chủ  \</h5></a></li>
                        <li class="active"><h5>${category.categoryName}</h5></li>
                    </ul>
                      
                </div>
                <!-- /.breadcrumb-inner --> 
            </div>
            <!-- /.container --> 
        </div>
        <!--/bread crum-->               

        <div class="container">
            <div class="row"> 

                <div class="col-xs-12 col-sm-12 col-md-3 sidebar">                       
                    <jsp:include page="TopNav.jsp"></jsp:include>      
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 
                        <!--sort-->
                        <div class="clearfix filters-container m-t-10">
                            <div class="row">
                                <div class="col col-sm-6 col-md-2">
                                    <div class="filter-tabs">
                                        <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                            <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                                            <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>List</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.filter-tabs --> 
                                </div>
                                <!-- /.col -->
                                <div class="col col-sm-12 col-md-6">
                                    <div class="col col-sm-3 col-md-6 no-padding">
                                        <div class="lbl-cnt"> <span class="lbl">Sắp xếp</span>
                                            <div class="fld inline">
                                                <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                    <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> Vị trí <span class="caret"></span> </button>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li role="presentation"><a href="#">Vị trí</a></li>
                                                        <li role="presentation"><a href="#">Giá:Thấp nhất</a></li>
                                                        <li role="presentation"><a href="#">Giá:Cao nhất</a></li>
                                                        <li role="presentation"><a href="#">Tên sách:A - Z</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- /.fld --> 
                                        </div>
                                        <!-- /.lbl-cnt --> 
                                    </div>
                                    <!-- /.col -->
                                    <div class="col col-sm-3 col-md-6 no-padding">
                                        <div class="lbl-cnt"> <span class="lbl">Hiển thị</span>
                                            <div class="fld inline">
                                                <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                    <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">  ${sizeRowofPage} <span class="caret"></span> </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=1">1</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=2">2</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=3">3</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=4">4</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=5">5</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=6">6</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=7">7</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=8">8</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=9">9</a></li>
                                                    <li role="presentation"><a href="${pageContext.request.contextPath}/padging/getProductByCatalogIdDrop.htm?Id=${categoryId}&page=${page}&pageSize=10">10</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- /.fld --> 
                                    </div>
                                    <!-- /.lbl-cnt --> 
                                </div>
                                <!-- /.col --> 
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-6 col-md-4 text-right">
                                <div class="pagination-container">
                                    <ul class="list-inline list-unstyled">
                                        <h4>${url}</h4>  
                                    </ul>
                                    <!-- /.list-inline --> 
                                </div>

                                <!-- /.pagination-container --> </div>

                            <!-- /.col --> 
                        </div>
                        <!-- /.row --> 
                    </div>
                    <!--/sort-->
                    <!--product-->
                    <div class="search-result-container ">
                        <div id="myTabContent" class="tab-content category-list">
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product">                                  
                                    <div class="row">
                                        <c:forEach items="${listProduct}" var = "pro" >  
                                            <div class="col-sm-4 col-md-2 wow fadeInUp">
                                                <div class="products">
                                                    <div class="product">
                                                        <div class="product-image">
                                                            <div class="image"> 
                                                                <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">
                                                                    <img  src="../jsp/FontEndNew/images/products/${pro.images}" alt=""></a> 
                                                            </div>
                                                            <!-- /.image -->
                                                            <div class="tag new"><span>new</span></div>
                                                        </div>
                                                        <!-- /.product-image -->
                                                        <div class="product-info text-left">
                                                            <h3 class="name"><a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">${pro.productName}</a></h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="description"></div>
                                                            <div class="product-price"> <span class="price"> ${pro.priceDiscount} đ </span> <span class="price-before-discount">${pro.price}đ</span> </div>
                                                            <!-- /.product-price --> 
                                                        </div>
                                                        <!-- /.product-info -->
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                                    <li class="add-cart-button btn-group">
                                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                    </li>
                                                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                                                </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product --> 
                                                </div>
                                                <!-- /.products --> 
                                            </div>  </c:forEach>    
                                            <!-- /.item -->             
                                        </div>

                                        <!-- /.row --> 
                                    </div>
                                    <!-- /.category-product --> 
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <!--/product-->
                        </div>
                    </div>

                </div>
            <jsp:include page="BrandSlider.jsp"></jsp:include>
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

