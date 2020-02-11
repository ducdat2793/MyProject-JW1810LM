<%-- 
    Document   : Cart
    Created on : Jul 30, 2019, 2:35:42 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="Head.jsp"></jsp:include>
        <body class="" >
            <div class="page">
            <jsp:include page="Header.jsp"></jsp:include>
            <jsp:include page="Menu.jsp"></jsp:include>
                <div class="breadcrumbs">
                    <div class="container">

                        <div class="row">
                            <ul>
                                <li class="home"> <a href="/" title="Trang chủ">Trang
                                        chủ</a><span>—›</span></li>
                                <li><strong>Giỏ hàng</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <section class="main-container col1-layout">
                    <div class="main container">
                        <div class="col-main">
                            <div class="cart wow bounceInUp animated">
                                <div class="page-title">
                                    <h2>Giỏ hàng</h2>
                                </div>
                                <div class="table-responsive">
                                    <form action="<%=request.getContextPath()%>/CartController/update.htm" method="post">
                                    <input type="hidden" value="Vwww7itR3zQFe86m"
                                           name="form_key">
                                    <fieldset>
                                        <table class="data-table cart-table" id="shoppingcart-table">
                                            <thead>
                                                <tr class="first last">

                                                    <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                                                    <th rowspan="1"></th>
                                                    <th colspan="1" class="a-center"><span class="nobr">Giá</span></th>
                                                    <th class="a-center" rowspan="1">Số lượng</th>
                                                    <th colspan="1" class="a-center">Tổng tiền</th>
                                                    <th class="a-center" rowspan="1">&nbsp;</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach
                                                    items="${listCart}" var="cart">
                                                    <tr class="first odd">
                                                        <td class="image" style="text-align:
                                                            center;"><a class="product-image" title="${cart.product.productName}"
                                                             href=""><img width="75" height="75" alt="${cart.product.productName}"
                                                                         src="../jsp/FontEnd/images/${cart.product.images}"></a></td>
                                                        <td><h2 class="product-name"> <a
                                                                    href="">${cart.product.productName}</a></h2>
                                                        </td>
                                                        <td class="a-right"><span class="cart-price">
                                                                <span class="price">${cart.product.price}</span> </span></td>
                                                        <td class="a-center movewishlist"><input
                                                                maxlength="12" class="input-text qty" type="number" min="0" name="quantity"
                                                                id="quantity" value="${cart.quantity}"></td>
                                                        <td class="a-right movewishlist"><span
                                                                class="cart-price"> <span class="price">${cart.product.price*cart.quantity}</span> </span></td>

                                                        <td class="a-center last" style="text-align:
                                                            center;"><a style="float:initial !important;" class="button remove-item"
                                                             title="Remove item"
                                                             href="<%=request.getContextPath()%>/CartController/remove.htm?Id=${cart.product.productId}
                                                             "><span><span>Remove item</span></span></a></td>
                                                    </tr>

                                                </c:forEach>
                                            </tbody>
                                            <tfoot>

                                                <tr class="first last">
                                                    <td class="a-right last" colspan="50">
                                                        <button onclick="window.location = '<%=request.getContextPath()%>/homeFontEnd/getData.htm'"
                                                                class="button btn-continue" title="Continue Shopping"
                                                                type="button"><span><span>Tiếp tục mua hàng</span></span></button>
                                                        <button onclick="window.location = '<%=request.getContextPath()%>/CartController/update.htm'"
                                                                class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action"
                                                                type="submit"><span><span>Cập nhật giỏ hàng</span></span></button>
                                                        <button onclick="window.location =
                                                                        '<%=request.getContextPath()%>/CartController/clear.htm'" id="empty_cart_button"
                                                                class="button btn-empty" title="Clear Cart" value="empty_cart"
                                                                name="update_cart_action" type="button"><span><span>Xóa giỏ hàng</span></span></button></td>
                                                </tr>
                                            </tfoot>

                                        </table>
                                    </fieldset>
                                </form>
                            </div>
                            <div class="cart-collaterals row">
                                <div class="totals col-sm-4" style="float:right">
                                    <h3><span>Tổng tiền</span></h3>
                                    <div class="inner">
                                        <table class="table shopping-cart-table-total"
                                               id="shopping-cart-totals-table">
                                            <colgroup>
                                                <col>
                                                <col width="1">
                                            </colgroup>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="1" class="a-left"
                                                        style=""><strong>Tổng</strong></td>
                                                    <td class="a-right" style=""><strong><span
                                                                class="price">${totalAmount}</span></strong></td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <ul class="checkout">
                                            <li>
                                                <button onclick="window.location = '<%=request.getContextPath()%>/homeCheckOut/initPayment.htm'"
                                                        name="checkout" class="button btn-proceed-checkout" title="Proceed to
                                                        Checkout" type="button"><span>Thanh toán</span></button>

                                            </li>
                                        </ul>
                                    </div>
                                    <!--inner-->
                                </div>
                            </div>
                        </div>
                        <!-- BEGIN CART COLLATERALS -->
                    </div>
                </div>
            </section>
            <style>
                img{max-width:initial;}
            </style>
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- End Footer -->
        </div>
    </body>
</html>


