<%-- 
    Document   : DiscountProduct
    Created on : Sep 24, 2019, 6:51:58 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section class="section featured-product wow fadeInUp">
          <h3 class="section-title">Sản phẩm khuyến mãi</h3>
          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
              
              <!--vong lap hien thi danh sach san pham khuyen mai-->
              <c:forEach items="${listProductDiscount}" var = "pro" >     
                  <div class="item item-carousel">
                      <div class="products">
                          <div class="product">
                              <div class="product-image">
    <div class="image"> <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">
                                          <img  src="../jsp/FontEndNew/images/products/${pro.images}" alt=""></a> </div>
                                  <!-- /.image -->
                                  <div class="tag hot"><span>-${pro.discount}%</span></div>
                              </div>
                              <!-- /.product-image -->

                              <div class="product-info text-left">
                                  <h3 class="name"><a href="detail.html">${pro.productName}</a></h3>
                                  <div class="rating rateit-small"></div>
                                  <div class="description"></div>
                                  <div class="product-price"> <span class="price"> ${pro.priceDiscount} đ </span>
                                      <span class="price-before-discount">${pro.price}</span> </div>
                                  <!-- /.product-price --> 

                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                  <div class="action">
                                      <ul class="list-unstyled">
                                          <li class="add-cart-button btn-group">
                                              <button onclick="location.href='${pageContext.request.contextPath}/CartController/addCart.htm?Id=${pro.productId}' "
                                                  class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                          </li>
                                          <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                          <li class="lnk"> 
 <a class="add-to-cart" href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}" title="Compare"> 
                                                  <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                  </div>
                                  <!-- /.action --> 
                              </div>
                              <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                      </div>
                      <!-- /.products --> 
                  </div>
              </c:forEach>  
          </div>
          <!-- /.home-owl-carousel --> 
        </section>
