<%-- 
    Document   : Menu.jsp
    Created on : Apr 20, 2019, 5:11:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav>
 <div class="container">
 <div class="nav-inner">
 <div class="logo-small">
 <a class="logo" href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">
 <img alt="polo-theme" src="../jsp/FontEnd/images/logo-a.png" />
 </a>
 </div>
 <div class="hidden-desktop" id="mobile-menu">
 <ul class="navmenu">
 <li>
 <div class="menutop">
 <div class="toggle"> <span class="icon-bar"></span>
 <span class="icon-bar"></span> <span class="icon-bar"></span></div>
 <h2>Menu</h2>
 </div>
 <ul class="submenu">
 <li>
 <ul class="topnav">
 <li class="level0 nacvv-8 level-top parent" > <a class="level-top" href="">
 <span>Trang chủ</span> </a></li>
 <li class="level0 nacvv-8 level-top parent"> <a class="level-top"
href="/gioi-thieu">
 <span>Giới thiệu</span> </a></li>
 <li class="level0 nav-8 level-top parent"> <a class="level-top" href="">
 <span>Sản phẩm</span> </a> </li>
 <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="/tintuc">
 <span>Tin tức</span> </a></li>
 <li class="level0 nacvv-8 level-top parent"> <a class="level-top"
href="/lien-he">
 <span>Liên hệ</span> </a></li>
 </ul>
 </li>
 </ul>
 </li>
 </ul>
 <!--navmenu-->
 </div>
 <ul id="nav" class="hidden-xs">
 <li class="level0 parent drop-menu active"><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm"><span>Danh muc sach</span></a></li>
 <li class="level0 parent drop-menu active"><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm"><span>Trang chủ</span></a></li>
 <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/homeFontEnd/about.htm"><span>Giới thiệu</span></a></li>
 <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/homeFontEnd/getProductByPagging.htm"><span>Sản phẩm</span></a> </li>
 <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/homeFontEnd/getPost.htm"><span>Tin tức</span></a></li>
 <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/homeFontEnd/contact.htm"><span>Liên hệ</span></a></li>
 </ul>
 </div>
 </div>
</nav>
<!-- end nav -->