<%-- 
    Document   : HotDealNav
    Created on : Sep 24, 2019, 6:40:11 PM
    Author     : Administrator
--%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
    <h3 class="section-title">Khuyến mãi lớn</h3>

    <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
        <c:forEach items="${listProductDiscount}" var = "pro" >     
            <div class="item">
                <div class="products">
                    <div class="hot-deal-wrapper">
                        <div class="image"> <img src="../jsp/FontEndNew/images/products/${pro.images}" alt=""> </div>
                        <div class="sale-offer-tag"><span>${pro.discount}%<br>
                                off</span></div>
                        <div class="timing-wrapper">
                            <div class="box-wrapper">
                                <div class="date box"> <span class="key">120</span> <span class="value">DAYS</span> </div>
                            </div>
                            <div class="box-wrapper">
                                <div class="hour box"> <span class="key">20</span> <span class="value">HRS</span> </div>
                            </div>
                            <div class="box-wrapper">
                                <div class="minutes box"> <span class="key">36</span> <span class="value">MINS</span> </div>
                            </div>
                            <div class="box-wrapper hidden-md">
                                <div class="seconds box"> <span class="key">60</span> <span class="value">SEC</span> </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.hot-deal-wrapper -->

                    <div class="product-info text-left m-t-20">
                        <h3 class="name">
    <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">
                                ${pro.productName}</a>
                        </h3>
                        <div class="rating rateit-small" ></div>
                        <div class="product-price"> <span class="price">  ${pro.priceDiscount} đ </span> 
                            <span class="price-before-discount">${pro.price}</span> </div>
                        <!-- /.product-price -->                   
                    </div>
                    <!-- /.product-info -->

                    <div class="cart clearfix animate-effect">
                        <div class="action">
                            <div class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <!-- /.action --> 
                    </div>
                    <!-- /.cart --> 
                </div>
            </div>

        </c:forEach>  
    </div>

    <!-- /.sidebar-widget --> 
</div>
