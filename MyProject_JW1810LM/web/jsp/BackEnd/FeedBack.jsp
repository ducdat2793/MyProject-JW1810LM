

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>

        <script src="../jsp/BackEnd/js/count.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#feeback').dataTable({
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
                            <li class="active">Quản lý phản hồi</li>
                        </ul><!-- /.breadcrumb -->
                    </div>
                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-header"> Danh sách phản hồi </div>
                                <div>    
                                    <table id="feeback" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Mã phản hồi</th>
                                                <th>Tên khách hàng</th>
                                                <th>Email</th>
                                                <th>Nội dung</th>
                                                <th>Trạng thái</th>

                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listFeeback}" var="feeback">
                                                <tr>
                                                    <td>
                                                        ${feeback.feebackId}
                                                    </td>
                                                    <td>${feeback.name}</td>
                                                    <td >${feeback.email}</td>

                                                    </td>                                               
                                                    <td>
                                                        ${feeback.content}
                                                    </td>
                                                    <td>
                                                        <c:if test="${feeback.status == true}">                                                      
                                                            <p><c:out value = "Đã duyệt"/>  </p>                                                                                                               
                                                        </c:if>
                                                        <c:if test="${feeback.status == false}">                                                       
                                                            <p><c:out value = "Chưa duyệt"/>  </p>                                                         
                                                        </c:if>
                                                    </td>
                                                    <td>                                                                                                   
                                                        <c:if test="${feeback.status == true}">      
                                                            <a href="${pageContext.request.contextPath}/adminProduct/updateFeeback.htm?Id=${feeback.feebackId}" class="btn btn-primary">Duyệt</a>                                                                
                                                        </c:if>
                                                        <c:if test="${feeback.status == false}">                                                       
                                                            <a href="${pageContext.request.contextPath}/adminProduct/updateFeeback.htm?Id=${feeback.feebackId}" class="btn btn-danger">Duyệt</a>                                                       
                                                        </c:if>                                                                                                                                                         

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
