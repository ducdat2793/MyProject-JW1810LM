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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import myProject.entities.Category;
import myProject.util.ConnectDB;

/**
 *
 * @author Administrator
 */
public class CategoryModel {
//Danh sach Category

    //Lay danh sach Category
    public List<Category> getAllCategory() {
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Category> list = new ArrayList<>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getAllCategory()}");
            rs = callSt.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getString("CategoryId"));
                category.setCategoryName(rs.getString("CategoryName"));
                category.setCategoryDetail(rs.getString("CategoryDetail"));
                category.setStatus(rs.getBoolean("Status"));
                category.setType(rs.getInt("Type"));
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //Them 1 danh muc san pham moi
     public boolean insertCategory(Category cate) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call insertCategory(?,?,?,?,?)}");
            //set-du-lieu-cho-tham-so-vao
            callSt.setString(1, cate.getCategoryId());
            callSt.setString(2, cate.getCategoryName());            
            callSt.setString(3, cate.getCategoryDetail());
            callSt.setInt(4, cate.getType());
            callSt.setBoolean(5, cate.isStatus());
            
            callSt.executeUpdate();
            check = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return check;
    }
    
 public List<Category> getCategoryByType(int type) {
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Category> list = new ArrayList<>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getCategoryByType(?)}");
            callSt.setInt(1, type);
            rs = callSt.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getString("CategoryId"));
                category.setCategoryName(rs.getString("CategoryName"));
                category.setCategoryDetail(rs.getString("CategoryDetail"));
                category.setStatus(rs.getBoolean("Status"));
                category.setType(rs.getInt("Type"));
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }   

 //Lay catrgory theo ID
 public Category getCategoryById(String cateId) {
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
          Category category = new Category();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getCategoryById(?)}");
            callSt.setString(1, cateId);
            rs = callSt.executeQuery();         
            while (rs.next()) {            
                category.setCategoryId(rs.getString("CategoryId"));
                category.setCategoryName(rs.getString("CategoryName"));
                category.setCategoryDetail(rs.getString("CategoryDetail"));
                category.setStatus(rs.getBoolean("Status"));
                category.setType(rs.getInt("Type"));              
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return category;
    } 
 
 public boolean deleteCategory(String id) {
        //Khai báo các đối tượng kết nối sql
        Connection conn = null;
        CallableStatement callSt = null;
        // biến kết quả
        boolean result = false;
        try {
            // Mở chuôi kết nối
            conn = ConnectDB.openConnect();
            //gọi procedure sửa thông tin sản phẩm
            callSt = conn.prepareCall("{ call deleteCategory(?)}");
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
 
}
