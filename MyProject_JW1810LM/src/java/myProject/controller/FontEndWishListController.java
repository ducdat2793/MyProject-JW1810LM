/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import com.google.gson.annotations.JsonAdapter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import myProject.entities.Product;
import myProject.entities.WishList;
import myProject.model.ProductModel;
import org.springframework.http.HttpStatus;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "wishList")
public class FontEndWishListController {

    private ProductModel proModel;

    public FontEndWishListController() {
        proModel = new ProductModel();
    }

    //con van de lien quan den dang nhap khi thuc hien add vao wishList
    @RequestMapping(value = "/wl")
    public ModelAndView wl(@RequestParam("Id") String Id, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/WishList");
        //   model.getModelMap().put("Id", Id);
        session.setAttribute("Id", Id);

        //     PrintWriter writer =response.getWriter();
        return model;

    }

    @RequestMapping(value = "/addWishList")
    public String WishList(@RequestParam("Id") String Id, HttpSession session) {
        List<WishList> listWishlist = (List<WishList>) session.getAttribute("listWL");
        Product proAdd = proModel.getProductById(Id);
        //truong hop wishlist null
        if (listWishlist == null) {
            WishList wish = new WishList(proAdd);
            listWishlist = new ArrayList<>();
            listWishlist.add(wish);
            return "1";
            //truong hop wishlist da ton tai trong listWishList
        } else {
            boolean check = false;
            for (WishList wish : listWishlist) {
                if (wish.getProduct().getProductId().equals(Id)) {
                    //truong hop san pham da ton tai trong wishList
                    //wishList khong can quantity
                    check = true;
                    break;
                }
                return "2";
            }
            if (!check) {
                //truong hop san pham chua ton tai trong listWishList
                WishList wish = new WishList(proAdd);
                listWishlist.add(wish);
            }
        }
        session.setAttribute("listWL", listWishlist);
        return "3";
    }

//        List<WishList> listWishlist = (List<WishList>) session.getAttribute("listWL");
//        Product proAdd = proModel.getProductById(Id);
//        //truong hop wishlist null
//        if (listWishlist == null) {
//            WishList wish = new WishList(proAdd);
//            listWishlist = new ArrayList<>();
//            listWishlist.add(wish);
//            //truong hop wishlist da ton tai trong listWishList
// return"datontai";
//        } else {
//            boolean check = false;
//            for (WishList wish : listWishlist) {
//                if (wish.getProduct().getProductId().equals(Id)) {
//                    check = true;
//                    break;
//                }
    //       return"dathanhcong";
//            }
//            if (!check) {
//                //truong hop san pham chua ton tai trong listWishList
//                WishList wish = new WishList(proAdd);
//                listWishlist.add(wish);
//            }
//        }
//  session.setAttribute("listWL", listWishlist); 
//       return listWishlist;
//array(sussces:done;  )
    //Xóa item trong wishList
    @RequestMapping(value = "/removeWishList")
    public ModelAndView removeWishList(String Id, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/WishList");

        // lấy danh sách sản phẩm trên sesion
        List<WishList> listWishlist = (List<WishList>) session.getAttribute("listWL");
        for (int i = 0; i < listWishlist.size(); i++) {
            if (listWishlist.get(i).getProduct().getProductId().equals(Id)) {
                // neu sp ton tai thi remove
                listWishlist.remove(i);

                break;
            }
        }
        // luu danh sách sản phẩm và tổng tiền
        session.setAttribute("listWL", listWishlist);
        return model;
    }

    @ResponseBody
    @RequestMapping(value = "/addnew")
    public ModelAndView addNew(@RequestParam("Id") String Id, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/WishList");
        List<WishList> listWishlist = (List<WishList>) session.getAttribute("listWL");
        Product product = proModel.getProductById(Id);
        if (listWishlist == null) {
            WishList wish = new WishList(product);
            listWishlist = new ArrayList<>();
            listWishlist.add(wish);
            //truong hop wishlist da ton tai trong listWishList
        } else {
            boolean check = false;
            for (WishList wish : listWishlist) {
                if (wish.getProduct().getProductId().equals(Id)) {
                    check = true;
                    break;
                }
            }
            if (!check) {
                //truong hop san pham chua ton tai trong listWishList
                WishList wish = new WishList(product);
                listWishlist.add(wish);
            }
        }
        session.setAttribute("listWL", listWishlist);
        return model;
    }
}
