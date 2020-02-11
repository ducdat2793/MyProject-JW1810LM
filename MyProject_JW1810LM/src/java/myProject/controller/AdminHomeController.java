/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import myProject.entities.AdminUser;
import myProject.entities.User;
import myProject.model.FeebackModel;
import myProject.model.AdminUserModel;
import myProject.model.OrderModel;
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
@RequestMapping(value = "/admin")
public class AdminHomeController {

    private AdminUserModel adminModel;
    private FeebackModel feebackModel;
    private OrderModel orderModel;

    public AdminHomeController() {
        adminModel = new AdminUserModel();
        feebackModel = new FeebackModel();
        orderModel = new OrderModel();
    }

    @RequestMapping(value = "/adminInitLogin")
    public ModelAndView adminInitLogin() {
        ModelAndView model = new ModelAndView("BackEnd/Login");
        AdminUser user = new AdminUser();
        model.addObject("user", user);
        return model;

    }

    @RequestMapping(value = "/adminLogin")
    public String loginBackend(@ModelAttribute("user") AdminUser user, ModelMap mm, HttpSession session) {
        boolean result = false;
        result = adminModel.checkLogin(user);
        if (result) {
            //lay ten de hien thi "xin chao user" o trang home
            session.setAttribute("user", user.getUserName());
            return "redirect: homeBackend.htm";
        } else {
            mm.put("message", "Sai thông tin đăng nhập.");
            return "BackEnd/Login";
        }
    }

    @RequestMapping(value = "/adminLogOut")
    public String logOutBackend(@ModelAttribute("user") AdminUser admin, HttpSession session) {

        session.removeAttribute("user");

        return "redirect: homeBackend.htm";
    }

    @RequestMapping(value = "/homeBackend")
    public ModelAndView homeBackEnd(HttpSession session) {
        ModelAndView model;
        float totalMoney = 0;
        int totalFeeback;
        if (CheckUrl.check(session)) {
            model = new ModelAndView("BackEnd/Home");
            int totalUser = adminModel.getTotalUser();
            int totalOrder = orderModel.getTotalOrder();
            totalFeeback = feebackModel.getTotalFeeback();
            totalMoney = orderModel.getTotalMoney();
            model.getModelMap().put("totalUser", totalUser);
            model.getModelMap().put("totalOrder", totalOrder);
            model.getModelMap().put("totalMoney", totalMoney);
            model.getModelMap().put("totalFeeback", totalFeeback);
            return model;
        } else {
            model = new ModelAndView("BackEnd/Login");
            AdminUser user = new AdminUser();
            model.getModelMap().put("user", user);
        }
        return model;
    }

    @RequestMapping(value = "/backEndRecoverPass")
    public ModelAndView recoverPassword(@ModelAttribute("user") AdminUser adminUser, ModelMap mm, HttpSession session) throws MessagingException {
        ModelAndView model = new ModelAndView("FontEndNew/RecoverPasswordSucc");
        if (adminModel.checkUserAdminEmail(adminUser.getEmail())) {
            adminUser = adminModel.getUserAdminByEmail(adminUser.getEmail());
            String content = "<div><p>Email đăng nhập:</p>" + adminUser.getEmail() + "<br><p>Số điện thoại:</p>" + adminUser.getPhone() + "<br><p>Mật khẩu:</p> " + adminUser.getPassword() + "</div>";
            EmailUtil.sendEmail(adminUser.getEmail(), "Website E-Book. Xác nhận gửi mật khẩu.", "Đây là thông tin tài khoản của bạn: " + content);
            mm.put("Email", adminUser.getEmail());
        } else {
            mm.put("message", "Email chưa được dùng để đăng ký");
            AdminUser user = new AdminUser();
            model.getModelMap().put("user", user);
            model = new ModelAndView("BackEnd/Login");
        }
        return model;
    }
}
