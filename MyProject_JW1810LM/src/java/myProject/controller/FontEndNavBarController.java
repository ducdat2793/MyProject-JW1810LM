/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import myProject.entities.Feeback;
import myProject.model.FeebackModel;
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
@RequestMapping(value = "navBar")
public class FontEndNavBarController {

    private FeebackModel feebackModel;

    public FontEndNavBarController() {
        feebackModel = new FeebackModel();
    }

    @RequestMapping(value = "/contact")
    public ModelAndView contactFontend() {
        ModelAndView model = new ModelAndView("FontEndNew/Contact");
        Feeback feeback = new Feeback();
        //    List<Product> listProductHot = proModel.getProductHot();            
        //    model.getModelMap().put("listCatalog", listCatalog);
        // model.getModelMap().put("listProductHot", listProductHot);           
        model.getModelMap().put("feeback", feeback);
        return model;
    }

    @RequestMapping(value = "confirmFeeback")
    public ModelAndView confirmFeeback(@ModelAttribute("feeback") Feeback feeback) {
        boolean result = feebackModel.insertFeeback(feeback);
        ModelAndView model = new ModelAndView("FontEndNew/Contact");
        if (result) {
            model.getModelMap().put("tb", "Gửi phản hồi thành công ^_^ ");
            return model;
        } else {
            model.getModelMap().put("tb1", "Gửi phản hồi không thành công vui lang thử lại.");
            return model;
        }
    }
       
    @RequestMapping(value = "/blog")
    public ModelAndView blogFontEnd() {
        ModelAndView model = new ModelAndView("FontEndNew/BlogPage");
                   
        return model;
    }
    
      @RequestMapping(value = "/about")
    public ModelAndView aboutFontEnd() {
        ModelAndView model = new ModelAndView("FontEndNew/About");
                   
        return model;
    }
}
