<%-- 
    Document   : InsertAdmin
    Created on : Nov 19, 2019, 9:37:56 AM
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
            function Validate() {
                var userName = document.getElementById("userName").value;
                var password = document.getElementById("password").value;
                var email = document.getElementById("email").value;
                var phone = document.getElementById("phone").value;
                var address = document.getElementById("address").value;

                if (userName != "" && password != "" && email != "" && phone != "" && address != "") {
                    return true;

                } else {
                    if (userName == "") {
                        swal("Bạn phải nhập tên đăng nhập.");
                        document.getElementById("userName").focus();
                        return false;
                    }
                    //                    co the viet them check ma userName da ton tai chua
                    if (password == "") {
                        swal("Bạn phải nhập mật khẩu.");
                        document.getElementById("password").focus();
                        return false;
                    }
                    if (email == "") {
                        swal("Bạn phải nhập email.");
                        document.getElementById("email").focus();
                        return false;
                    }
                    if (phone == "") {
                        swal("Bạn phải nhập số điện thoại.");
                        document.getElementById("phone").focus();
                        return false;
                    }
                    if (address == "") {
                        swal("Bạn phải nhập địa chỉ.");
                        document.getElementById("address").focus();
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
                                <li class="active">Thêm mới Admin</li>
                            </ul><!-- /.breadcrumb -->
                        </div>
                        <div class="page-content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Quản lí tài khoản <small> >> Thêm mới tài khoản</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left"
                                                action="insertAdmin.htm" commandName="admin" onsubmit="return Validate()">
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Tên đăng nhập <span >*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" class="formcontrol col-md-7 col-xs-12" id="userName" path="userName"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Mật khẩu <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" class="form-control col-md-7 col-xs-12" id="password" path="password" />
                                                </div>
                                            </div>                                                                                                                                  
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="first-name">Email <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="email" class="form-control col-md-7 col-xs-12" id="email" path="email" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Số điện thoại <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" class="form-control col-md-7 col-xs-12" id="phone"  path="phone" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs12" for="last-name">Địa chỉ <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" class="form-control col-md-7 col-xs-12" id="address"  path="address" />
                                                </div>
                                            </div>                                               
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset3">

                                                    <button class="btn btn-primary" type="button"
                                                            onclick="history.go(-1)">Quay lại</button>
                                                    <button type="submit" class="btn btn-success">Thêm mới tài khoản</button>
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

            <jsp:include page="Footer.jsp"></jsp:include>
        </div><!-- /.main-container -->
    </body>
</html>
