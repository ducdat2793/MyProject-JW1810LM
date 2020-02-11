<%-- 
    Document   : CheckOut
    Created on : Sep 1, 2019, 2:29:28 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="polo-theme - Thanh toán đơn hàng" />
        <title>E-Book HN - Thanh toán đơn hàng</title>
        <link rel="shortcut icon" href="//bizweb.dktcdn.net/assets/favicon.ico"
              type="image/x-icon" />
        <!--<link href='/MyProject_JW1810LM/jsp/BackEnd/css/bootstrap.min.css' rel='stylesheet' type='text/css' />-->
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' type='text/css' />
        <!--<link href='/SpringMVC_PaymentDemo/jsp/css/nprogress.css' rel='stylesheet' type='text/css' />-->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.css' rel='stylesheet' type='text/css' />

        <!--<link href='/MyProject_JW1810LM/jsp/BackEnd/css/font-awesome.min.css'-->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css' rel='stylesheet' type='text/css' />

        <link href='/MyProject_JW1810LM/jsp/FontEnd/css/checkout_new.css'
              rel='stylesheet' type='text/css' />
    </head>
    <body class="body--custom-background-color ">
        <div class="banner" data-header="">
            <div class="wrap">
                <div class="shop logo logo--left ">
                    <h1 class="shop__name">
                        <a href="/">
                            E-Book HN
                        </a>
                    </h1>
                </div>
            </div>
        </div>
        <button class="order-summary-toggle" bind-eventclick="Bizweb.Checkout.toggleOrderSummary(this)">
            <div class="wrap">
                <h2>
                    <label class="control-label">Đơn hàng</label>
                    <label class="control-label hidden-small-device">
                        (<%=session.getAttribute("quantity")%>) sản phẩm)
                    </label>
                    <label class="control-label visible-small-device inline">
                        <%=request.getSession().getAttribute("listCart")%>.size()
                    </label>
                </h2>
                <a class="underline-none expandable pull-right" href="javascript:void(0)">
                    Xem chi tiết
                </a>
            </div>
        </button>
        <form action="<%=request.getContextPath()%>/homeCheckOut/payment.htm" data-toggle="validator" class="content statefulform formCheckout" >
            <div class="wrap" context="checkout" define='{checkout: new
                 Bizweb.Checkout(this,{ existCode: false, totalOrderItemPrice: 4180000.0000,
                 discount: 0, shippingFee: 0, freeShipping: false, requiresShipping: true, code: "", 
                 settingLanguage: "vi", moneyFormat:
                 "{{amount_no_decimals_with_comma_separator}}₫", discountLabel: "Miễn phí",
                 districtPolicy: "optional", district: "", province:"" })}'>
                <div class='sidebar '>
                    <div class="sidebar_header">
                        <h2>
                            <label class="control-label">Đơn hàng</label>
                            <label class="controllabel">(<%=session.getAttribute("quantity")%> sản phẩm)</label>
                        </h2>
                        <hr class="full_width"/>
                    </div>
                    <div class="sidebar__content">
                        <div class="order-summary order-summary--product-list ordersummary--is-collapsed">
                            <div class="summary-body summary-section summary-product" >
                                <div class="summary-product-list">
                                    <table class="product-table">
                                        <tbody>
                                            <c:forEach
                                            items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                                <tr class="product product-has-image clearfix">
                                                    <td>
                                                        <div class="product-thumbnail">
                                                            <div class="product-thumbnail__wrapper">
                                                                <img
                                                                    src='../jsp/FontEndNew/images/products/${cart.product.images}'
                                                                    alt='${cart.product.productName}' class='product-thumbnail__image' />
                                                            </div>
                                                            <span class="product-thumbnail__quantity"
                                                                  aria-hidden="true">${cart.quantity}</span>
                                                        </div>
                                                    </td>
                                                    <td class="product-info">
                                                        <span class="product-infoname">${cart.product.productName}</span>
                                                    </td>
                                                    <td class="product-price text-right">
                                                        ${cart.product.price*cart.quantity}
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <hr class="m0"/>
                        </div>
                        <div class="order-summary order-summary--total-lines">
                            <div class="summary-section border-top-none--mobile">
                                <div class="total-line total-line-subtotal clearfix">
                                    <span class="total-line-name pull-left">Tạm tính</span>

                                    <span class="total-line-subprice pull-right">
                                        ${totalAmount}</span>
                                </div>
                                <div class="total-line total-line-shipping clearfix" bindshow="requiresShipping">
                                    <span class="total-line-name pull-left">Phí vận chuyển</span>
                                    40.000đ
                                </div>
                                <div class="total-line total-line-total clearfix">
                                    <span class="total-line-name pull-left">Tổng cộng</span>
                                    <span class="total-line-price pull-right">${totalAmount + 40000}</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group clearfix hidden-sm hidden-xs">
                            <div class="field__input-btn-wrapper mt10">
                                <a class="previous-link" href="<%=request.getContextPath()%>/CartController/cart.htm">
                                    <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                                    <span>Quay về giỏ hàng</span>
                                </a>
                                <input class="btn btn-primary btn-checkout" type="submit"
                                       value="THANH TOÁN" />
                            </div>
                        </div>
                        <div class="form-group has-error">
                            <div class="help-block ">
                                <ul class="list-unstyled">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main" role="main">
                    <div class="main_header">
                        <div class="shop logo logo--left ">
                            <h1 class="shop__name">
                                <a href="<%=request.getContextPath()%>/homeFontEnd/getData.htm">E Book HN</a>
                            </h1>
                        </div>
                    </div>
                    <div class="main_content">
                        <div class="row">
                            <div class="col-md-6 col-lg-6">
                                <div class="section" define="{billing_address: {}}">
                                    <div class="section__header">
                                        <div class="layout-flex layout-flex--wrap">
                                            <h2 class="section__title layout-flex__item layoutflex__item--stretch">
                                                <i class="fa fa-id-card-o fa-lg section__title--icon
                                                   hidden-md hidden-lg" aria-hidden="true"></i>
                                                <label class="control-label">Thông tin mua hàng</label>
                                            </h2>
                                            <!--                            <a class="layout-flex__item section__title--link"
                                                                  href="/account/login?returnUrl=/checkout"><i class="fa fa-user-circle-o fa-lg" ariahidden="true"></i> Đăng nhập</a>-->
                                        </div>
                                    </div>
                                    <div class="section__content">
                                        <div class="form-group" >
                                            <label for="_email">Email:</label>
                                            <input name="Email" type="email" class="field__input
                                                   form-control" id="_email" name="Email" value="${us.email}" />
                                        </div>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="billing">
                                        <div>
                                            <div class="form-group">
                                                <label for="fullname">Họ và tên:</label>
                                                <input name="BillingAddress.LastName" type="text"
                                                       id="fullname" value="${us.userName}" class="field__input form-control" />
                                            </div>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="phone">Số điện thoại:</label>
                                            <input name="BillingAddress.Phone" type="text"
                                                   value="${us.phone}" id="phone" class="field__input form-control"
                                                   id="_billing_address_phone" />
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="address">Địa chỉ:</label>
                                            <input name="BillingAddress.Address1" type="text"
                                                   bind-event-focus="handleFocus(this)" value="${us.address}" id="address"
                                                   class="field__input form-control" id="_billing_address_address1" />
                                        </div>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="section shipping-method hide" bindshow="shippingMethods.length > 0">
                                    <div class="section__header">
                                        <h2 class="section__title">
                                            <i class="fa fa-truck fa-lg section__title--icon hidden-md
                                               hidden-lg" aria-hidden="true"></i>
                                            <label class="control-label">Vận chuyển</label>
                                        </h2>
                                    </div>
                                    <div class="section__content">
                                        <div class="content-box"></div>
                                    </div>
                                </div>
                                <div class="section payment-methods" >
                                    <div class="section__header">
                                        <h2 class="section__title">
                                            <i class="fa fa-credit-card fa-lg section__title--icon
                                               hidden-md hidden-lg" aria-hidden="true"></i>
                                            <label class="control-label">Thông tin thanh toán</label>
                                            <div class="section__content">
                                                <div class="content-box">
                                                    <div class="content-box__row">
                                                        <div class="radio-wrapper">
                                                            <div class="form-group">
                                                                ${message}
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label"
                                                                       for="cardname">Tên thẻ:</label>
                                                                <input class="form-control" type="text"
                                                                       value="" id="cardname" name ="accName" required />
                                                            </div>
                                                            <div class="help-block with-errors"></div>
                                                            <div class="form-group">
                                                                <label class="control-label"
                                                                       for="cardcode">Mã thẻ:</label>
                                                                <input class="form-control" type="text"
                                                                       value="" id="cardcode" name ="accNo" required/>
                                                            </div>
                                                            <div class="help-block with-errors"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </h2>
                                    </div>
                                </div>

                            </div>
                        </div><!-- đây là cái row đóng-->
                    </div>
                </div>
            </div>
        </form>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js' type='text/javascript'></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'
        type='text/javascript'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twine/1.2.2/twine.js'
        type='text/javascript'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/validator/11.1.0/validator.min.js'
        type='text/javascript'></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.min.js'
        type='text/javascript'></script>
        <script src='/SpringMVC_PaymentDemo/jsp/js/money-helper.js'
        type='text/javascript'></script>
        <script src='/SpringMVC_PaymentDemo/jsp/js/checkout_new_v2.js'
        type='text/javascript'></script>
    </body>
</html>
