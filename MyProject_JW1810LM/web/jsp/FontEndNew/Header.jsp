<%-- 
    Document   : Header
    Created on : Sep 24, 2019, 6:31:31 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<header class="header-style-1"> 
    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
        <div class="container">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled ">                     
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/wishList.htm">
                                <i class="icon fa fa-heart"></i>Danh sách yêu thích</a></li>
                        <li><a href="<%=request.getContextPath()%>/CartController/cart.htm">
                                <i class="icon fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                        <li><a href="<%=request.getContextPath()%>/homeCheckOut/initPayment.htm">
                                <i class="icon fa fa-check"></i>Thanh toán</a></li>    
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/initLogin.htm">
                                <i class="icon fa fa-lock"></i>Đăng ký/Đăng nhập</a></li>
                    </ul>
                </div>
                <!-- /.cnt-account -->       
                <div class="cnt-block">        
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small"> 
                            <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                <span class="value">
                                    <i class="icon fa fa-user "></i>Tài khoản
                                    <p id="demo"><%=request.getSession().getAttribute("Email")%></p> 
                                </span><b class="caret"></b>
                            </a>
                            <ul id="demo1" class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/homeFontEnd/initAccountInfo.htm">
                                        <p id="demo2">Thông tin tài khoản</p>
                                    </a>
                                </li>
                                <li><a  href="${pageContext.request.contextPath}/homeFontEnd/logOut.htm"> <p >Đăng xuất</p></a></li>    
                            </ul>
                        </li>
                    </ul>
                </div>
                <script>
                    var account = <%=request.getSession().getAttribute("Email")%>;
                    if (account == null) {
                        document.getElementById("demo").style.display = "none";
                        document.getElementById("demo1").style.display = "none";
                        document.getElementById("demo2").style.display = "none";
                    }
                </script>                 
                <!-- /.cnt-cart -->
                <div class="clearfix"></div>
            </div>
            <!-- /.header-top-inner --> 
        </div>
        <!-- /.container --> 
    </div>
    <!-- /.header-top --> 
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"> 
                        <a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm"> 
                            <img src="/MyProject_JW1810LM/jsp/FontEndNew/images/logo.png" alt="logo"> 
                        </a> </div>
                    <!-- /.logo --> 
                    <!-- ============================================================= LOGO : END ============================================================= --> </div>
                <!-- /.logo-holder -->      
                <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder"> 
                    <!-- /.contact-row --> 
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form id="form1" action="${pageContext.request.contextPath}/homeFontEnd/search.htm">
                            <div class="control-group">
                                <ul class="categories-filter animate-dropdown">
                                    <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="category.html">DANH MỤC <b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu" >                                           
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Sách mới</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Sách khuyến mãi</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Sách bán chạy</a></li>                                          
                                        </ul>
                                    </li>
                                </ul>
                              <input class="search-field" name="query" placeholder="Nhập tên sản phẩm hoặc giá tiền..." /> 
                                <a class="search-button" href="javascript:;" onclick="document.getElementById('form1').submit();"> </a>                            
                            </div>
                        </form>
                    </div>
                    <!-- /.search-area --> 
                    <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                </div>
                <!-- /.top-search-holder -->

                <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                    <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                            <div class="items-cart-inner">
                                <div class="basket"> <i class="fa fa-shopping-cart"></i> </div>
                                <div class="basket-item-count"><span class="count">${quantity}</span></div>
                                <div class="total-price-basket"> <span class="lbl">Giỏ hàng -</span> <span class="total-price"> 
                                        <span class="value">${totalAmount}</span><span class="sign"> </span> </span> </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <!--cart items-->
                                <div class="cart-item product-summary">
                                    <c:forEach items="${listCart}" var="cart">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <div class="image"> <a href="detail.html"><img src="../jsp/FontEndNew/images/products/${cart.product.images}" alt=""></a> 
                                                </div>
                                            </div>
                                            <div class="col-xs-7">
                                                <h3 class="name"><a href="index.php?page-detail">${cart.product.productName}</a></h3>
                                                <div class="price">${cart.product.priceDiscount}</div>
                                            </div>
                                            <div class="col-xs-1 action"> <a href="<%=request.getContextPath()%>/CartController/removeCartIndex.htm?Id=${cart.product.productId}">
                                                    <i class="fa fa-trash"></i></a> </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <!-- /.cart-items -->
                                <div class="clearfix"></div>
                                <hr>
                                <div class="clearfix cart-total">
                                    <div class="pull-right"> <span class="text">Tổng tiền :</span><span class='price'>${totalAmount}</span> </div>
                                    <div class="clearfix"></div>
                                    <a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Thanh toán</a> </div>
                                <!-- /.cart-total--> 

                            </li>
                        </ul>
                        <!-- /.dropdown-menu--> 
                    </div>
                    <!-- /.dropdown-cart --> 

                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= --> 
                </div>
                <!-- /.top-cart-row --> 
            </div>

            <!-- /.row -->      
        </div>
        <!-- /.container --> 
    </div>
    <!-- /.main-header --> 

    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
        <div class="container">
            <div class="yamm navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> 
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="active dropdown yamm-fw"> 
                                    <a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a> </li>
                                <li class="dropdown hidden-sm"> 
                                    <a href="${pageContext.request.contextPath}/navBar/about.htm">Giới thiệu</a>                                   
                                </li>
                                <li class="dropdown mega-menu"> 
                                    <a href="#"  data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Khuyến mãi <span class="menu-label hot-menu hidden-xs">hot</span> </a>                
                                </li>
                                <li class="dropdown hidden-sm"> <a href="${pageContext.request.contextPath}/navBar/blog.htm">Tin tức <span class="menu-label new-menu hidden-xs">new</span> </a> </li>
                                <li class="dropdown hidden-sm"> <a href="${pageContext.request.contextPath}/navBar/contact.htm">Liên hệ</a> </li>

                                <li class="dropdown"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Các trang</a>
                                    <ul class="dropdown-menu pages">
                                        <li>
                                            <div class="yamm-content">
                                                <div class="row">
                                                    <div class="col-xs-12 col-menu">
                                                        <ul class="links">
                                                            <li><a href="home.html">Trang chủ</a></li>
                                                            <li><a href="category.html">Danh mục sách</a></li>
                                                            <li><a href="detail.html">Detail</a></li>
                                                            <li><a href="shopping-cart.html">Shopping Cart Summary</a></li>
                                                            <li><a href="checkout.html">Checkout</a></li>
                                                            <li><a href="blog.html">Blog</a></li>
                                                            <li><a href="blog-details.html">Blog Detail</a></li>
                                                            <li><a href="contact.html">Contact</a></li>
                                                            <li><a href="sign-in.html">Sign In</a></li>
                                                            <li><a href="my-wishlist.html">Wishlist</a></li>
                                                            <li><a href="terms-conditions.html">Terms and Condition</a></li>
                                                            <li><a href="track-orders.html">Track Orders</a></li>
                                                            <li><a href="product-comparison.html">Product-Comparison</a></li>
                                                            <li><a href="faq.html">FAQ</a></li>
                                                            <li><a href="404.html">404</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown  navbar-right special-menu"> <a href="#">Todays offer</a> </li>
                            </ul>
                            <!-- /.navbar-nav -->
                            <div class="clearfix"></div>
                        </div>
                        <!-- /.nav-outer --> 
                    </div>
                    <!-- /.navbar-collapse -->           
                </div>
                <!-- /.nav-bg-class --> 
            </div>
            <!-- /.navbar-default --> 
        </div>
        <!-- /.container-class -->    
    </div>
    <!-- /.header-nav --> 
    <!-- ============================================== NAVBAR : END ============================================== -->  
</header>
