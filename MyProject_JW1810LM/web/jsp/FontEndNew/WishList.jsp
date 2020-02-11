<%-- 
    Document   : WishList
    Created on : Oct 16, 2019, 7:30:03 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <jsp:include page="Head.jsp"></jsp:include>  
        <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                            <li class='active'>Danh Sách Yêu Thích</li>
                        </ul>
                    </div><!-- /.breadcrumb-inner -->
                </div><!-- /.container -->
            </div><!-- /.breadcrumb -->

            <div class="body-content">
                <div class="container">
                    <div class="my-wishlist-page">
                        <div class="row">
                            <div class="col-md-12 my-wishlist">

                                <div class="table-responsive">
                                    <table >
                                        <thead>
                                            <tr>
                                                <th colspan="4" class="heading-title">Danh sách yêu thích của tôi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                          
                                        <c:forEach items="${listWL}" var = "wish" >
                                            <tr>
                                                <td class="col-md-1"><img src="../jsp/FontEndNew/images/products/${wish.product.images}" alt="img"></td>
                                                <td class="col-md-7">
                                                    <div class="product-name"><a href="#">${wish.product.productName}</a></div>
                                                    <div class="rating">
                                                        <i class="fa fa-star rate"></i>
                                                        <i class="fa fa-star rate"></i>
                                                        <i class="fa fa-star rate"></i>
                                                        <i class="fa fa-star rate"></i>
                                                        <i class="fa fa-star non-rate"></i>
                                                        <span class="review">( 06 Reviews )</span>
                                                    </div>
                                                    <div class="price">
                                                        ${wish.product.priceInput} VND
                                                        <span> ${wish.product.priceDiscount} VND</span>
                                                    </div>
                                                </td>
                                                <td class="col-md-2">
                                                    <a href="#" class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>                                                  
                                                </td>
                                                <td class="col-md-1 close-btn">
                                                    <a href="<%=request.getContextPath()%>/wishList/removeWishList.htm?Id=${wish.product.productId}" class=""><i class="fa fa-times"></i></a>
                                                </td>
                                            </tr>                                            
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                                <br>
                            <button class="btn-upper btn btn-primary" onclick="window.location = '<%=request.getContextPath()%>/homeFontEnd/getData.htm'" title="Continue Shopping" type="button">                               
                                <span>                                  
                                    <span>Tiếp tục mua hàng</span>                                
                                </span></button>
                        </div>			
                    </div><!-- /.row -->
                </div><!-- /.sigin-in-->
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
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
