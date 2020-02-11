<%-- 
    Document   : ProductShare
    Created on : May 1, 2019, 6:04:08 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-md-6">
    <div class="shoes-product-slider small-pr-slider cat-section">
        <div class="slider-items-products">
            <div class="new_title center">
                <h2>Sách khuyến mại</h2>
            </div>
            <div id="shoes-slider" class="product-flexslider hidden-buttons hidden_popup_cart">
                <div class="slider-items slider-width-col3">
                    <c:forEach items="${listProductShare}" var="productShare">
                        <div class="item">
                            <div class="col-item">
                                <div class="product-image-area">
                                    <a class="product-image" title="${productShare.productName}"
                                       href="">
                                        <img src="../jsp/FontEnd/images/${productShare.images}" class="imgresponsive"
                                             alt="${productShare.productName}" /> </a>

                                    <form action="/cart/add" method="post" class="variants" id="productactions-830918"
                                          enctype="multipart/form-data">
                                        <div class="hover_fly">
                                            
                                            <a class="-exclusive ajax_add_to_cart_button btn-cart add_to_cart" href="" 
                                               title="Cho vào giỏ hàng">
                                                <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ
                                                        hàng</span></div>
                                            </a>
                                            <input type="hidden" name="variantId" value="1273200" />
                                        </div>
                                    </form>
                                </div>
                                <div class="info">
                                    <div class="info-inner">
                                        <div class="item-title"> <h3><a
                                                    title="${productShare.productName}"
                                                    href="">${productShare.productName}</a></h3></div>
                                        <div class="item-content">
                                            <div class="price-box">
                                                <p class="special-price"> <span
                                                        class="price">${productShare.price}</span> </p>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="<%=request.getContextPath()%>/CartController/addCart.htm?id=${productShare.productId}" method="post" class="variants" id="productactions-830918"
                                          enctype="multipart/form-data">
                                        <div class="actions">
                                            <input type="hidden" name="variantId" value="1273200" />
                                           <!--button btn-cart btn-cart add_to_cart-->
                                            <button class="" title="Cho vào giỏ hàng"
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
