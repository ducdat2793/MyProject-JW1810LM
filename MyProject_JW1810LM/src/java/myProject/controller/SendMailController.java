/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.io.UnsupportedEncodingException;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import myProject.entities.AdminUser;
import myProject.entities.User;
import myProject.model.AdminUserModel;
import myProject.model.UserModel;
import myProject.util.EmailUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/email", method = RequestMethod.POST)
public class SendMailController {

    @RequestMapping(value = "/sendEmail")
    public ModelAndView doSendEmail(HttpServletRequest request, HttpSession session) throws MessagingException, UnsupportedEncodingException {
        ModelAndView model = new ModelAndView("FontEnd/MailResult");
        request.setCharacterEncoding("UTF-8");
        // lay dia chi nguoi nhan,o day VD minh la nguoi mua hang
        UserModel userModel = new UserModel();
//binh thuong se la getuserById sau khi user da dang nhap de mua hang
       User user = userModel.getUserByEmail("ducdat2793@gmail.com");
        String recipientAddress = user.getEmail();
        // gui mail cho nguoi nhan (recipient)
        EmailUtil.sendEmail(recipientAddress, "Website bán quần áo. Xác nhận thanh toán", "Chúc mừng bạn thanh toán thành công tại shop của chúng tôi. ");
        return model;
 }
}

