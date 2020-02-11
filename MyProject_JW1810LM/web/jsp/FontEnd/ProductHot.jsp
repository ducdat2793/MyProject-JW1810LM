<%-- 
    Document   : ProductHot.jsp
    Created on : Apr 20, 2019, 5:12:44 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Featured Slider -->
<section class="featured-pro container">
 <div class="slider-items-products">
 <div class="new_title center">
 <h2>Sách nổi bật</h2>
 </div>
 <div id="featured-slider" class="product-flexslider hidden-buttons hidden_popup_cart">
 <div class="slider-items slider-width-col4">
 <c:forEach items="${listProductHot}" var="productHot">
 <div class="item">
 <div class="col-item">
 <div class="product-image-area">
 <a class="product-image" title="${productHot.productName}" href="">
 <img src="../jsp/FontEnd/images/${productHot.images}" class="imgresponsive"
 alt="${productHot.productName}" />
 </a>
 <form action="" method="post" class="variants" id="productactions-830910"
 enctype="multipart/form-data">
 <div class="hover_fly">
 <a class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
href="" title="Cho vào giỏ hàng">
 <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ hàng</span></div>
 </a>
 <input type="hidden" name="variantId" value="1273197" />
 </div>
 </form>
 </div>
 <div class="info">
 <div class="info-inner">
 <div class="item-title"> <h3><a title="${productHot.productName}"
 href="">${productHot.productName}</a></h3></div>
 <div class="item-content">
 <div class="price-box">
 <p class="special-price"> <span
class="price">${productHot.price}</span> </p>
 </div>
 </div>
 </div>
 <form action="<%=request.getContextPath()%>/CartController/addCart.htm?id=${productHot.productId}" method="post" class="variants" id="productactions-830910"
 enctype="multipart/form-data">
 <div class="actions">
     <!--class="button btn-cart btn-cart add_to_cart"-->
 <input type="hidden" name="variantId" value="1273197" />
 <button type="submit"  title="Cho vào
giỏ hàng"
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
</section>