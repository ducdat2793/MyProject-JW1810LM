<%-- 
    Document   : ViewProduct
    Created on : Jul 10, 2019, 8:52:49 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>
        <link href="/MyProject_JW1810LM/jsp/BackEnd/css/sweetalert.css" rel="stylesheet"
              type="text/css"/>
        <script src="/MyProject_JW1810LM/jsp/BackEnd/js/sweetalert.min.js"
        type="text/javascript"></script>
        <script src="/MyProject_JW1810LM/jsp/ckeditor/ckeditor.js"
        type="text/javascript"></script>
        <script src="/MyProject_JW1810LM/jsp/ckfinder/ckfinder.js"
        type="text/javascript"></script>
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
                                <li class="active">Dashboard</li>
                            </ul><!-- /.breadcrumb -->
                        </div>
                        <div class="page-content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Quản lí sản phẩm <small> >> Sửa thông tin sản
                                                    phẩm</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action=""
                                                commandName="product" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="first-name">Mã sản phẩm <span >*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="productId" 
                                                             class="formcontrol col-md-7 col-xs-12" path="productId" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="first-name">Tên sản phẩm <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="productName"
                                                             class="form-control col-md-7 col-xs-12" path="productName" readonly="true"/>
                                                </div>
                                            </div>                                           
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="last-name">Ngày nhập <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:textarea type="text" id="created" rows="1"
                                                                class="form-control col-md-7 col-xs-12" path="created" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="last-name">Mô tả <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-10 col-xs-12">
                                                    <f:textarea type="text" id="content" rows="50"
                                                                class="form-control col-md-7 col-xs-12" path="content" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="last-name">Mô tả chi tiết <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-10 col-xs-12">
                                                    <f:textarea id="contentDetail" class="form-control
                                                                col-md-7 col-xs-12" path="contentDetail" readonly="true"></f:textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-2 col-sm-2 col-xs12" for="last-name">Ảnh<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="images" class="formcontrol col-md-7 col-xs-12" path="images" readonly="true" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="first-name">Giá <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="price" class="form-control
                                                             col-md-7 col-xs-12" path="price" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="first-name">Giám giá <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="discount" class="formcontrol col-md-7 col-xs-12" path="discount" readonly="true" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs12" for="last-name">Trạng thái <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="status" class="form-control col-md-7 col-xs-12" path="status" readonly="true">
                                                        <f:option value="True" label="Khích hoạt"/>
                                                        <f:option value="False" label="Không kích hoạt"/>
                                                    </f:select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-10 col-sm-10 col-xs-12 col-mdoffset-3">
                                                    <button class="btn btn-primary" type="button"
                                                            onclick="history.go(-1)">Quay lại</button>
                                                </div>
                                            </div>
                                        </f:form>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            <script type="text/javascript">
                var editor = CKEDITOR.replace('content');
                var editor1 = CKEDITOR.replace('contentDetail');
                CKFinder.setupCKEditor(editor, 'jsp/ckfinder/');
                CKFinder.setupCKEditor(editor1, 'jsp/ckfinder/');
            </script>
            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->
    </body>
</html>