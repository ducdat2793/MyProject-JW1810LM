/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.http.HttpSession;
import myProject.entities.Product;
import myProject.entities.AdminUser;
import myProject.entities.Author;
import myProject.entities.Category;
import myProject.entities.Feeback;
import myProject.entities.Order;
import myProject.entities.User;
import myProject.model.ProductModel;
import myProject.model.AdminUserModel;
import myProject.model.AuthorModel;
import myProject.model.CategoryModel;
import myProject.model.FeebackModel;
import myProject.model.OrderModel;
import myProject.model.UserModel;
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
@RequestMapping(value = "/adminProduct")
public class AdminController {

    private ProductModel proModel;
    private AdminUserModel adminModel;
    private FeebackModel feedBackModel;
    private OrderModel orderModel;
    private CategoryModel cateModel;
    private AuthorModel authorModel;

    SimpleDateFormat fomat = new SimpleDateFormat();

    //  Hàm khởi tạo controller ProductController
    public AdminController() {
        proModel = new ProductModel();
        adminModel = new AdminUserModel();
        feedBackModel = new FeebackModel();
        orderModel = new OrderModel();
        cateModel = new CategoryModel();
        authorModel = new AuthorModel();
    }
    //Lay tat ca san pham

    @RequestMapping("/getAll")
    public ModelAndView getAllProduct(ModelMap mm, HttpSession session) {
        ModelAndView model;
        //co the check url voi tat ca phuong thuc de bao mat
        if (CheckUrl.check(session)) {
            model = new ModelAndView("BackEnd/Product");
            List<Product> list = proModel.getAllProduct();
            model.getModelMap().put("listProduct", list);
            // tra ve ModelAnView
            return model;
        } else {
            model = new ModelAndView("BackEnd/Login");
            mm.put("message", "Sai thông tin đăng nhập.");
            return model;
        }
    }

    @RequestMapping(value = "/initInsertProduct")
    public ModelAndView initInsertProduct() {
        // Khai báo ModelAndView
        ModelAndView model = new ModelAndView("BackEnd/InsertProduct");
        // Khởi tạo đối tượng product
        Product product = new Product();
        // Set đối tượng vào ModelAndView
        model.addObject("newProduct", product);
        //Trả về đối tượng model
        return model;
    }

