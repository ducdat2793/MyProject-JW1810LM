/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import myProject.entities.AdminUser;
import myProject.entities.Cart;
import myProject.entities.Common;
import myProject.entities.Order;
import myProject.entities.OrderDetail;
import myProject.entities.User;
import myProject.model.AdminUserModel;
import myProject.model.OrderModel;
import myProject.model.ProductModel;
import myProject.model.UserModel;
import myProject.util.EmailUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "homeCheckOut")
public class CheckOutController {

    @RequestMapping(value = "initPayment")
    public ModelAndView initPayment(HttpSession session, ModelMap mm) {
        UserModel userModel = new UserModel();
        ModelAndView model;
        //lay thong tin email
        String email = (String) session.getAttribute("Email");
        if (email != null) {
            model = new ModelAndView("FontEndNew/CheckOut");
            //lay user bang email tren session
            User user = userModel.getUserByEmail(session.getAttribute("Email").toString());
            //truyen vao model doi tuong us de lay thong tin len form
            model.getModelMap().put("us", user);
            return model;
        } else {
            model = new ModelAndView("FontEndNew/SignIn");
            mm.put("thongBao", "Bạn chưa đăng nhập, đăng nhập để tiếp tục mua hàng.");
            User account = new User();
            User register = new User();
            model.addObject("account", account);
            model.addObject("register", register);
            return model;
        }
    }

    @RequestMapping(value = "payment")
    public ModelAndView payment(HttpSession session, HttpServletRequest request) throws MessagingException {
        ModelAndView model = null;
        UserModel userModel = new UserModel();
        OrderModel orderModel = new OrderModel();
        ProductModel productModel = new ProductModel();
        String merchantName = "WebSach";
// Lấy thông tin từ form về
        String accName = request.getParameter("accName");
        String accNumber = request.getParameter("accNo");
        String cvv = request.getParameter("cvv");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        Order order = new Order();
        float paymentAmount
                = Float.parseFloat(session.getAttribute("totalAll").toString().replaceAll("[.]", ""));
        //lay dc thong tin user(success)
        User us;
        us = userModel.getUserByEmail(session.getAttribute("Email").toString());
//userModel.getUserByEmail("ducdat2793@gmail.com");
        boolean result = false;
// set các thuộc tính của order
        order.setOrderName(us.getUserName());
        order.setPhone(us.getPhone());
        order.setAddress(us.getAddress());
        order.setTotalAmount(paymentAmount);
        order.setEmail(us.getEmail());
        order.setUserId(us.getUserId());

        result = orderModel.insertOrder(order);
        if (result) {
            int orderId = orderModel.getOrderIdNewByUserId(us.getUserId());
            boolean k = false;
            for (Cart listCart1 : listCart) {
//lay dc tat ca thong tin den cho nay(list cart,order,us,merchanName,accName,accNo)
// set các thuộc tính của orderDetail     
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrderId(orderId);
                orderDetail.setProductId(listCart1.getProduct().getProductId());
                productModel.updateBuyItem(listCart1.getProduct().getProductId());
                orderDetail.setProductName(listCart1.getProduct().getProductName());
                orderDetail.setPrice(Float.parseFloat(listCart1.getProduct().getPriceDiscount().replaceAll("[.]", "")));
                orderDetail.setQuantity(listCart1.getQuantity());
                orderDetail.setAmount(Float.parseFloat(listCart1.getProduct().getPriceDiscount().replaceAll("[.]", "")) * listCart1.getQuantity());
                k = orderModel.insertOrderDetail(orderDetail);
            }
            //den if k tu dong nhay ra vong lap => k = fail =>ko insert dc
            if (k) {
// Kiểm tra tài khoản
                String returnSt = checkOder(merchantName, accNumber, accName, paymentAmount, cvv);
                String arraySt[] = returnSt.split("#");
                String returnCode = arraySt[0];
                int transactionId = Integer.parseInt(arraySt[1]);
                if (returnCode.equals("00")) {
// thanh toán thành công
                    String returnCodeFinish = finishOrder(transactionId, merchantName);
                    if (returnCodeFinish.equals("00")) {
                        session.removeAttribute("listCart");
                        session.removeAttribute("totalAmount");
                        session.removeAttribute("totalAll");
                        session.removeAttribute("quantity");
                        request.setAttribute("messageSuc", "Thanh toán thành công!");
                        model = new ModelAndView("FontEndNew/PaymentSuccess");
                        EmailUtil.sendEmail(us.getEmail(), "Web sách. Xác nhận đơn hàng", "Thanh toán thành công cảm ơn bạn đã sử dụng dịch vụ của chúng tôi.");
                    } else {
                        model = new ModelAndView("PaymentFail");
                    }
                } else {
                    if (returnCode.equals("02")) {
                        request.setAttribute("message", "Tài khoản không đủ tiền");
                        model = new ModelAndView("FontEndNew/CheckOut");
                    } else {
                        request.setAttribute("message", "Thông tin tài khoản không đúng");
                        model = new ModelAndView("FontEndNew/CheckOut");
                    }
                }
            }
        }
        return model;
    }

    //doi lai kieu tra ve String cho cac phuong thuc o tren de thuc hien check url
    @RequestMapping(value = "/checkCheckOutUrl")
    public ModelAndView checkOut(HttpSession session) {
        ModelAndView model;
        if (CheckUrl.check(session)) {
            model = new ModelAndView("FontEndNew/CheckOut");
            return model;
        } else {
            model = new ModelAndView("FontEndNew/SignIn");
            User account = new User();
            User register = new User();
            model.addObject("account", account);
            model.addObject("register", register);
        }
        return model;
    }

    private static String checkOder(java.lang.String merchantName, java.lang.String accNo, java.lang.String accName, float paymentAmount, java.lang.String cvv) {
        ws.BankPaymentWs_Service service = new ws.BankPaymentWs_Service();
        ws.BankPaymentWs port = service.getBankPaymentWsPort();
        return port.checkOder(merchantName, accNo, accName, paymentAmount, cvv);
    }

    private static String finishOrder(int transactionId, java.lang.String merchantName) {
        ws.BankPaymentWs_Service service = new ws.BankPaymentWs_Service();
        ws.BankPaymentWs port = service.getBankPaymentWsPort();
        return port.finishOrder(transactionId, merchantName);
    }

}
