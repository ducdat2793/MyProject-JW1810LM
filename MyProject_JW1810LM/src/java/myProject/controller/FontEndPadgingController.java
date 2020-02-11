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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import myProject.entities.Author;
import myProject.entities.Category;
import myProject.entities.Common;
import myProject.entities.Product;
import myProject.model.AuthorModel;
import myProject.model.CategoryModel;
import myProject.model.ProductModel;
import myProject.util.ConnectDB;
import myProject.util.Pagination;
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
@RequestMapping(value = "padging")
public class FontEndPadgingController {

    private ProductModel proModel;
    private CategoryModel categoryModel;
    private AuthorModel authorModel;
    SimpleDateFormat fomat = new SimpleDateFormat();

    public FontEndPadgingController() {
        categoryModel = new CategoryModel();
        authorModel = new AuthorModel();
        proModel = new ProductModel();
    }

    //lay danh sach product phan trang(trang 1) theo category ID
    @RequestMapping(value = "/getProductByCatalogId1" )
    public ModelAndView getProductByCatalogId1(@RequestParam("Id") String categoryId) {
        // danh sach category va author
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        Category category = categoryModel.getCategoryById(categoryId);
        List<Author> listAuthor = authorModel.getAllAuthor();
        //trang category da phan trang      
        ModelAndView model = new ModelAndView("FontEndNew/Category");

        //So sp tren 1 trang
        int sizeRowofPage = 3;
        //truyen vao trang thu 1 voi so san pham la 3 san pham va ma danh muc san pham
        HashMap map = proModel.getPageUrl(1, sizeRowofPage, categoryId, "getProductByCatalogIdI.htm");
        //lay duong dan phan trang
        //url dang null
        String url = (String) map.get("url");

        List<Product> listProduct = new ArrayList<>();
        try {
            //rs cung dang null         
            listProduct = Pagination.getDataByCategoryId(1, sizeRowofPage, categoryId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Truyền đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
         model.getModelMap().put("category", category);
        //truyen vao danh sach danh muc san pham va tac gia
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        //Gia tri category ID su dung de sort theo so luong tren trang category
        model.getModelMap().put("categoryId", categoryId);
        model.getModelMap().put("page", 1);
        model.getModelMap().put("sizeRowofPage", sizeRowofPage);
        return model;
    }

    // Lay danh sach product phan trang(trang thu "i") theo category ID
    @RequestMapping(value = "/getProductByCatalogIdI")
    public ModelAndView getProductByCatalogIdI(@RequestParam("Id") String categoryId, @RequestParam("page") int page) {
        // danh sach category va author
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();

        //trang category da phan trang      
        ModelAndView model = new ModelAndView("FontEndNew/Category");
        //So sp tren 1 trang
        int sizeRowofPage = 3;
        //truyen vao trang thu "i" voi so san pham la 3 san pham va ma danh muc san pham
        HashMap map = proModel.getPageUrl(page, sizeRowofPage, categoryId, "getProductByCatalogIdI.htm");
        //lay duong dan phan trang
        //url dang null
        String url = (String) map.get("url");

        List<Product> listProduct = new ArrayList<>();
        try {

            listProduct = Pagination.getDataByCategoryId(page, sizeRowofPage, categoryId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Truyền đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        //truyen vao danh sach danh muc san pham va tac gia
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        //Gia tri category ID su dung de sort theo so luong tren trang category
        model.getModelMap().put("categoryId", categoryId);
        model.getModelMap().put("page", page);
        model.getModelMap().put("sizeRowofPage", sizeRowofPage);
        return model;
    }

    //Hien thi san pham theo "pageSize" va lay san pham theo catalogId 
    @RequestMapping(value = "/getProductByCatalogIdDrop")
    public ModelAndView getProductByCatalogIdDrop(@RequestParam("Id") String categoryId, @RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        // danh sach category va author
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();

        //trang category da phan trang      
        ModelAndView model = new ModelAndView("FontEndNew/Category");
        //truyen vao trang thu "i" voi so san pham la 3 san pham va ma danh muc san pham
        HashMap map = proModel.getPageUrl(page, pageSize, categoryId, "getProductByCatalogIdDrop.htm");
        //lay duong dan phan trang
        //url dang null
        String url = (String) map.get("url");

        List<Product> listProduct = new ArrayList<>();
        try {
            listProduct = Pagination.getDataByCategoryId(page, pageSize, categoryId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Truyền đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        //truyen vao danh sach danh muc san pham va tac gia
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        //Gia tri category ID su dung de sort theo so luong tren trang category
        model.getModelMap().put("categoryId", categoryId);
        model.getModelMap().put("page", page);
        //hien thi gia tri o muc "hien thi" khi sort
        model.getModelMap().put("pageSize", pageSize);
        model.getModelMap().put("sizeRowofPage", pageSize);
        return model;
    }

    // Lay danh sach tat ca san pham co phan trang (trang 1)
    @RequestMapping(value = "/getDataByPagging")
    public ModelAndView getDataByPagging() {
        // danh sach category va author
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();
        //trang category da phan trang      
        ModelAndView model = new ModelAndView("FontEndNew/AllProducts");
        //So sp tren 1 trang
        int sizeRowofPage = 3;
        //truyen vao trang thu 1 voi so san pham la 3 san pham va ma danh muc san pham
        HashMap map = proModel.getDataPagination(1, sizeRowofPage);
        //lay duong dan phan trang
        //url dang null
        String url = (String) map.get("url");
        List<Product> listProduct = new ArrayList<>();
        try {
            //rs cung dang null         
            ResultSet rs = (ResultSet) map.get("rs");
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getString("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setPrice(Common.formatNumber(rs.getFloat("Price")));
                product.setContent(rs.getString("Content"));
                product.setContentDetail(rs.getString("ContentDetail"));
                product.setView(rs.getInt("View"));
                product.setBuyItem(rs.getInt("BuyItem"));
                product.setDiscount(rs.getInt("Discount"));
                product.setImages(rs.getString("Images"));
                if (fomat.format(rs.getDate("Created")) != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setStatus(rs.getBoolean("Status"));
                product.setAuthorId(rs.getString("AuthorId"));
                product.setCategoryId(rs.getString("CategoryId"));
                product.setPublisherId(rs.getString("PublisherId"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setPriceInput(Common.formatNumber(rs.getFloat("PriceInput")));
                product.setPriceDiscount(Common.formatNumber(rs.getFloat("Price") * (float) (100 - rs.getInt("Discount")) / 100));
                listProduct.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Connection conn = (Connection) map.get("conn");
            CallableStatement callSt = (CallableStatement) map.get("callSt");
            ConnectDB.closeConnect(conn, callSt);
        }
        //Truyền đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        //truyen vao danh sach danh muc san pham va tac gia
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        model.getModelMap().put("page", 1);
        model.getModelMap().put("sizeRowofPage", sizeRowofPage);
        return model;
    }

    // Lay danh sach tat ca san pham co phan trang (trang i)
    @RequestMapping(value = "/getDataByPaggingI")
    public ModelAndView getDataByPaggingI(@RequestParam("page") String page,@RequestParam("size") int size) {
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();

        ModelAndView model = new ModelAndView("FontEndNew/AllProducts");
        //trang hien tai
        int pageInt = Integer.parseInt(page);
        //so luong ban ghi tren 1 trang
       // int sizeRowofPage = 3;
        //doi tuong map
        HashMap map = proModel.getDataPagination(pageInt, size);
        //lay chuoi phan trang hien tai
        String url = (String) map.get("url");
        List<Product> listProduct = new ArrayList<>();
        try {
            ResultSet rs = (ResultSet) map.get("rs");
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getString("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setPrice(Common.formatNumber(rs.getFloat("Price")));
                product.setContent(rs.getString("Content"));
                product.setContentDetail(rs.getString("ContentDetail"));
                product.setView(rs.getInt("View"));
                product.setBuyItem(rs.getInt("BuyItem"));
                product.setDiscount(rs.getInt("Discount"));
                product.setImages(rs.getString("Images"));
                if (fomat.format(rs.getDate("Created")) != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setStatus(rs.getBoolean("Status"));
                product.setAuthorId(rs.getString("AuthorId"));
                product.setCategoryId(rs.getString("CategoryId"));
                product.setPublisherId(rs.getString("PublisherId"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setPriceInput(Common.formatNumber(rs.getFloat("PriceInput")));
                product.setPriceDiscount(Common.formatNumber(rs.getFloat("Price") * (float) (100 - rs.getInt("Discount")) / 100));
                // add đối tượng product vào danh sách 
                listProduct.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Connection conn = (Connection) map.get("conn");
            CallableStatement callSt = (CallableStatement) map.get("callSt");
            ConnectDB.closeConnect(conn, callSt);
        }
// Truyền các đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        model.getModelMap().put("page", page);
        model.getModelMap().put("sizeRowofPage", size);
        return model;
    }

    @RequestMapping(value = "/getDataByPaggingDrop")
    public ModelAndView getDataByPaggingDrop(@RequestParam("page") int page, @RequestParam("size") int size) {
        List<Category> listCategory1 = categoryModel.getCategoryByType(1);
        List<Category> listCategory2 = categoryModel.getCategoryByType(2);
        List<Author> listAuthor = authorModel.getAllAuthor();

        ModelAndView model = new ModelAndView("FontEndNew/AllProducts");
        //trang hien tai
        // int pageInt = Integer.parseInt(page);
        //so luong ban ghi tren 1 trang
        int sizeRowofPage = size;
        //doi tuong map
        HashMap map = proModel.getDataPagination(page, sizeRowofPage);
        //lay chuoi phan trang hien tai
        String url = (String) map.get("url");
        List<Product> listProduct = new ArrayList<>();
        try {
            ResultSet rs = (ResultSet) map.get("rs");
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getString("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setPrice(Common.formatNumber(rs.getFloat("Price")));
                product.setContent(rs.getString("Content"));
                product.setContentDetail(rs.getString("ContentDetail"));
                product.setView(rs.getInt("View"));
                product.setBuyItem(rs.getInt("BuyItem"));
                product.setDiscount(rs.getInt("Discount"));
                product.setImages(rs.getString("Images"));
                if (fomat.format(rs.getDate("Created")) != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setStatus(rs.getBoolean("Status"));
                product.setAuthorId(rs.getString("AuthorId"));
                product.setCategoryId(rs.getString("CategoryId"));
                product.setPublisherId(rs.getString("PublisherId"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setPriceInput(Common.formatNumber(rs.getFloat("PriceInput")));
                product.setPriceDiscount(Common.formatNumber(rs.getFloat("Price") * (float) (100 - rs.getInt("Discount")) / 100));
                // add đối tượng product vào danh sách 
                listProduct.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Connection conn = (Connection) map.get("conn");
            CallableStatement callSt = (CallableStatement) map.get("callSt");
            ConnectDB.closeConnect(conn, callSt);
        }
// Truyền các đối tượng listProduct và chuỗi phân trang cho đối tượng model
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        model.getModelMap().put("listCategory1", listCategory1);
        model.getModelMap().put("listCategory2", listCategory2);
        model.getModelMap().put("listAuthor", listAuthor);
        model.getModelMap().put("page", page);
        model.getModelMap().put("sizeRowofPage", sizeRowofPage);
        return model;
    }
}