    @RequestMapping(value = "insertProduct")
    public String insertProduct(@ModelAttribute("newProduct") Product product) {
        //thuc hien sua thong tin san pham
        boolean check = proModel.insertProduct(product);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "BackEnd/Error";
        }
    }

    @RequestMapping(value = "/initUpdateProduct")
    public ModelAndView initIUpdateProduct(@RequestParam("Id") String id) {
        // Khai báo ModelAndView
        ModelAndView model = new ModelAndView("BackEnd/UpdateProduct");
        // Lấy thông tin product theo mã
        Product product = proModel.getProductById(id);
        model.getModelMap().put("updateProduct", product);
        //Trả về đối tượng ModelAndView
        return model;
    }

    // Thực hiện update product
    @RequestMapping(value = "updateProduct")
    public String updateProduct(@ModelAttribute("updateProduct") Product product) {
        //thuc hien sua thong tin san pham
        boolean check = proModel.updateProduct(product);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "BackEnd/UpdateProduct";
        }
    }

    // thuc hien xoa thong tin san pham
    @RequestMapping(value = "deleteProduct")
    public String deleteProduct(@RequestParam("Id") String id) {
        boolean check = proModel.deleteProduct(id);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "BackEnd/Error";
        }
    }
    // xem thong tin chi tiet san pham

    @RequestMapping(value = "viewProduct")
    public ModelAndView viewProduct(@RequestParam("Id") String id) {
        ModelAndView model = new ModelAndView("BackEnd/ViewProduct");
        //lay thong tin san pham theo ma san pham
        Product product = proModel.getProductById(id);
        model.getModelMap().put("product", product);
        return model;
    }

    @RequestMapping(value = "getAllUser")
    public ModelAndView getAllUser() {
        ModelAndView model = new ModelAndView("BackEnd/User");
        List<AdminUser> listUser = adminModel.getAllUser();
        model.addObject("listUser", listUser);
        return model;
    }
    
     @RequestMapping(value = "/initInsertAdmin")
    public ModelAndView initInsertAdmin() {
        // Khai báo ModelAndView
        ModelAndView model = new ModelAndView("BackEnd/InsertAdmin");
        // Khởi tạo đối tượng product
        AdminUser admin = new AdminUser();
        // Set đối tượng vào ModelAndView
        model.addObject("admin", admin);
        //Trả về đối tượng model
        return model;
    }
    
      @RequestMapping(value = "/insertAdmin")
    public String insertAdmin(@ModelAttribute("admin") AdminUser admin) {
        //thuc hien sua thong tin san pham
        boolean check = adminModel.insertAdmin(admin);
        if (check) {
            return "redirect:getAllUser.htm";
        } else {
            return "BackEnd/Error";
        }
    }

    @RequestMapping(value = "getAllFeeback")
    public ModelAndView getAllFeeback() {
        ModelAndView model = new ModelAndView("BackEnd/FeedBack");
        List<Feeback> listFeeback = feedBackModel.getAllFeeback();
        model.getModelMap().put("listFeeback", listFeeback);
        return model;
    }

    @RequestMapping(value = "updateFeeback")
    public String updateFeeback(@RequestParam("Id") int id) {
        feedBackModel.updateFeeback(id);
        return "redirect:getAllFeeback.htm";
    }

    @RequestMapping(value = "getAllOrder")
    public ModelAndView getAllOrder() {
        ModelAndView model = new ModelAndView("BackEnd/Order");
        List<Order> listOrder = orderModel.getAllOrder();
        model.getModelMap().put("listOrder", listOrder);
        return model;
    }

    @RequestMapping(value = "getAllCategory")
    public ModelAndView getAllCategory() {
        ModelAndView model = new ModelAndView("BackEnd/Category");
        List<Category> listCate = cateModel.getAllCategory();
        model.addObject("listCate", listCate);
        return model;
    }

    @RequestMapping(value = "/initInsertCategory")
    public ModelAndView initInsertCategory() {
        // Khai báo ModelAndView
        ModelAndView model = new ModelAndView("BackEnd/InsertCategory");
        // Khởi tạo đối tượng product
        Category cate = new Category();
        // Set đối tượng vào ModelAndView
        model.addObject("cate", cate);
        //Trả về đối tượng model
        return model;
    }

    @RequestMapping(value = "insertCategory")
    public String insertCategory(@ModelAttribute("cate") Category cate) {
        //thuc hien sua thong tin san pham
        boolean check = cateModel.insertCategory(cate);
        if (check) {
            return "redirect:getAllCategory.htm";
        } else {
            return "BackEnd/Error";
        }
    }

    @RequestMapping(value = "deleteCategory")
    public String deleteCategory(@RequestParam("Id") String id) {
        boolean check = cateModel.deleteCategory(id);
        if (check) {
            return "redirect:getAllCategory.htm";
        } else {
            return "BackEnd/Error";
        }
    }

    @RequestMapping(value = "getAllAuthor")
    public ModelAndView getAllAuthor() {
        ModelAndView model = new ModelAndView("BackEnd/Author");
        List<Author> listAuthor = authorModel.getAllAuthor();
        model.addObject("listAuthor", listAuthor);
        return model;
    }
    
    

    /**
     * Thực hiện insert product
     *
     * @param product
     * @param request
     * @return
     */
    /*
    @RequestMapping(value = "/insertProduct")
    public String insertProduct(@ModelAttribute("newProduct") Product product, HttpServletRequest request) {

        //Lay đường dan va ten anh
       String path = request.getRealPath("/MyProject_JW1810LM/jsp/FontEnd/images/");
        path = path.substring(0, path.indexOf("\\build"));
        path = path + "\\MyProject_JW1810LM\\jsp\\FontEnd\\images";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            // lấy danh sách request
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    //path
                    product.setImages(fileItem.getName());
                    //upload to folder
                    fileItem.write(new File(path + "/"
                            + fileItem.getName()));
                } else {
                    // Lấy tên thuộc tính
                    String name = fileItem.getFieldName();
                    // Lấy giá trị thuộc tính
                    String value = fileItem.getString();
                    // Kiểm tra và set giá trị các thuộc tính cho đối tượng product
                    if (name.equals("productName")) {
                        product.setProductName(value);
                    } else if (name.equals("content")) {
                        product.setContent(value);
                    } else if (name.equals("contentDetail")) {
                        product.setContentDetail(value);
                    } else if (name.equals("price")) {
                        product.setPrice(Float.parseFloat(value));
                    } else if (name.equals("discount")) {
                        product.setDiscount(Integer.parseInt(value));
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        // Thực hiện insert product
        boolean check = proModel.insertProduct(product);
        if (check) {
            // insert thành công trả về trang danh sách sản phẩm
            return "redirect:getAll.htm";
        } else {
            // Insert không thành công trả về trang InsertProduct
            return "BackEnd/InsertProduct";
        }
    }
     */
}
