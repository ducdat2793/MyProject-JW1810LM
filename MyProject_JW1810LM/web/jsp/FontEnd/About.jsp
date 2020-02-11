<%-- 
    Document   : About
    Created on : Sep 3, 2019, 4:17:57 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en"> 
    <jsp:include page="Head.jsp"></jsp:include>
        <body>
            <div class="fullLoading" style="display:none">
                <div class="cssload-ball"></div>
            </div>
            <jsp:include page="Header.jsp"></jsp:include>
        <jsp:include page="Menu.jsp"></jsp:include>
        

<!--            <div class="breadcrumb">
                <div class="container">
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a></li>
                    <li class="divide"><i class="fa fa-angle-right"></i></li>
                    <li><span>Giới thiệu</span></li>

                </ul>
            </div>
        </div>-->

        <section class="collection collection-grid">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-3">

                        <div class="page-title" style="background-image:url('/')">        
                            <h1>Giới thiệu</h1>
                        </div>



                        <div class="entry-content">
                            <p><strong>E-Book HN&nbsp;- Website mua sách trực tuyến hàng đầu Việt Nam</strong></p>

                            <p>Với hơn 80,000 đầu sách trong mọi lĩnh vực (và tiếp tục tăng mỗi ngày), E-Book HN tự hào là nhà sách trên mạng có số lượng đầu sách lớn nhất Việt Nam, bạn có thể tìm được bất kỳ quyển sách nào cho mọi nhu cầu đọc sách của bạn.!</p>

                            <p><strong>E-Book HN - Món quà tặng người thân thật ý nghĩa!</strong></p>

                            <p><strong>E-Book HN</strong> sẽ gợi ý cho bạn những món quà thật ý nghĩa để tặng người thân, bạn bè. Chúng tôi sẽ làm bạn hài lòng với sự lựa chọn của mình bằng giá tốt nhất và chất lượng dịch vụ hoàn hảo của E-Book HN.</p>

                            <p>Bạn có thể mua sắm thoải mái trên E-Book HN mà không có bất kỳ lo lắng nào: trả hàng trong vòng 30 ngày kể từ ngày nhận hàng. Nếu bạn có bất kì câu hỏi nào về các sản phẩm của chúng tôi hãy gọi ngay tới bộ phận chăm sóc khách hàng.</p>
                        </div>








                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-md-pull-8 col-lg-3 col-lg-pull-9">
                            <div class="widget_collection"> 

                                <div class="main-category has-icon">
                                    <h2><i class="fa fa-bars"></i> Danh mục sản phẩm</h2>            
                                    <!-- Mobile Category -->  

                                    <!-- Desktop Category -->
                                    <ul class="list-unstyled hidden-md hidden-lg mobile-category mobile-menu dropList" id="mobile-category" style="display:none">

                                    <c:forEach items="${listCatalog}" var="catalog">
                                        <li>

                                            <a href="" >${catalog.catalogName}</a>

                                           
                                        </li>



                                    </c:forEach>


                                </ul>

                                <ul class="list-unstyled hidden-xs hidden-sm desktop-category">
                                    <c:forEach items="${listCatalog}" var="catalog">

                                        <li class="has-subcate has-banner">
                                            <a href="getProductByCatalog.htm?Id=${catalog.catalogId}">${catalog.catalogName}</a>


                               
                                        </li>


                                    </c:forEach>

                                </ul>
                            </div>
                           
                        </div>
                        <script src='/SpringFrameworks/jsp/Fontend/js/search_filter.js' type='text/javascript'></script>
                      
                        <script>
                                var selectedSortby;
                                var collection_id;
                                var selectedViewData = "data";
                                var filter = new Bizweb.SearchFilter();
                                window.inPageCollection = true;

                                collection_id = "437151";
                                filter.addValue("collection", "collections", "437151", "AND");


                        </script>

 <div class="widget_collection">
                            <h2>Sản phẩm nổi bật</h2>
                            <ul class="list-unstyled list-products">
                                <c:forEach items="${listProductHot}" var="hot">
                                <li>
                                    <a class="image" href="productDetail.htm?Id=${hot.productId}" onclick="updateView(${hot.productId})">

                                        <img src="/SpringFrameworks/jsp/Fontend/images/${hot.images}" title="${hot.productName}" alt="${hot.productName}">

                                    </a>
                                    <div class="info">
                                        <h3 title="${hot.productName}"><a href="productDetail.htm?Id=${hot.productId}" onclick="updateView(${hot.productId})">${hot.productName}</a></h3>
                                        <p class="price">

                                            <span>${hot.priceOutput}đ</span>

                                        </p>
                                    </div>
                                </li>

                                </c:forEach>

                            </ul>        
                        </div>

                    
                    </div>
                </div>
            </div>
        </section> 

        <jsp:include page="Footer.jsp"></jsp:include>



        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
                var topLinklists = $('.top-linklists').html();
                $('#top-linklists-mobile').html(topLinklists);
            })
        </script>


        <script src='js/jquery.lazyload.min.js' type='text/javascript'></script> 

        <script src='js/plugin_necessary.js' type='text/javascript'></script>
        <script src='js/main.js' type='text/javascript'></script>
    </body>
</html>