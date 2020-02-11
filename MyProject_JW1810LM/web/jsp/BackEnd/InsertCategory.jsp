<%-- 
    Document   : InsertCategory
    Created on : Nov 16, 2019, 11:53:26 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>
    <script>
            function cateValidate() {
                var cateId = document.getElementById("cateId").value;
                var cateName = document.getElementById("cateName").value;
                 var cateType = document.getElementById("cateType").value;
              
                if (cateId != "" && cateName != "" && cateType != "") {
                    return true;

                } else {
                    if (cateId == "") {
                        swal("Bạn phải nhập mã danh mục.");
                        document.getElementById("cateId").focus();
                        return false;
                    } 
//                    co the viet them check ma danh muc da ton tai chua
                    if (cateName == "") {
                        swal("Bạn phải nhập tên danh mục.");
                        document.getElementById("cateName").focus();
                        return false;
                    }
                    if (cateType == "" || cateType == 0) {
                        swal("Bạn phải nhập số loại danh mục.");
                        document.getElementById("cateType").focus();
                        return false;
                    }
                }
            }
        </script>

        <script src="/MyProject_JW1810LM/jsp/BackEnd/js/tinymce/tinymce.min.js"
        type="text/javascript" charset="utf-8" ></script>
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
                                    <a href="homeBackend.htm">Trang chủ</a>
                                </li>
                                <li class="active">Thêm mới danh mục sản phẩm</li>
                            </ul><!-- /.breadcrumb -->
                        </div>
                        <div class="page-content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Quản lí danh mục <small> >> Thêm mới danh mục</small></h4>
                                            <div class="clearfix"></div>

                                        <f:form class="form-horizontal form-label-left"
                                                action="insertCategory.htm" commandName="cate" onsubmit="return cateValidate()">
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Mã danh mục <span >*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="cateId" class="formcontrol col-md-7 col-xs-12" path="categoryId"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Tên danh mục <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="cateName"
                                                             class="form-control col-md-7 col-xs-12" path="categoryName" />
                                                </div>
                                            </div>                                                                                                                                  
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Chi tiết danh mục <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="content"
                                                             class="form-control col-md-7 col-xs-12" path="categoryDetail" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Loại <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                      <f:select class="form-control" style="width:45%" path="type" id="cateType">
                                                            <option></option>
                                                            <option>1</option>
                                                            <option>2</option> 
                                                            <option>3</option>
                                                        </f:select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Trạng thái <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select class="form-control" style="width:45%" path="status">
                                                            <option></option>
                                                            <option>True</option>
                                                            <option>False</option>                                                        
                                                        </f:select>
                                                    </div>
                                                </div>

                                                <div class="ln_solid"></div>
                                                <div class="form-group">
                                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset3">

                                                        <button class="btn btn-primary" type="button"
                                                                onclick="history.go(-1)">Quay lại</button>
                                                        <button type="submit" class="btn btn-success">Thêm mới</button>
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
                var editor1 = CKEDITOR.replace('content');               
                CKFinder.setupCKEditor(editor1, 'jsp/ckfinder/');
            </script>
            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->
    </body>
</html>