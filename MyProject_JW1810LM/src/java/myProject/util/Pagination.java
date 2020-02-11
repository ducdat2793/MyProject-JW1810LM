/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.HashMap;
import java.util.List;
import myProject.entities.Common;
import myProject.entities.Product;

/**
 *
 * @author Administrator
 */
public class Pagination {

    public static HashMap getDataForPagination(int page, int pageSize, String tableName, String tableProductId, String actionName) {
         SimpleDateFormat fomat = new SimpleDateFormat();
        //Khai báo biến kết quả
        HashMap map = new HashMap();
        //Khai báo các đối tượng kết nối sql
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            // Mở kết nối database
            conn = ConnectDB.openConnect();
            //gọi procdure lấy link các trang DisplayPageNo
            callSt = conn.prepareCall("{call DisplayPageNo(?,?,?,?,?)}");
            // sét các tham s? truy?n vào cho procedure
            callSt.setInt(1, page);
            callSt.setInt(2, pageSize);
            callSt.setString(3, tableName);
            callSt.setString(4, actionName);
                               
            // Đăng kí tham số đầu ra procedure
            callSt.registerOutParameter(5, Types.NVARCHAR);
            // Thực thi procedure
            callSt.execute();
            // lấy link phân trang
            String url = callSt.getString(5);
            // sét link phân trang vào biến HashMap
            map.put("url", url);
            
            // gọi procedure lấy dữ liệu cho trang
            callSt = conn.prepareCall("{call Paging(?,?,?,?)}");
            // sét các tham số cho procedure
            callSt.setInt(1, page);
            callSt.setInt(2, pageSize);
            callSt.setString(3, tableName);
            callSt.setString(4, tableProductId);
            // Thựcc thi procedure
             List<Product> list = new ArrayList<Product>();
            ResultSet rs = callSt.executeQuery();
            map.put("rs", rs);

        } catch (Exception e) {
            e.printStackTrace();
        }
        // set các đối tượng kết nối sql vào đối tượng hashmap
        map.put("conn", conn);
        map.put("callSt", callSt);
        // Trả về kết quả
        return map;
    }
    
    public static int getTotalRecordByCategoryId(String catalogId) {
        Connection conn = null;
        CallableStatement callSt = null;
        int totalRecord = 0;
         HashMap map = new HashMap();
        try {
            // Mở kết nối database
            conn = ConnectDB.openConnect();
            //gọi procdure lấy link các trang DisplayPageNo
            callSt = conn.prepareCall("{call getTotalRecordByCatalogId(?,?)}");
            // sét các tham s? truy?n vào cho procedure
            callSt.setString(1, catalogId);
            // Đăng kí tham số đầu ra procedure
            callSt.registerOutParameter(2, Types.INTEGER);
            // Thực thi procedure
            callSt.executeUpdate();

            totalRecord = callSt.getInt(2);

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return totalRecord;
    }

    public static List<Product> getDataByCategoryId(int page, int pageSize, String catalogId) {
        Connection conn = null;
        CallableStatement callSt = null;
        SimpleDateFormat fomat = new SimpleDateFormat();
        List<Product> list = new ArrayList<Product>();
        try {
            // Mở kết nối database
            conn = ConnectDB.openConnect();
            //gọi procdure lấy link các trang DisplayPageNo
            callSt = conn.prepareCall("{call getDataByCategoryId(?,?,?)}");
            // sét các tham s? truy?n vào cho procedure
            callSt.setInt(1, page);
            callSt.setInt(2, pageSize);
            callSt.setString(3, catalogId);
            // Thực thi procedure
            ResultSet rs = callSt.executeQuery();

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
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }
}