<%-- 
    Document   : ProductNew.jsp
    Created on : Apr 20, 2019, 5:12:24 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section class="main-container col1-layout home-content-container">
 <div class="container">
 <div class="std">
 <div class="best-seller-pro">
 <div class="slider-items-products">
 <div class="new_title center">
 <h2>Sách mới</h2>
 </div>
 <div id="best-seller-slider" class="product-flexslider hidden-buttons
hidden_btn_cart">
 <div class="slider-items slider-width-col4">
 <c:forEach items="${listProductNew}" var="productNew">
 <div class="item">
 <div class="col-item">
 <div class="product-image-area">
 <a class="product-image" title="${productNew.productName}"
href="<%=request.getContextPath()%>/homeFontEnd/productDetail.htm?Id=${productNew.productId}">
 <img src="../jsp/FontEnd/images/${productNew.images}" class="imgresponsive"
 alt="${productNew.productName}" /> </a>
 <form action="" method="post" class="variants "
id="product-actions-830911"
 enctype="multipart/form-data">
 <div class="hover_fly">
     <!--class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"--> 
 <a  href="<%=request.getContextPath()%>/CartController/addCart.htm?id=${productNew.productId}" 
 title="Cho vào giỏ hàng">
     <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ
hàng</span></div>
 </a>
<input type="hidden" name="variantId" value="1273195" />
 </div>
 </form>
 </div>
 <div class="info">
 <div class="info-inner">
 <div class="item-title"> <h3><a
title="${productNew.productName}"

href="">${productNew.productName}</a></h3></div>
 <div class="item-content">
 <div class="price-box">
 <p class="special-price"> <span
class="price">${productNew.price} </span> </p>
 </div>
 </div>
 </div>
 <!--class="button btn-cart btn-cart add_to_cart"-->
 <form action="<%=request.getContextPath()%>/CartController/addCart.htm?id=${productNew.productId}" method="post" class="variants "
id="product-actions-830911"
 enctype="multipart/form-data">
 <div class="actions">
 <input type="hidden" name="variantId" value="1273195" />
 <button type="submit"  title="Cho
vào giỏ hàng"
 type="button"><span>Cho vào giỏ hàng</span></button>
 </div>
 </form>
 <div class="clearfix"> </div>
 </div>
 </div>
 </div>
 </c:forEach>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
</section>