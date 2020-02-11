<%-- 
    Document   : SpecialDeal
    Created on : Sep 24, 2019, 6:43:16 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar-widget outer-bottom-small wow fadeInUp">
    
    
    <h3 class="section-title">Ưu đãi đặc biệt</h3>
    <div class="sidebar-widget-body outer-top-xs">
        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
            <div class="item">
                <div class="products special-product">
                    <c:forEach items="${listProductDiscount}" var = "pro" >   
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
    <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">
                                                    <img src="../jsp/FontEndNew/images/products/${pro.images}"  alt=""> </a> </div>
                                            <!-- /.image --> 

                                        </div>
                                        <!-- /.product-image --> 
                                    </div>
                                    <!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name">
       <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">${pro.productName}</a>
                                            </h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price"> <span class="price">  ${pro.priceDiscount} đ </span> </div>
                                            <!-- /.product-price --> 

                                        </div>
                                    </div>
                                    <!-- /.col --> 
                                </div>
                                <!-- /.product-micro-row --> 
                            </div>
                            <!-- /.product-micro --> 

                        </div>
                    </c:forEach>   
                </div>
            </div>                  
        </div>
    </div>
    <!-- /.sidebar-widget-body --> 
</div>