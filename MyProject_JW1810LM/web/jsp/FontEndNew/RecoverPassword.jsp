<%-- 
    Document   : RecoverPassword
    Created on : Oct 12, 2019, 7:20:52 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <jsp:include page="Head.jsp"></jsp:include>  
    <body>
         <jsp:include page="Header.jsp"></jsp:include>  
         <div class="body-content">
             <div class="container">
                 <div class="sign-in-page">
                     <div class="row">
                         <div class="col-md-6 col-sm-6 sign-in">
                                <h4 class="">Tìm mật khẩu</h4>                
                             <p class="">Mời bạn điền Email đăng ký</p>
                            <div>${message}</div>
                         <f:form action="${pageContext.request.contextPath}/homeFontEnd/recoverPassword.htm" commandName="user"
                                    class="register-form outer-top-xs" role="form">
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Địa chỉ email <span>*</span></label>
                                    <f:input type="email" class="form-control unicase-form-control text-input" id="email" path="email"/>
                                </div>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Gửi</button>
                            </f:form>					
                        </div>                         
                     </div>  
                 </div>   
             </div>
         </div>
        
         
         
         
          <jsp:include page="Footer.jsp"></jsp:include>
                <script src="../jsp/FontEndNew/js/jquery-1.11.1.min.js"></script> 
                <script src="../jsp/FontEndNew/js/bootstrap.min.js"></script> 
                <script src="../jsp/FontEndNew/js/bootstrap-hover-dropdown.min.js"></script> 
                <script src="../jsp/FontEndNew/js/owl.carousel.min.js"></script> 
                <script src="../jsp/FontEndNew/js/echo.min.js"></script> 
                <script src="../jsp/FontEndNew/js/jquery.easing-1.3.min.js"></script> 
                <script src="../jsp/FontEndNew/js/bootstrap-slider.min.js"></script> 
                <script src="../jsp/FontEndNew/js/jquery.rateit.min.js"></script> 
                <script type="text/javascript" src="../jsp/FontEndNew/js/lightbox.min.js"></script> 
                <script src="../jsp/FontEndNew/js/bootstrap-select.min.js"></script> 
                <script src="../jsp/FontEndNew/js/wow.min.js"></script> 
                <script src="../jsp/FontEndNew/js/scripts.js"></script>
    </body>
       
    
</html>
