<%-- 
    Document   : wishListAdd
    Created on : Oct 21, 2019, 12:41:02 AM
    Author     : Administrator
--%>


<%@page import="myProject.entities.Product"%>
<%@page import="myProject.model.ProductModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myProject.entities.WishList"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>wishListAdd</title>
    </head>
    <body>
        <script>
            ProductModel proModel = new ProductModel();
            String Id = request.getParameter("Id");
            //request.getParameter("Id");
            List<WishList> listWishlist = (List<WishList>) session.getAttribute("listWL");
            Product proAdd = proModel.getProductById(Id);
            //truong hop wishlist null
            if (listWishlist == null) {
                WishList wish = new WishList(proAdd);
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
                    WishList wish = new WishList(proAdd);
                    listWishlist.add(wish);
                }
            }
            session.setAttribute("listWL", listWishlist);
             
       </script>

    </body>
</html>
