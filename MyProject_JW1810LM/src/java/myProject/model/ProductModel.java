/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import myProject.entities.Common;
import myProject.entities.Product;
import myProject.util.ConnectDB;
import myProject.util.Pagination;
import myProject.util.common;

/**
 *
 * @author Administrator
 */
public class ProductModel {

    // THÔNG TIN SẢN PHẨM THEO ID   
    public Product getProductById(String id) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        Product product = new Product();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductById(?)}");
            callSt.setString(1, id);
            rs = callSt.executeQuery();
            while (rs.next()) {
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
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return product;
    }

    //TIM SAN PHAM THEO TEN TAC GIA
    public List<Product> getProductByAuthorId(String AuthorId) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductByAuthorId(?)}");
            callSt.setString(1, AuthorId);
            rs = callSt.executeQuery();
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
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }
    
//DANH SACH TOAN BO SAN PHAM
      public List<Product> getProductNew() {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductNew()}");
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

// DANH SACH SAN PHAM MOI
    public List<Product> getAllProduct() {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getAllProduct()}");
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

    // DANH SACH SAN PHAM KHUYEN MAI
    public List<Product> getProductDiscount() {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductDiscount()}");
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

    // DANH SACH SAN PHAM BAN CHAY   
    public List<Product> getProductBestSeller() {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductBuyItem()}");
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

    // DANH SACH SAN PHAM HOT
    public List<Product> getProductMostView() {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductHot()}");
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }
    //DANH SACH SAN PHAM LIEN QUAN

    public List<Product> getProductRelate(String categoryId) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Product> list = new ArrayList<Product>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getProductRelate(?)}");
            callSt.setString(1, categoryId);
            rs = callSt.executeQuery();
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

                list.add(product);
            }
        } catch (Exception e) {
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

    // KIEM TRA SO LUONG SAN PHAM
    public boolean checkProductQuantity(String id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{ call checkQuantity(?,?)}");
            callSt.setString(1, id);
            callSt.registerOutParameter(2, Types.BOOLEAN);
            callSt.executeUpdate();
            result = callSt.getBoolean(2);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return result;
    }

    public boolean insertProduct(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call insertProduct(?,?,?,?,?,?,?,?,?)}");
            //set-du-lieu-cho-tham-so-vao
            callSt.setString(1, product.getProductId());
            callSt.setString(2, product.getProductName());
            callSt.setFloat(3, Common.convertToFloat(product.getPrice()));
            callSt.setString(4, product.getContent());
            callSt.setString(5, product.getContentDetail());
            callSt.setInt(6, product.getView());
            callSt.setInt(7, product.getBuyItem());
            callSt.setInt(8, product.getDiscount());
            callSt.setString(9, product.getImages());

            callSt.executeUpdate();
            check = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return check;
    }

    public boolean updateProduct(Product product) {
        //Khai báo các đối tượng kết nối sql
        Connection conn = null;
        CallableStatement callSt = null;
        // biến keets quả
        boolean result = false;
        try {
            // MỞ kết nối database
            conn = ConnectDB.openConnect();
            //gọi procedure sửa thông tin sản phẩm
            callSt = conn.prepareCall("{ call updateProduct(?,?,?,?,?,?,?,?,?,?)}");
            // set giá trị cho các tham số truyền vào cuả procdure
            callSt.setString(1, product.getProductId());
            callSt.setString(2, product.getProductName());
            callSt.setFloat(3, Common.convertToFloat(product.getPrice()));
            callSt.setString(4, product.getContent());
            callSt.setString(5, product.getContentDetail());
            callSt.setInt(6, product.getView());
            callSt.setInt(7, product.getBuyItem());
            callSt.setInt(8, product.getDiscount());
            callSt.setString(9, product.getImages());
            callSt.setBoolean(10, product.isStatus());
            // Thực thi procedure
            callSt.executeUpdate();
            // gán giá trị cho nibieesns kết quả
            result = true;

        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            // Đóng kết nối
            ConnectDB.closeConnect(conn, callSt);
        }
        // Trả về kết quả
        return result;
    }

    public boolean deleteProduct(String id) {
        //Khai báo các đối tượng kết nối sql
        Connection conn = null;
        CallableStatement callSt = null;
        // biến kết quả
        boolean result = false;
        try {
            // Mở chuôi kết nối
            conn = ConnectDB.openConnect();
            //gọi procedure sửa thông tin sản phẩm
            callSt = conn.prepareCall("{ call deleteProduct(?)}");
            // set giá trị tham số truyền vào cho procedure
            callSt.setString(1, id);
            // Thực thi procedure
            callSt.executeUpdate();
            // gán giá trị cho biến kết quả
            result = true;
        } catch (SQLException ex) {

            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return result;
    }

//lay du lieu cho trang duoc phan trang
    public HashMap getDataPagination(int page, int pageSize) {
        HashMap map1 = Pagination.getDataForPagination(page, pageSize, "Product", "ProductId", "getDataByPaggingI.htm");
        return map1;
    }

//lay link phan trang
    public HashMap getPageUrl(int page, int pageSize, String catalogId, String actionName) {
        HashMap map = new HashMap();
        String url;
        int totalRecord;
        int totalPage;
        int i;
        String a = "class=\"active\"";
        totalRecord = Pagination.getTotalRecordByCategoryId(catalogId);
        if (totalRecord % pageSize > 0) {
            totalPage = (totalRecord / pageSize) + 1;
        } else {
            totalPage = (totalRecord / pageSize);
        }
        if (page < 1) {
            page = 1;
        }
        if (page > totalPage) {
            page = totalPage;
        }
        url = "";

        if (page > 1) {
            url = url + "<a href=\"" + actionName + "?page=1&Id=" + catalogId + "&pageSize=" + pageSize + " \"><i class=\"fa fa-angle-double-left\" aria-hidden=\"true\"></i></a>          ";
            url = url + "<a href=\"" + actionName + "?page=" + (page - 1) + "&Id=" + catalogId + "&pageSize=" + pageSize + "\"><i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i></a>     ";
        }
        //"
        i = 1;
        while (i <= totalPage) {
            if (i == page) {
                url = url + "<a class=\"active\" href=\" " + actionName + " ?page=" + i + "&Id=" + catalogId + "&pageSize=" + pageSize + " \">" + i + "</a>      ";
            } else {
                url = url + "<a href=\" " + actionName + "?page=" + i + "&Id=" + catalogId + "&pageSize=" + pageSize + "\">" + i + "</a>         ";
            }
            i = i + 1;
        }
        if (page < totalPage) {
            url = url + "<a href=\"" + actionName + "?page=" + (page + 1) + "&Id=" + catalogId + "&pageSize=" + pageSize + " \"><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i></a>        ";
            url = url + "<a href=\"" + actionName + "?page=" + totalPage + "&Id=" + catalogId + "&pageSize=" + pageSize + " \"><i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i></a>       ";
        }
        map.put("url", url);
        map.put("totalPage", totalPage);
        return map;
    }

    public boolean updateBuyItem(String id) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call updateBuyItem(?)}");
            calla.setString(1, id);
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    public List<Product> searchProduct(String name) {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement calla = null;
        List<Product> list = new ArrayList<Product>();
        ResultSet rs;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call searchProduct(?)}");
            calla.setString(1, name);
            rs = calla.executeQuery();
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
                if (rs.getDate("Created") != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setStatus(rs.getBoolean("Status"));
                product.setAuthorId(rs.getString("AuthorId"));
                product.setCategoryId(rs.getString("CategoryId"));
                product.setPublisherId(rs.getString("PublisherId"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setPriceInput(Common.formatNumber(rs.getFloat("PriceInput")));
                product.setPriceDiscount(Common.formatNumber(rs.getFloat("Price") * (float) (100 - rs.getInt("Discount")) / 100));
                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return list;
    }
}
