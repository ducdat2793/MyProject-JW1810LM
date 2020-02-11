/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import myProject.entities.Author;
import myProject.entities.Category;
import myProject.entities.Common;
import myProject.entities.Product;
import myProject.entities.User;
import myProject.model.FeebackModel;
import myProject.model.ProductModel;
import myProject.model.AdminUserModel;
import myProject.model.AuthorModel;
import myProject.model.CartModel;
import myProject.model.CategoryModel;
import myProject.model.UserModel;
import myProject.util.ConnectDB;
import myProject.util.EmailUtil;
import myProject.util.Pagination;
import myProject.util.common;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "homeFontEnd")
public class FontEndController {

    // khai bao doi tuong 
    private ProductModel proModel;
    private FeebackModel feebackModel;
    private AdminUserModel adminUserModel;
    private UserModel userModel;
    private CartModel cartModel;
    private AuthorModel authorModel;
    private CategoryModel categoryModel;
    // khai báo định dạng thời gian trong java
    SimpleDateFormat fomat = new SimpleDateFormat();

    //  Hàm khởi tạo controller 
    public FontEndController() {
        proModel = new ProductModel();
        feebackModel = new FeebackModel();
        adminUserModel = new AdminUserModel();
        userModel = new UserModel();
        cartModel = new CartModel();
        authorModel = new AuthorModel();
        categoryModel = new CategoryModel();
    }

    @RequestMapping(value = "/getData")
    public ModelAndView getDataHome(HttpSession session) {
        // khai báo và khởi tạo ModelAndView tương ứng jsp Index.jsp    
        ModelAndView model = new ModelAndView("FontEndNew/Index");
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();

        // LLấy danh sách sản phẩm mơi
        List<Product> listProductNew = proModel.getProductNew();
        //Lấy danh sách sản phẩm khuyến mãi
        List<Product> listProductDiscount = proModel.getProductDiscount();
        // Lấy danh sách sản phẩm được xem nhiều nhất
        List<Product> listProductMostView = proModel.getProductMostView();
        // lấy danh sách sản phẩm bán chạy
        List<Product> listProductBestSell = proModel.getProductBestSeller();
        session.getAttribute("listWishlist");

        // Add danh sách product cho model để hiển thị
        model.getModelMap().put("listAuthor", listAuthor);
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listProductNew", listProductNew);
        model.getModelMap().put("listProductDiscount", listProductDiscount);
        model.getModelMap().put("listProductBestSell", listProductBestSell);
        model.getModelMap().put("listProductMostView", listProductMostView);
        // Trả về ModelAndView
        cartModel.setQuantity(session);
        return model;
    }

// Thong tin chi tiet san pham    
    @RequestMapping(value = "/productDetail")
    public ModelAndView getProductDetail(@RequestParam("Id") String id, @RequestParam("categoryId") String categoryId) {
        ModelAndView model = new ModelAndView("FontEndNew/ProductDetail");
        List<Product> listProductDiscount = proModel.getProductDiscount();
        Product product = proModel.getProductById(id);
        //List san pham cung danh muc
        List<Product> listProductRelate = proModel.getProductRelate(categoryId);

        //  List<ImageLink> listImage = productModel.getImageProduct(id);//danh sách ảnh liên quan, ảnh mô tả cho sản phảm
        // List<CatalogPost> listCatalogPost = postModel.getAllCatalogPost();
        model.getModelMap().put("listProductDiscount", listProductDiscount);
        model.getModelMap().put("product", product);
        if (proModel.checkProductQuantity(id)) {
            model.getModelMap().put("quantityAvailable", "Còn hàng");
        } else {
            model.getModelMap().put("quantityAvailable", "Hết hàng");
        }
        model.getModelMap().put("listProductRelate", listProductRelate);
        //   model.getModelMap().put("listImage", listImage);
        return model;
    }

