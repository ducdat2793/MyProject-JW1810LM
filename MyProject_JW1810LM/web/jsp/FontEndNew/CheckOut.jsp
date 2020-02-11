<%-- 
    Document   : CheckOut
    Created on : Oct 24, 2019, 12:12:58 AM
    Author     : Administrator
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toán</title>
        <jsp:include page="Head.jsp"></jsp:include>  
            <!--bootstrap link-->
        </head>

        <body>
        <jsp:include page="Header.jsp"></jsp:include>  
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                        <li class='active'>Thanh toán</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->
        <div class="body-content">
            <div class="container">
                <div class="sign-in-page">
                    <div class="row">

                        <!-- Sign-in -->			
                        <div class="col-md-6 col-sm-6 sign-in">
                            <p class="alert alert-info" id="thongbao">${message}</p>
                            <script>
                                var tb = document.getElementById("thongbao").value;
                                if (tb == null) {
                                    var x = document.getElementById("thongbao");
                                    x.getAttributeNode("class").value = "";
                                }
                                if (tb == [[${thongBao}]]) {
                                    var x = document.getElementById("thongbao");
                                    x.getAttributeNode("class").value = "alert alert-info";
                                }
//                                -----------------------------------------------
                            </script>
                            <h4 class="">Thông tin mua hàng</h4>                           
                            <form action="" commandName="account" class="register-form outer-top-xs" role="form" onsubmit="return signInValidate()">                              
                                <div class="form-group">
                                    <label class="info-title" for="signInEmail">Địa chỉ email </label>
                                    <input name="Email" type="email" class="form-control unicase-form-control text-input" id="signInEmail" value="${us.email}" />
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputPassword1">Họ tên </label>
                                    <input type="text" class="form-control unicase-form-control text-input" id="signInPassword" value="${us.userName}"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputPassword1">Số điện thoại </label>
                                    <input type="text" class="form-control unicase-form-control text-input" id="signInPassword" value="${us.phone}"/>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputPassword1">địa chỉ </label>
                                    <input type="text" class="form-control unicase-form-control text-input" id="signInPassword" value="${us.address}"/>
                                </div>            
                            </form>                               

                            <i class="fa fa-truck fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                            <h4 class="">Vận chuyển</h4>    
                            <h5 class="section__title">Đơn hàng sẽ được thanh toán theo hình thức COD hoặc chuyển khoản </h5>
                        </div>

                        <div class="col-md-6 col-sm-6 create-new-account">   
                            <h4 class="">Mẫu thanh toán 1</h4>  
                            <form role="form" action="<%=request.getContextPath()%>/homeCheckOut/payment.htm">                           
                                <article class="card">
                                    <div class="card-body p-5">                                      
                                        <div class="form-group">
                                            <label  for="cardname">Tên chủ thẻ :(Tên trên thẻ)</label>
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                            </div>
                                            <input class="form-control" type="text" value="" id="cardname" name ="accName" required />
                                        </div>
                                        <div class="form-group">
                                            <label  for="cardname">Mã số thẻ:</label>
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fa fa-credit-card"></i></span>
                                            </div>
                                            <input class="form-control" type="text" value="" id="cardnum" name ="accNo" required />
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="form-group">
                                                    <label><span class="hidden-xs">Thời hạn</span> </label>
                                                    <div class="form-inline">
                                                        <select class="form-control" style="width:45%">
                                                            <option>Tháng</option>
                                                            <option>01 </option>
                                                            <option>02 </option>
                                                            <option>03 </option>
                                                            <option>04 </option>
                                                            <option>05 </option>
                                                            <option>06 </option>
                                                            <option>07 </option>
                                                            <option>08 </option>
                                                            <option>09 </option>
                                                            <option>10 </option>
                                                            <option>11 </option>
                                                            <option>12 </option>
                                                        </select>
                                                        <span style="width:10%; text-align: center"> / </span>
                                                        <select class="form-control" style="width:45%">
                                                            <option>Năm</option>
                                                            <option>2019</option>
                                                            <option>2020</option>
                                                            <option>2021</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <a href="javascript:cvv();"><i  class="fa fa-question-circle"></i></a></label>
                                                    <input class="form-control" name ="cvv" required="" type="text">
                                                </div> <!-- form-group.// -->
                                            </div>
                                        </div> <!-- row.// -->
                                        <button class="subscribe btn btn-primary btn-block" type="submit"> Thanh toán  </button>
                                    </div> <!-- card-body.// -->
                                </article> <!-- card.// -->
                            </form>

                            <br><br><br>
                            <h4 class="">Đơn hàng</h4>  
                            <table id="cart" class="table table-hover table-condensed">
                                <thead>
                                    <tr>
                                        <th style="width:50%" class="text-center">Sản phẩm</th>
                                        <th style="width:10%;background-color:yellow;" class="text-center">Giá</th>
                                        <th style="width:20%" class="text-center">Số lượng</th>
                                        <th style="width:20%" class="text-center">Thành tiền</th>                           
                                    </tr>
                                </thead>
                                <tbody>                                  
                                    <c:forEach items="${listCart}" var="cart">                             
                                        <tr>                                                                                     
                                            <td data-th="Product">
                                                <div style="width: 120%;height: 20px">
                                                    <div  style="width: 20%;height:40px; Text-align:center;float:left;background-color:red;">
                                                        <img  src="../jsp/FontEndNew/images/products/${cart.product.images}" alt="..." class="img-responsive"/>
                                                    </div>               
                                                    <div style="width: 80%;height:60px;display:flex;Text-align:center;justify-content: center;align-items: center;">
                                                        ${cart.product.productName}                                                       
                                                    </div>   
                                                </div>
                                            </td>                                
                                            <td data-th="Price"><div style="width: 140%">${cart.product.priceDiscount} ₫</div></td>
                                            <td data-th="Price">${cart.quantity}</td>
                                            <td data-th="Subtotal" class="text-center">
                                                <div style="width: 140%">
                                                    <fmt:formatNumber type="number"  maxFractionDigits="3" value='${Float.parseFloat(cart.product.priceDiscount.replaceAll("[.]",""))*cart.quantity}'/> ₫
                                                </div>
                                            </td>                               
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>                                   
                                    <tr >
                                        <td><a href="<%=request.getContextPath()%>/CartController/cart.htm" class="btn btn-warning">
                                                <i class="fa fa-angle-left"></i> Quay lại giỏ hàng</a></td>
                                        <td colspan="2" class="hidden-xs">Phí vận chuyển tạm tính : 40.000 ₫</td>

                                        <td class="hidden-xs text-center">
                                            <div style="width: 150%;"><strong>Tổng : ${totalAll} ₫</strong>
                                            </div>
                                        </td>

                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
        <script>
            function cvv() {
                swal("CVV là cái số ở đằng sau thẻ.");
            }
        </script>
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
