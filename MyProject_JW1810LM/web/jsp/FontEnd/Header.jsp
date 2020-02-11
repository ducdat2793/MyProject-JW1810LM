<%-- 
    Document   : header.jsp
    Created on : Apr 20, 2019, 5:10:24 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<header class="header-container">
 <div class="header-top">
 <div class="container">
 <div class="row">
 <!-- Header Language -->
 <div class="col-xs-6">
 <div class="welcome-msg hidden-xs"> Chào mừng bạn tới E-Book HN </div>
 </div>
 <div class="col-xs-6">
 <!-- Header Top Links -->
 <div class="toplinks">
 <div class="links">
 <div class="register"><a title="Register" href="${pageContext.request.contextPath}/homeFontEnd/initResgiter.htm">
 <span class="hidden-xs">Đăng ký</span></a></div>

 <div class="login"><a title="Login" href="${pageContext.request.contextPath}/homeFontEnd/fontEndInitLogin.htm">
 <span class="hidden-xs">Đăng nhập</span></a></div>
 
 <div class=""><a title="Info" href=""><i class="fa fa-user-circle" aria-hidden="true"></i>
 <span class="hidden-xs"> </span><%=request.getSession().getAttribute("userName")%></a></div>
                        ${request.getSession().getAttribute("listCart").size()}
 </div>
 </div>
 <!-- End Header Top Links -->
 </div>
 </div>
 </div>
 </div>
 <div class="header container">
 <div class="row">
 <div class="col-lg-2 col-sm-3 col-md-2">
 <!-- Header Logo -->
 <a class="logo" href="">
 <img alt="polo-theme" src="../jsp/FontEnd/images/logo-a.png" />
 </a>
 <!-- End Header Logo -->
 </div>
 <div class="col-lg-8 col-sm-6 col-md-8">
 <!-- Search-col -->
 <div class="search-box">
 <form action="/search" method="get" id="search_mini_form">
 <input type="text" placeholder="Tìm kiếm" value="" maxlength="70" class=""
name="query" id="search">
 <button type="submit" id="submit-button" class="search-btn-bg">
 <span style="white-space: nowrap;">Tìm kiếm</span></button>
 </form>
 </div>
 <!-- End Search-col -->
 </div>
 <!-- Top Cart -->
 <div class="col-lg-2 col-sm-3 col-md-2">
 <div class="top-cart-contain">
 <div class="mini-cart" id="open_shopping_cart">
 <div data-hover="dropdown" class="basket dropdown-toggle">
<a href="${pageContext.request.contextPath}/CartController/cart.htm">
 <i class="fa fa-shopping-cart"> </i>
 <div class="cart-box"><span class="title">Giỏ hàng</span><span id="cart-total"> 
         <!--request.getSession().getAttribute("listCart")%>.size()-->
         <!--session.getAttribute("quantity")-->
(<%=session.getAttribute("quantity") %>) </span></div>
     
  </a>
 </a>
 </div>
 <div>
 <div class="top-cart-content arrow_box">
 <ul id="cart-sidebar" class="mini-products-list shopping_cart">
 </ul>
 </div>
 </div>
 </div>
 <div id="ajaxconfig_info"> <a href="#/"></a>
 <input value="" type="hidden">
 <input id="enable_module" value="1" type="hidden">
 <input class="effect_to_cart" value="1" type="hidden">
 <input class="title_shopping_cart" value="Giỏ hàng" type="hidden">
 </div>
 </div>
 </div>
 <!-- End Top Cart -->
 </div>
 </div>
</header>