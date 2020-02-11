<%-- 
    Document   : TopNav
    Created on : Sep 24, 2019, 6:38:51 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Danh mục sách</div>
    <nav class="yamm megamenu-horizontal">
        <ul class="nav">
            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon fa fa-book" aria-hidden="true"> </i>Danh mục 1</a>
                <ul class="dropdown-menu mega-menu">
                    <li class="yamm-content">

                        <div class="row">            
                            <div class="col-sm-12 col-md-4">            
                                <ul class=" links list-unstyled  ">   
                                    <c:forEach items="${listCategory1}" var = "category" >   
                                        <li><a  href="${pageContext.request.contextPath}/padging/getProductByCatalogId1.htm?Id=${category.categoryId}">
                                                ${category.categoryName}
                                            </a></li>    
                                        </c:forEach>       
                                </ul>                        
                            </div>                 
                            <!-- /.col -->                        
                      <!-- /.col -->                                               
                    </div>
                               
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="icon fa fa-book" aria-hidden="true"></i>Danh mục 2</a> 
                  <!-- ================================== MEGAMENU VERTICAL ================================== -->
                  <ul class="dropdown-menu mega-menu">
                      <li class="yamm-content">
                          <div class="row">
                              <div class="col-xs-12 col-sm-12 col-lg-4">
                                  <ul>
                                      <c:forEach items="${listCategory2}" var = "category" >   
                                          <li><a  href="${pageContext.request.contextPath}/padging/getProductByCatalogId1.htm?Id=${category.categoryId}">
                                                  ${category.categoryName}
                                                  </a></li> 
                                              </c:forEach>      
                                  </ul>
                              </div>
                              <div class="col-xs-12 col-sm-12 col-lg-4">
                                  <ul>

                                  </ul>
                              </div>
                              <div class="dropdown-banner-holder"> <a href="#"><img alt="" src="../jsp/FontEndNew/images/banners/banner-side.png" /></a> </div>
                          </div>
                          <!-- /.row --> 
                      </li>
                      <!-- /.yamm-content -->
                  </ul>
                  <!-- /.dropdown-menu --> 
                  <!-- ================================== MEGAMENU VERTICAL ================================== --> </li>
              <!-- /.menu-item -->

              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="icon fa fa-user" aria-hidden="true"></i>Danh mục tác giả</a>
                  <ul class="dropdown-menu mega-menu">
                      <li class="yamm-content">
                          <div class="row">
                              <div class="col-sm-12 col-md-4">
                                  <ul class="links list-unstyled">
                                      <c:forEach items="${listAuthor}" var = "au" >  
                                          <li><a href="${pageContext.request.contextPath}/homeFontEnd/getProductByAuthorId.htm?Id=${au.authorId}">
                                                  ${au.authorName}</a></li>
                                          </c:forEach>  
                                  </ul>
                              </div>
                              <!-- /.col -->
                          </div>
                          <!-- /.row --> 
                      </li>
                      <!-- /.yamm-content -->
                  </ul>
                  <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item --> 
               <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="icon fa fa-book" aria-hidden="true"></i>Sản phẩm</a>
                  <ul class="dropdown-menu mega-menu">
                      <li class="yamm-content">
                          <div class="row">
                              <div class="col-sm-12 col-md-4">
                                  <ul class="links list-unstyled">
                                      
                                          <li><a href="${pageContext.request.contextPath}/padging/getDataByPagging.htm">Tất cả sản phẩm</a></li>
                                          
                                  </ul>
                              </div>
                              <!-- /.col -->
                          </div>
                          <!-- /.row --> 
                      </li>
                      <!-- /.yamm-content -->
                  </ul>
                  <!-- /.dropdown-menu --> </li>
              
            </ul>
            <!-- /.nav --> 
          </nav>
          <!-- /.megamenu-horizontal --> 
</div>