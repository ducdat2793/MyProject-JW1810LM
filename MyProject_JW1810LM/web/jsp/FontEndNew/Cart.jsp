<%-- 
    Document   : Cart
    Created on : Oct 22, 2019, 5:19:05 PM
    Author     : Administrator
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng</title>
    </head>
    <jsp:include page="Head.jsp"></jsp:include>   

        <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang Chủ</a></li>
                        <li class='active'>Giỏ Hàng</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <!--start-->
        <div class="container">
            <form action="<%=request.getContextPath()%>/CartController/update.htm" method="post">
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width:49%" class="text-center">Sản phẩm</th>
                            <th style="width:10%" class="text-center">Giá</th>
                            <th style="width:11%" class="text-center">Số lượng</th>
                            <th style="width:20%" class="text-center">Thành tiền</th>
                            <th style="width:10%" class="text-center"> Cập nhật/Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listCart}" var="cart">
                            <tr>
                                <td data-th="Product">
                                    <div class="row">
                                        <div class="col-sm-2 hidden-xs"><img src="../jsp/FontEndNew/images/products/${cart.product.images}" alt="..." class="img-responsive"/></div>
                                        <div class="col-sm-10">
                                            <h4 class="nomargin">${cart.product.productName}</h4>
                                            <p>${cart.product.content}</p>
                                        </div>
                                    </div>
                                </td>
                                <td data-th="Price">${cart.product.priceDiscount} ₫</td>
                                <td data-th="Quantity">
                                    <input type="number" min="0" name="quantity" class="form-control text-center" value="${cart.quantity}">
                                </td>
                                <td data-th="Subtotal" class="text-center">
                                    <fmt:formatNumber type="number"  maxFractionDigits="3" value='${Float.parseFloat(cart.product.priceDiscount.replaceAll("[.]",""))*cart.quantity}'/> ₫
                                </td>
                                <td class="actions text-center" data-th="">
                                    <button type="submit"
                                            class="btn btn-info btn-sm">
                                        <i class="fa fa-refresh"></i></button>
                                    <button onclick="location.href = '<%=request.getContextPath()%>/CartController/remove.htm?Id=${cart.product.productId}'" class="btn btn-danger btn-sm">
                                        <i class="fa fa-trash-o"></i></button>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td><a href="<%=request.getContextPath()%>/homeFontEnd/getData.htm" class="btn btn-warning">
                                    <i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a></td>
                            <td colspan="2" class="hidden-xs"></td>
                            <td class="hidden-xs text-center">
                                <strong>Tổng : ${totalAmount} ₫</strong>
                            </td>
                            <td><a href="<%=request.getContextPath()%>/homeCheckOut/initPayment.htm" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a></td>
                        </tr>
                    </tfoot>
                </table>
            </form>
        </div>
        <!--end-->

        <jsp:include page="BrandSlider.jsp"></jsp:include>
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- ============================================================= FOOTER : END============================================================= --> 
        > 
        <!-- JavaScripts placed at the end of the document so the pages load faster --> 
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="../jsp/FontEndNew/js/jquery-1.11.1.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-hover-dropdown.min.js"></script> 
        <script src="../jsp/FontEndNew/js/owl.carousel.min.js"></script> 
        <script src="../jsp/FontEndNew/js/echo.min.js"></script> 
        <script src="../jsp/FontEndNew/js/jquery.easing-1.3.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-slider.min.js"></script> 
        <script src="../jsp/FontEndNew/js/jquery.rateit.min.js"></script> 
        <script type="text/javascript" src="../jsp/FontEndNew/js/lightbox.min.js"></script> 
        <script src="../jsp/FontEndNew/js/bootstrap-select.min.js"></script> 
        <script src="../jsp/FontEndNew/js/wow.min.js"></script> 
        <script src="../jsp/FontEndNew/js/scripts.js"></script>
    </body>
</html>
