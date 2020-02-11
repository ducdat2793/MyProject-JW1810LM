/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import myProject.util.SMSUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/sms", method = RequestMethod.POST)
public class SendSMSController {

    @RequestMapping(value = "/sendSMS")
    public ModelAndView doSendSMS(HttpServletRequest request) throws IOException {
        ModelAndView model = new ModelAndView("/FontEnd/SmsResult");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");
        SMSUtil.sendSMS(phone, message);
        return model;
    }
}
