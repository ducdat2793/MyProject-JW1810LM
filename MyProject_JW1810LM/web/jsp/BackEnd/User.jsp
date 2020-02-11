<%-- 
    Document   : User
    Created on : Aug 13, 2019, 8:45:58 PM
    Author     : Nguyen Duc Dat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#user').dataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
                });
            });
        </script>

        <body class="no-skin">
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="main-container" id="main-container">
                <script type="text/javascript">
                    try {
                        ace.settings.check('main-container', 'fixed')
                    } catch (e) {
                    }
                </script>
                <script src="/MyProject_JW1810LM/jsp/BackEnd/js/test.js" type="text/javascript"></script>

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
                                    <a href="${pageContext.request.contextPath}/admin/homeBackend.htm">Home</a>
                            </li>
                            <li class="active">Dashboard</li>
                        </ul><!-- /.breadcrumb -->


                    </div>

                    <div class="page-content">

                        <div class="row">
                            <div class="col-xs-12 col-md-10">
                                <div class="table-header">
                                    Danh sách người dùng
                                </div>

                                <div>    
                                    <table id="user" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>                                               
                                                <th>Mã người dung</th>
                                                <th>Tên đăng nhập</th>
                                                <th>Mật khẩu</th>
                                                <th>Địa chỉ</th>
                                                <th>Email</th>
                                                <th>Số điện thoại</th>
                                                 <th>Ngày tạo</th>
                                                <th class="hidden-480">Trạng thái</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listUser}" var="user">
                                                <tr>                                                 
                                                    <td>
                                                        ${user.userId}
                                                    </td>
                                                    <td>${user.userName}</td>
                                                    <td>${user.password}</td>
                                                    <td>${user.address}</td>
                                                    <td>${user.email}</td>
                                                    <td>${user.phone}</td>
                                                    <td>${user.created}</td>
                                                    <c:if test="${user.status == 'True'}">
                                                        <td>
                                                            Kích hoạt
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${user.status == 'False'}">
                                                        <td>
                                                            Không kích hoạt
                                                        </td>
                                                    </c:if>


                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons">                                                           
                                                            <a class="green" href="initUpdateUser.htm?Id=${user.userId}">
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>
                                                            <a class="red" href="deleteUser.htm?Id=${user.userId}">
                                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
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
