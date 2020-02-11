<%-- 
    Document   : ProductBuyItems
    Created on : May 4, 2019, 8:37:15 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- middle slider -->
<section class="middle-slider container">
 <div class="row">
 <div class="col-md-6">
 <div class="bag-product-slider small-pr-slider cat-section">
 <div class="slider-items-products">
 <div class="new_title center">
 <h2>Sách bán chạy</h2>
 </div>
 <div id="bag-seller-slider" class="product-flexslider hidden-buttons
hidden_popup_cart">
 <div class="slider-items slider-width-col3">
 <c:forEach items="${listProductBuyItem}" var="buyItem">
 <div class="item">
 <div class="col-item">
 <div class="product-image-area">
 <a class="product-image" title="${buyItem.productName}"
href="">
 <img src="../jsp/FontEnd/images/${buyItem.images}" class="imgresponsive"
 alt="${buyItem.productName}" />
 </a>
 <form action="/cart/add" method="post" class="variants"
id="product-actions-830911"
 enctype="multipart/form-data">
 <div class="hover_fly">
 <a class="exclusive ajax_add_to_cart_button btn-cart
add_to_cart" href="#"
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
title="${buyItem.productName}"
href="">${buyItem.productName}</a></h3></div>
 <!--item-title-->
 <div class="item-content">
 <div class="price-box">
 <p class="special-price"> <span
class="price">${buyItem.price} </span> </p>
 </div>
 </div>
<!--item-content-->
 </div>
 <!--info-inner-->
 <form action="<%=request.getContextPath()%>/CartController/addCart.htm?id=${buyItem.productId}" method="post" class="variants"
id="product-actions-830911"
 enctype="multipart/form-data">
 <div class="actions">
 <input type="hidden" name="variantId" value="1273195" />
 <!--button btn-cart btn-cart add_to_cart-->
 <button class="" title="Cho
vào giỏ hàng"
 type="submit"><span>Cho vào giỏ hàng</span></button>
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
 <jsp:include page="ProductShare.jsp"></jsp:include>
 </div>
</section>
<!-- End middle slider -->
