<%-- 
    Document   : Author
    Created on : Nov 19, 2019, 9:13:49 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <title>Danh mục tác giả</title>
        <jsp:include page="Head.jsp"></jsp:include>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#category').dataTable({
                        "pagingType": "full_numbers",
                        "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
                    });
                });
            </script>
        </head>

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
                    <div class="row">
                        <div class="col-xs-12 col-md-10">
                          
                            <div>    
                                <div class="table-header"> Danh sách tác giả </div>
                                <div>    
                                    <table id="category" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Mã tác giả</th>
                                                <th>Tên tác giả</th>
                                                <th>Thông tin tác giả</th>                                                
                                                <th>Trạng thái</th>
                                                <th>Thêm/Sửa/Xóa</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listAuthor}" var="author">
                                                <tr>
                                                    <td>${author.authorId}</td>
                                                    <td>${author.authorName}</td>
                                                    <td >${author.authorInformation}</td>                                          
                                                    <td>${author.status}</td>                                                                        
                                                    <td>                                                                                                   
                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                            <a class="blue" href="viewProduct.htm?Id=${product.productId}">Chưa làm
                                                                <i class="ace-icon fa fa-search-plus bigger130"></i> 
                                                            </a>
                                                            <a class="green" href="initUpdateProduct.htm?Id=${product.productId}">Chưa làm
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>
                                                            <a class="red" href="">Chưa làm
                                                                <i class="ace-icon fa fa-trash-o bigger130"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
                                </div>
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->                       

    </body>
</html>