    //LAY SAN PHAM THEO ID TAC GIA
    @RequestMapping(value = "/getProductByAuthorId")
    public ModelAndView getProductByAuthorId(@RequestParam("Id") String AuthorId) {
        // danh sach category va author
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();
        //trang category da phan trang      
        ModelAndView model = new ModelAndView("FontEndNew/AllProducts");
        List<Product> listProduct = new ArrayList<>();
        try {
            //rs cung dang null         
            listProduct = proModel.getProductByAuthorId(AuthorId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Truyền đối tượng listProduct 
        model.getModelMap().put("listProduct", listProduct);
        //truyen vao danh sach danh muc san pham va tac gia
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        //Gia tri category ID su dung de sort theo so luong tren trang category     
        return model;
    }  
        
    //Chuyển đến trang đăng nhập tài khoản
    @RequestMapping(value = "/initLogin")
    public ModelAndView initLogin() {
        ModelAndView model = new ModelAndView("FontEndNew/SignIn");
        User account = new User();
        User register = new User();
        model.addObject("account", account);
        model.addObject("register", register);
        return model;
    }

    //Chuyển đến trang lấy lại mật khẩu tài khoản
    @RequestMapping(value = "/initRecoverPass")
    public ModelAndView initRecoverPass() {
        ModelAndView model = new ModelAndView("FontEndNew/RecoverPassword");
        User user = new User();
        model.addObject("user", user);
        return model;
    }

    //Thực hiện đăng nhập tài khoản khách hàng
    @RequestMapping(value = "/signIn")
    // tom lai chi can them 2 model artibute la ko bi loi
    public String signIn(@ModelAttribute("account") User account, @ModelAttribute("register") User account1, ModelMap mm, HttpSession session) {
        boolean result = false;
        ModelAndView model = new ModelAndView("FontEndNew/Index");
        result = userModel.checkLoginFontEnd(account);
        if (result) {
            //lay ten de hien thi "xin chao user" o trang home
            //nen bo sung get all user de lay duoc userName chu khong fai email
            session.setAttribute("Email", account.getEmail());
            return "redirect: getData.htm";
        } else {
            mm.put("message", "Sai thông tin đăng nhập.");
            return "FontEndNew/SignIn";
        }
    }

    //Thực hiện đăng ký tài khoản khách hàng
    @RequestMapping(value = "/signUp")
    public ModelAndView signUp(@ModelAttribute("register") User user, @ModelAttribute("account") User account, ModelMap mm, HttpServletRequest request, HttpSession session) throws MessagingException {
        ModelAndView model = new ModelAndView("FontEndNew/RegisterConfirm");
        if (userModel.checkUserEmail(user.getEmail())) {
            mm.put("sameEmail", "Email đã được sử dụng,vui lòng chọn email khác");
            model = new ModelAndView("FontEndNew/SignIn");
        } else {
            boolean result = userModel.insertAccount(user);
            if (result) {
                String content = "<div><p>Email đăng nhập:</p>" + user.getEmail() + "<br>  <p>Số điện thoại:</p>" + user.getPhone() + "</div>";
                EmailUtil.sendEmail(user.getEmail(), "Website E-Book. Xác nhận đăng kí tài khoản.", "Cảm ơn bạn đã đăng kí tài khoản của chúng tôi.Đây là thông tin tài khoản của bạn: " + content);
                session.setAttribute("Email", user.getEmail());
            } else {
                model = new ModelAndView("FontEndNew/Error");
            }
        }
        return model;
    }

    //Thực hiện gửi mật khẩu qua email
    @RequestMapping(value = "/recoverPassword")
    public ModelAndView recoverPassword(@ModelAttribute("user") User user, ModelMap mm, HttpSession session) throws MessagingException {
        ModelAndView model = new ModelAndView("FontEndNew/RecoverPasswordSucc");
        if (userModel.checkUserEmail(user.getEmail())) {
            user = userModel.getUserByEmail(user.getEmail());
            String content = "<div><p>Email đăng nhập:</p>" + user.getEmail() + "<br><p>Số điện thoại:</p>" + user.getPhone() + "<br><p>Mật khẩu:</p> " + user.getPassword() + "</div>";
            EmailUtil.sendEmail(user.getEmail(), "Website E-Book. Xác nhận gửi mật khẩu.", "Đây là thông tin tài khoản của bạn: " + content);
            mm.put("Email", user.getEmail());
        } else {
            mm.put("message", "Email chưa được dùng để đăng ký");
            model = new ModelAndView("FontEndNew/RecoverPassword");
        }
        return model;
    }

    //Chuyển đến trang thông tin tài khoản
    @RequestMapping(value = "/initAccountInfo")
    public ModelAndView initAccountInfo(HttpSession session, @ModelAttribute("user") User user) {
        ModelAndView model = new ModelAndView("FontEndNew/AccountInfo");
        user = userModel.getUserByEmail((String) session.getAttribute("Email"));
        model.getModelMap().put("accountInfo", user);
        return model;
    }

    //Chuyển đến trang sửa thông tin tài khoản
    @RequestMapping(value = "/initEditAccountInfo")
    public ModelAndView initEditAccountInfo(HttpSession session, @ModelAttribute("email") String email) {
        User user = new User();
        ModelAndView model = new ModelAndView("FontEndNew/AccountInfoEdit");
        user = userModel.getUserByEmail((String) session.getAttribute("Email"));
        model.getModelMap().put("accountInfo", user);
        return model;
    }

    //Thực hiện sửa thông tin tài khoản
    @RequestMapping(value = "/editAccountInfo")
    public ModelAndView editAccountInfo(@ModelAttribute("accountInfo") User user) {
        ModelAndView model = new ModelAndView();
        boolean result = userModel.updateAccount(user);
        if (result) {
            model = new ModelAndView("FontEndNew/EditAccountSucc");
        } else {
            model = new ModelAndView("FontEndNew/Error");
        }
        return model;
    }

    //Thực hiện đăng xuất tài khoản khách hàng
    @RequestMapping(value = "/logOut")
    public String logOut(@ModelAttribute("account") User user, HttpSession session) {
        session.removeAttribute("Email");
        return "redirect: getData.htm";
    }

    //Chuyen đến trang wihslist
    @RequestMapping(value = "/wishList")
    public ModelAndView wishList() {
        ModelAndView model = new ModelAndView("FontEndNew/WishList");
        return model;
    }

    //Tim kiem san pham theo ten hoac gia tien
    @RequestMapping(value = "search.htm")
    public ModelAndView searchProduct(@RequestParam("query") String name) {
        ModelAndView model = new ModelAndView("FontEndNew/AllProducts");
        List<Product> listProduct = proModel.searchProduct(name);

        model.getModelMap().put("listProduct", listProduct);

        return model;
    }

    @RequestMapping(value = "getPost")
    public ModelAndView getPost() {
        ModelAndView model = new ModelAndView("FontEnd/New");
        //  List<CatalogPost> listCatalogPost = postModel.getAllCatalogPost();
        //  List<Post> listPost = postModel.getAllPost();
        // List<Product> listProduct = proModel.getProductHot();
        //  model.getModel().put("listProduct",listProduct);
        //  model.getModelMap().put("listCatalogPost", listCatalogPost);

        //   model.getModelMap().put("listPost", listPost);
        return model;
    }

}
