<%-- 
    Document   : Product
    Created on : Jul 24, 2019, 8:43:10 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="vi">
    <jsp:include page="Head.jsp"></jsp:include>
        <body class="" >
            <div class="page">
            <jsp:include page="Header.jsp"></jsp:include>
            <jsp:include page="Menu.jsp"></jsp:include>
                <div class="breadcrumbs">
                    <div class="container">
                        <div class="row">
                            <ul>
                                <li class="home"> <a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm" title="Trang chủ">Trang chủ</a><span>—
                                        ›</span></li>
                                <li ><strong>Tất cả đầu sách</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="main-container col2-left-layout">
                    <div class="main container">
                        <div class="row">
                            <section class="col-main col-sm-9 col-sm-push-3">
                                <div class="category-description std">
                                    <div class="slider-items-products">
                                        <div id="category-desc-slider" class="product-flexslider hiddenbuttons">
                                            <div class="slider-items slider-width-col1">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="category-title">
                                    <h1>Tất cả sản phẩm</h1>
                                </div>
                                <div class="category-products">
                                <jsp:include page="Toolbar.jsp"></jsp:include>
                                    <ul class="products-grid hidden_btn_cart">
                                    <c:forEach items="${listProduct}" var="product">
                                        <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
                                            <div class="col-item">
                                                <div class="product-image-area">
                                                    <a class="product-image" title="${product.productName}"
                                                       href="">
                                                        <img src="../jsp/FontEnd/images/${product.images}" class="imgresponsive" alt="${product.productName}" />
                                                    </a>
                                                    <form action="<%=request.getContextPath()%>/CartController/addCart.htm?id=${product.productId}" method="post" class="variants "
                                                          id="product-actions-893897" enctype="multipart/form-data">
                                                        <div class="hover_fly">
                                                            <!--class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"--> 
                                                            <a href="<%=request.getContextPath()%>/CartController/addCart.htm?id=${product.productId}" title="Cho vào giỏ hàng">
                                                                <div><i class="icon-shopping-cart"></i><span>Cho vào
                                                                        giỏ hàngg</span></div>
                                                            </a>
                                                            <input type="hidden" name="variantId" value="1360784" />
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="info">
                                                    <div class="info-inner">
                                                        <div class="item-title"> <h3><a title="${product.productName}"

                                                                    href="">${product.productName}</a></h3></div>
                                                        <!--item-title-->
                                                        <div class="item-content">
                                                            <div class="price-box">
                                                                <p class="special-price"> <span
                                                                        class="price">${product.price} </span> </p>
                                                            </div>
                                                        </div>
                                                        <!--item-content-->
                                                    </div>
                                                    <!--info-inner-->
               <form action="<%=request.getContextPath()%>/CartController/addCart.htm?productId=${product.productId}" method="post" class="variants "
                                                          id="product-actions-893897"
                                                          enctype="multipart/form-data">
                                                        <div class="actions">
                                                            <input type="hidden" name="variantId" value="1360784" />
                                                            <button class="button btn-cart btn-cart add_to_cart"
                                                                    title="Cho vào giỏ hàng"
                                                                    type="submit"><span>Cho vào giỏ
                                                                    hàng</span></button>
                                                        </div>
                                                    </form>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <div class="toolbar">
                                    <div class="pager">
                                        <div class="pages">
                                            <label>Trang:</label>
                                            ${url}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <jsp:include page="RightMenu.jsp"></jsp:include>
                        </div>
                    </div>
                </div>
            <jsp:include page="Footer.jsp"></jsp:include>
        </div>
    </body>
</html>