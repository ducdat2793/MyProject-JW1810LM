/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.model;

import java.util.List;
import javax.servlet.http.HttpSession;
import myProject.entities.Cart;

/**
 *
 * @author Administrator
 */
public class CartModel {

    public void setQuantity(HttpSession session) {
        int cartQuantity = 0;
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        if (listCart == null) {
            cartQuantity = 0;
        } else {
            for (Cart cart : listCart) {
                cartQuantity += cart.getQuantity();
            }
        }
        session.setAttribute("quantity", cartQuantity);

    }
 
    
}
