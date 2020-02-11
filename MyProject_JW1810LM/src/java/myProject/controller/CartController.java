/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import myProject.entities.Cart;
import myProject.entities.Common;
import myProject.entities.Product;
import myProject.model.CartModel;
import myProject.model.ProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "CartController")
public class CartController {

    private ProductModel proModel;
    private CartModel cartModel;

    public CartController() {
        proModel = new ProductModel();
        cartModel = new CartModel();
    }

    @RequestMapping(value = "/addCart")
    public ModelAndView addCart(@RequestParam("Id") String Id, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/Cart");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        Product proAdd = proModel.getProductById(Id);

        if (listCart == null) {
            Cart cart = new Cart(proAdd, 1);
            listCart = new ArrayList<>();
            listCart.add(cart);

        } else {
            boolean check = false;
            for (Cart cart : listCart) {
                if (cart.getProduct().getProductId().equals(Id)) //truong hop san pham da ton tai trong listCart
                {
                    check = true;
                    cart.setQuantity(cart.getQuantity() + 1);
                    break;
                }
            }
            if (!check) {
                //truong hop san pham chua ton tai trong listCart
                Cart cart = new Cart(proAdd, 1);
                //truong hop san pham chua ton tai trong listCart
                listCart.add(cart);
            }
        }
        //add lai listCart vao session 
        session.setAttribute("listCart", listCart);
//add total amount vao session
        session.setAttribute("totalAmount", calTotalAmount(listCart));
        session.setAttribute("totalAll", calTotalAmountShip(listCart));
        //add quantity len sessiob   
        cartModel.setQuantity(session);
        return model;
    }

    // sửa sản phẩm trong giỏ hàng
    @RequestMapping(value = "/update")
    public ModelAndView updateCart(HttpServletRequest request, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/Cart");
        // lay danh sách sản phẩm trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay danh sach số lượng san pham muon mua
        String[] arrQuantity = request.getParameterValues("quantity");

        for (int i = 0; i < listCart.size(); i++) {
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            if (Integer.parseInt(arrQuantity[i]) < 1) {
                listCart.get(i).setQuantity(1);
            }
        }
        // luu danh sách sản phẩm và tổng tiền lên session
        session.setAttribute("listCart", listCart);
        //tinh lai tong tien
        session.setAttribute("totalAmount", calTotalAmount(listCart));
        cartModel.setQuantity(session);
        return model;
    }

    //Tinh tong tien don dang chua bao gom gia ship
    public String calTotalAmount(List<Cart> listCart) {
        float totalAmountF = 0;
        for (Cart cart : listCart) {
            totalAmountF += cart.getQuantity() * Float.parseFloat(cart.getProduct().getPriceDiscount().replaceAll("[.]", ""));
        }
        String totalAmount = Common.formatNumber(totalAmountF);
        return totalAmount;
    }

    //Tinh tong tien da cong gia ship 40.000 VND
    public String calTotalAmountShip(List<Cart> listCart) {
        float totalAmountF = 0;
        for (Cart cart : listCart) {
            totalAmountF += cart.getQuantity() * Float.parseFloat(cart.getProduct().getPriceDiscount().replaceAll("[.]", ""));
        }
        float totalAmountShip = 0;
        float shipFee = 40000;
        totalAmountShip += totalAmountF + shipFee;
        String totalAll = Common.formatNumber(totalAmountShip);
        return totalAll;
    }

    //xóa sản phẩm trong giỏ hàng
    @RequestMapping(value = "/remove")
    public ModelAndView remove(String Id, HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/Cart");
        // lấy danh sách sản phẩm trên sesion
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProduct().getProductId().equals(Id)) {
                // neu sp ton tai thi remove
                listCart.remove(i);
                break;
            }
        }
        // luu danh sách sản phẩm và tổng tiền
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calTotalAmount(listCart));
        cartModel.setQuantity(session);
        return model;
    }

    //xóa sản phẩm trong giỏ hàng tại trang chủ
    @RequestMapping(value = "/removeCartIndex")
    public String removeCartIndex(String Id, HttpSession session) {
        //  ModelAndView model = new ModelAndView("FontEndNew/Cart");
        // lấy danh sách sản phẩm trên sesion
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProduct().getProductId().equals(Id)) {
                // neu sp ton tai thi remove
                listCart.remove(i);
                break;
            }
        }
        // luu danh sách sản phẩm và tổng tiền
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calTotalAmount(listCart));
        cartModel.setQuantity(session);
        //  "redirect: http://localhost:8080/MyProject_JW1810LM/homeFontEnd/getData.htm"
        return "redirect: http://localhost:8080/MyProject_JW1810LM/homeFontEnd/getData.htm";
    }

    // Xóa toàn bộ giỏ hàng
    @RequestMapping(value = "clear")
    public ModelAndView myCart(HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/Cart");
        session.removeAttribute("listCart");
        session.setAttribute("totalAmount", 0);
        cartModel.setQuantity(session);
        return model;
    }

    @RequestMapping(value = "cart")
    public ModelAndView Cart(HttpSession session) {
        ModelAndView model = new ModelAndView("FontEndNew/Cart");
        return model;
    }

}
