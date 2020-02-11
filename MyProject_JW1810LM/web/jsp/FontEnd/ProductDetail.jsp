<%-- 
    Document   : ProductDetail
    Created on : Sep 12, 2019, 4:23:43 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="Head.jsp"></jsp:include>
        <body>
            <div class="fullLoading" style="display:none">
                <div class="cssload-ball"></div>
            </div>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="breadcrumb">
                <div class="container">
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/getData.htm">Trang chủ</a><i class="fa fa-angle-right"></i></li>
                        <li class="divide"></li>
                        <li><a href="${pageContext.request.contextPath}/homeFontEnd/getProductByPagging.htm">Tất cả sản phẩm</a><i class="fa fa-angle-right"></i></li>
                        <li class="divide"></li>  
                        <li><span>${product.productName}</span></li>
                                            
                    </ul>
                </div>
            </div>
            <section class="product-single">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="product-image">
                                <div class="featured-image" style="text-align: center;">

                                    <a href="../jsp/FontEnd/images/${product.images}">
                                    <img id="product-featured-image" src="../jsp/FontEnd/images/${product.images}" data-zoom-image="../jsp/FontEnd/images/${product.images}" class="img-fix" alt="${product.productName}">
                                </a>              
                            </div>
                            <div class="thumbnail-images" id="thumbmail-images">
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <h1 itemprop="name">${product.productName}</h1>


                        <p class="product-vendor">Nhà sản xuất: Nhà sách A</p>
                        <div class="short-desc" itemprop="description">
                           
                        </div>
                         <a href="<%=request.getContextPath()%>/CartController/addCart.htm?id=${product.productId}" title="Cho vào giỏ hàng">
                                                                <div><i class="icon-shopping-cart"></i><span>Cho vào
                                                                        giỏ hàng</span></div>
                                                            </a>

                    </div>
                </div>
                <div class="product-tabs">
                    <ul class="list-unstyled navtabs">
                        <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Mô tả sản phẩm</a></li>
                    
                        <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">Chính sách đổi trả</a></li>
                    </ul>
                    <div class="tab-content">
                        
                        <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                            <div class="entry-content">  
                                   <p><b>Thông tin sản phẩm : </b>${product.content}</p>   <br>
                        <p> <b>Thông tin chi tiết sản phẩm :</b> ${product.contentDetail}</p>   <br>
                        <p><b>Lượng xem : </b>${product.view}</p>   <br>
                        <p><b>Lượng mua :</b> ${product.buyItem}</p>   <br>
                        <p><b>Giảm giá : </b>${product.discount}%</p>   <br> 
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab3"><div style="line-height:24px">
                                <b>1. Đổi trả theo nhu cầu khách hàng (đổi trả hàng vì không ưng ý)</b>
                                <br>
                                Tất cả mặt hàng đã mua đều có thể hoàn trả trong vòng 30 ngày kể từ ngày nhận hàng (trừ khi có quy định gì khác). Chúng tôi chỉ chấp nhận đổi trả cho các sản phẩm còn nguyên điều kiện ban đầu, còn hóa đơn mua hàng & sản phẩm chưa qua sử dụng, bao gồm:
                                <br>
                                - Còn nguyên đóng gói và bao bì không bị móp rách
                                <br>
                                - Đầy đủ các chi tiết, phụ kiện
                                <br>
                                - Tem / phiếu bảo hành, tem thương hiệu, hướng dẫn kỹ thuật và các quà tặng kèm theo (nếu có) v.v… phải còn đầy đủ và nguyên vẹn
                                <br>
                                - Không bị dơ bẩn, trầy xước, hư hỏng, có mùi lạ hoặc có dấu hiệu đã qua qua sử dụng
                                <br>
                                <b>2. Đổi trả không vì lý do chủ quan từ khách hàng</b>
                                <br>
                                2.1. Hàng giao không mới, không nguyên vẹn, sai nội dung hoặc bị thiếu
                                <br>
                                Chúng tôi khuyến khích quý khách hàng phải kiểm tra tình trạng bên ngoài của thùng hàng và sản phẩm trước khi thanh toán để đảm bảo rằng hàng hóa được giao đúng chủng loại, số lượng, màu sắc theo đơn đặt hàng và tình trạng bên ngoài không bị tác động.
                                <br>
                                Nếu gặp trường hợp này, Quý khách vui lòng từ chối nhận hàng và/hoặc báo ngay cho bộ phận hỗ trợ khách hàng để chúng tôi có phương án xử lí kịp thời. (Xin lưu ý những bước kiểm tra sâu hơn như dùng thử sản phẩm chỉ có thể được chấp nhận sau khi đơn hàng được thanh toán đầy đủ).
                                <br>
                                Trong trường hợp khách hàng đã thanh toán, nhận hàng và sau đó phát hiện hàng hóa không còn mới nguyên vẹn, sai nội dung hoặc thiếu hàng, xin vui lòng chụp ảnh sản phẩm gửi về hộp thư của chúng tôi để được chúng tôi hỗ trợ các bước tiếp theo như đổi/trả hàng hoặc gửi sản phẩm còn thiếu đến quý khách…
                                <br>
                                Sau 48h kể từ ngày quý khách nhận hàng, chúng tôi có quyền từ chối hỗ trợ cho những khiếu nại theo nội dung như trên.
                                <br>
                                2.2. Hàng giao bị lỗi
                                <br>
                                Khi quý khách gặp trục trặc với sản phẩm đặt mua của chúng tôi, vui lòng thực hiện các bước sau đây:
                                <br>
                                - Bước 1: Kiểm tra lại sự nguyên vẹn của sản phẩm, chụp lại ảnh sản phẩm xuất hiện lỗi
                                <br>
                                - Bước 2: Quý khách liên hệ với trung tâm chăm sóc khách hàng của chúng tôi để được xác nhận
                                <br>
                                - Bước 3: Trong vòng 30 ngày kể từ ngày nhận hàng, nếu quý khách được xác nhận từ trung tâm chăm sóc khách hàng rằng sản phẩm bị lỗi kỹ thuật, quý khách vui lòng truy cập ngay Hướng dẫn đổi trả hàng để bắt đầu quy trình đổi trả hàng
                                <br>
                                <b>3. Phương thức hoàn tiền</b>
                                <br>
                                Tùy theo lí do hoàn trả sản phẩm kết quả đánh giá chất lượng tại kho, chúng tôi sẽ có những phương thức hoàn tiền với chi tiết như sau:
                                <br>
                                - Hoàn tiền bằng mã tiền điện tử dùng để mua sản phẩm mới
                                <br>
                                - Đổi sản phẩm mới cùng loại
                                <br>
                                - Chuyển khoản qua ngân hàng theo thông tin của quý khách cung cấp
                                <br>
                                - Riêng đối với các đơn hàng thanh toán qua thẻ tín dụng quốc tế, chúng tôi sẽ áp dụng hình thức hoàn tiền vào tài khoản thanh toán của chủ thẻ
                                <br>
                                - Hoàn tiền mặt trực tiếp tại văn phòng
                                <br>
                                Mọi chi tiết hoặc thắc mắc quý khách vui lòng liên hệ với chúng tôi qua số điện thoại hỗ trợ hoặc để lại lời nhắn tại website. Xin chân thành cảm ơn.
                            </div></div> 

                    </div>
                </div>

            </div>
        </section>
                                
     
    </body>
</html>

