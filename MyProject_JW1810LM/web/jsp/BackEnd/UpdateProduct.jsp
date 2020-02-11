<%-- 
    Document   : UpdateProduct
    Created on : Jul 10, 2019, 8:46:20 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi"> 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <jsp:include page="Head.jsp"></jsp:include> 

        <script src="/MyProject_JW1810LM/jsp/BackEnd/js/tinymce/tinymce.min.js"
        type="text/javascript" charset="utf-8" ></script>
        <script src="/MyProject_JW1810LM/jsp/ckeditor/ckeditor.js"
        type="text/javascript" charset="utf-8" ></script>
        <script src="/MyProject_JW1810LM/jsp/ckfinder/ckfinder.js"
        type="text/javascript" charset="utf-8" ></script>

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
                                    <a href="homeBackend.htm">Trang chủ</a>
                                </li>
                                <li class="active">Quản lí sản phẩm</li>
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
                                        <f:form class="form-horizontal form-label-left" action="updateProduct.htm" commandName="updateProduct"
                                                 method="GET"  onsubmit="return validate()">
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Mã sản phẩm <span >*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="productId" class="formcontrol col-md-7 col-xs-12" path="productId" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Tên sản phẩm <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="productName"
                                                             class="form-control col-md-7 col-xs-12" path="productName" />
                                                </div>
                                            </div>                                                                                                                                  
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Giá tiền <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="price"
                                                             class="form-control col-md-7 col-xs-12" path="price" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Mô tả <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:textarea type="text" id="content" class="formcontrol col-md-7 col-xs-12" path="content" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Mô tả chi tiết <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:textarea id="contentDetail" class="form-control col-md-7 col-xs-12" path="contentDetail"/>
<                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Lượng xem<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="view"
                                                             class="form-control col-md-7 col-xs-12" path="view" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Lượng mua<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="buyItem"
                                                             class="form-control col-md-7 col-xs-12" path="buyItem" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Giảm giá<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="discount"
                                                             class="form-control col-md-7 col-xs-12" path="discount" />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Ảnh <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input id="images" type="file" class="formcontrol col-md-7 col-xs-12" path="images" />
                                                </div>
                                            </div>                                                                                  
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Trạng thái <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="status" class="form-control col-md-7
                                                              col-xs-12" path="status" >
                                                        <f:option value="True" label="Khích hoạt"/>
                                                        <f:option value="False" label="Không kích
                                                                  hoạt"/>
                                                    </f:select>
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset3">

                                                    <button class="btn btn-primary" type="button"
                                                            onclick="history.go(-1)">Quay lại</button>
                                                    <button type="submit" class="btn btn-success">Lưu</button>
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
                var editor = CKEDITOR.replace('contentDetail');
               var editor1 = CKEDITOR.replace('content');
                CKFinder.setupCKEditor(editor, 'jsp/ckfinder/');
              CKFinder.setupCKEditor(editor1, 'jsp/ckfinder/');
            </script>
            <script type="text/javascript">

            </script>           
            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->
    </body>
</html>


