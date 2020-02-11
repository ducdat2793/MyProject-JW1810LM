<%-- 
    Document   : NewProduct
    Created on : Sep 24, 2019, 6:49:36 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>




<div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
    <div class="more-info-tab clearfix ">
        <h3 class="new-product-title pull-left">Sản phẩm mới</h3> 
    </div>
    <div class="tab-content outer-top-xs">
        <div class="tab-pane in active" id="all">
            <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                    <c:forEach items="${listProductNew}" var = "pro" >  
                        <!--lay id cho wishlist bang ajax-->
                        <p id="proId" hidden>${pro.productId}</p>

                        <div class="item item-carousel">
                            <%--<c:forEach items="${listCategory1}" var = "category" >--%>   
                            <div class="products">
                                <div class="product">

                                    <div class="product-image">
                                        <div class="image"> 
                                            <a href="${pageContext.request.contextPath}/homeFontEnd/productDetail.htm?Id=${pro.productId}&categoryId=${pro.categoryId}">
                                                <img  src="../jsp/FontEndNew/images/products/${pro.images}" alt=""></a> </div>
                                        <!-- /.image -->
                                        <div class="tag new"><span>new</span></div>
                                    </div>
                                    <!-- /.product-image -->
                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="detail.html">${pro.productName}</a></h3>                                    
                                        <div class="rating rateit-small"></div>
                                        <div class="description">Còn : ${pro.quantity} </div>
                                        <div class="product-price"> <span class="price"> ${pro.priceDiscount} đ</span> <span class="price-before-discount">${pro.price}đ</span> </div>
                                        <!-- /.product-price --> 
                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button onclick="location.href = '${pageContext.request.contextPath}/CartController/addCart.htm?Id=${pro.productId}'" class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Thêm vào giỏ hàng"> 
                                                        <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist">
                                                    <!--href="${pageContext.request.contextPath}/wishList/addnew.htm?Id=${pro.productId}"-->
                                                    <!-- onClick="sendInfo()"-->
                                                    <a href="${pageContext.request.contextPath}/wishList/addnew.htm?Id=${pro.productId}" class="add-to-cart" title="Wishlist">
                                                        <i class="icon fa fa-heart"></i> </a> </li>  

                                                <!--start-->
                                                <li class="lnk wishlist">

                                                    <!-- onClick="sendInfo()"-->
                                                    <a onClick="sendInfo()" class="add-to-cart" title="Wishlist">
                                                        <i class="icon fa fa-heart"></i>1 </a> </li>        
                                                <!--end-->

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
                    <!-- /.item --> 
                </div>
                <!-- /.home-owl-carousel --> 
            </div>
            <!-- /.product-slider --> 
        </div>
    </div>
    <!-- /.tab-content --> 
</div>
<script>

    function sendInfo() {
        var Id = document.getElementById('proId').innerHTML;
        var url = "http://localhost:8080/MyProject_JW1810LM/wishList/addnew.htm?Id=" + Id;
        alert(url);
        $.load(url, {Id: Id}, callback);
        function callback() {
            alert("Kết thúc quá trình.");
        }
    }


</script>
