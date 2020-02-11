<%-- 
    Document   : Products
    Created on : Jun 23, 2019, 3:16:39 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#product').dataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
                });
            });
        </script>

        <body class="no-skin">
        <jsp:include page="Header.jsp"></jsp:include>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs" id="breadcrumbs">
                        <script type="text/javascript">
                            try {
                                ace.settings.check('breadcrumbs', 'fixed')
                            } catch (e) {
                            }
                        </script>
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="${pageContext.request.contextPath}/admin/homeBackend.htm">Trang chủ</a>
                        </li>
                        <li class="active">Dashboard</li>
                    </ul><!-- /.breadcrumb -->
                </div>
                <div class="page-content">
                    <a href="initInsertProduct.htm" class="btn btn-primary">Thêm mới</a>
                    <br/>
                    <div class="row">

                        <div class="col-xs-12 col-md-10">
                            <div class="table-header" >
                                Danh sách sản phẩm
                            </div>
                            <div>
                                <table id="product" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th style="width:30px;height:30px;textalign:center;">Ảnh</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Giảm giá</th>
                                            <th>Ngày tạo</th>
                                            <th>Trạng thái</th>
                                            <th>Xem/Sửa/Xóa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listProduct}" var="product">
                                            <tr>
                                                <td>${product.productId} </td>
                                                <td > <img style="width:70px;height:90px;textalign:center;" title="${product.productName}"
                                                           src="../jsp/FontEndNew/images/products/${product.images}" class="img-fix3" >
                                                <td>${product.productName}</td>
                                                <td>${product.price}</td>
                                                <td>${product.discount}</td>
                                                <td>${product.created} ></td>
                                                <c:if test="${product.status == 'True'}">
                                                    <td>
                                                        Kích hoạt
                                                    </td>
                                                </c:if>
                                                <c:if test="${product.status == 'False'}">
                                                    <td>
                                                        Không kích hoạt
                                                    </td>
                                                </c:if>
                                                <td>
                                                    <div class="hidden-sm hidden-xs action-buttons">
                                                        <a class="blue" href="viewProduct.htm?Id=${product.productId}">
                                                            <i class="ace-icon fa fa-search-plus bigger130"></i>
                                                        </a>
                                                        <a class="green" href="initUpdateProduct.htm?Id=${product.productId}">
                                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                        </a>
                                                        <a class="red" href="deleteProduct.htm?Id=${product.productId}">
                                                            <i class="ace-icon fa fa-trash-o bigger130"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            
            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->
    </body>
</html>


