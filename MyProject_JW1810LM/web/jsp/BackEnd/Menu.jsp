<%-- 
    Document   : menu
    Created on : Jun 23, 2019, 3:10:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="sidebar" class="sidebar responsive">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>
            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>
            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>
            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>
        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>
            <span class="btn btn-info"></span>
            <span class="btn btn-warning"></span>
            <span class="btn btn-danger"></span>
        </div>
    </div><!-- /.sidebar-shortcuts -->
    <ul class="nav nav-list">
        <li class="active">
            <a href="${pageContext.request.contextPath}/admin/homeBackend.htm">
                <i class="menu-icon fa fa-home"></i>
                <span class="menu-text"> Trang chủ </span>
            </a>
            <b class="arrow"></b>
        </li>
       
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"> Quản lí danh mục </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="${pageContext.request.contextPath}/adminProduct/getAllCategory.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách danh mục
                    </a>
                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/adminProduct/initInsertCategory.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Thêm mới danh mục
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text"> Quản lí tác giả </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="${pageContext.request.contextPath}/adminProduct/getAllAuthor.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách tác giả
                    </a>
                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/adminProduct/.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Thêm mới tác giả (Chưa làm)
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-table"></i>
                <span class="menu-text"> Quản lí sản phẩm </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">               
                        <li class="">
                            <a
                                href="${pageContext.request.contextPath}/adminProduct/getAll.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách sản phẩm
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="${pageContext.request.contextPath}/adminProduct/initInsertProduct.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới sản phẩm
                            </a>
                            <b class="arrow"></b>
                        </li>
                                    
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text"> Quản lí người dùng </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="" class="dropdown-toggle">

                        <span class="menu-text"> Admin</span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/adminProduct/getAllUser.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách Admin
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="<%=request.getContextPath()%>/adminProduct/initInsertAdmin.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới Admin
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>   
                 <li class="">
                    <a href="" class="dropdown-toggle">

                        <span class="menu-text"> Guest </span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="">Chưa làm
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách Guest
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="">Chưa làm
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới Guest
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>  
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"> Quản lí đơn hàng </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="<%=request.getContextPath()%>/adminProduct/getAllOrder.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách đơn hàng
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-credit-card"></i>
                <span class="menu-text"> Quản lí thẻ nạp </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="#" class="dropdown-toggle">

                        <span class="menu-text"> Thẻ nạp</span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/getAllCard.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách thẻ nạp
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="<%=request.getContextPath()%>/initInsertCard.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới thẻ nạp
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle">

                        <span class="menu-text"> Ví tiền </span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/getAllPackage.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách ví tiền
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="<%=request.getContextPath()%>/initInsertPackage.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-book"></i>
                <span class="menu-text"> Quản lí tin tức </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="<%=request.getContextPath()%>/getAllPost.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách tin tức
                    </a>
                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="<%=request.getContextPath()%>/initInsertPost.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Thêm mới tin tức
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul><!-- /.nav-list -->
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angledouble-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'collapsed')
        } catch (e) {
        }
    </script>
</div>
