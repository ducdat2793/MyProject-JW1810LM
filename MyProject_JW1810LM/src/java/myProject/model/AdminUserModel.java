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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import myProject.entities.AdminUser;
import myProject.entities.User;
import myProject.util.ConnectDB;

/**
 *
 * @author Administrator
 */
public class AdminUserModel {

    SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");

    public boolean checkLogin(AdminUser user) {
        boolean result = false;
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call checkLogin(?,?)}");
            calla.setString(1, user.getUserName());
            calla.setString(2, user.getPassword());
            rs = calla.executeQuery();
            while (rs.next()) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    public int getTotalUser() {
        Connection conn = null;
        CallableStatement calla = null;
        int result = 0;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call getTotalUser(?)}");
            calla.registerOutParameter(1, Types.INTEGER);
            calla.executeUpdate();
            result = calla.getInt(1);
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    public List<AdminUser> getAllUser() {
        Connection conn = null;
        CallableStatement calla = null;
        List<AdminUser> list = new ArrayList<AdminUser>();
        ResultSet rs;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call getAllUser()}");
            rs = calla.executeQuery();
            while (rs.next()) {
                AdminUser user = new AdminUser();
                user.setUserId(rs.getString("AdminId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("UPassWord"));
                user.setEmail(rs.getString("Email"));
                user.setPhone(rs.getString("Phone"));
                user.setAddress(rs.getString("UAddress"));
                if (rs.getDate("Created") == null) {
                    user.setCreated(null);
                } else {
                    user.setCreated(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("UStatus"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return list;
    }

    //Kiem tra Email cua trang quan tri da duoc dang ky chua
    public boolean checkUserAdminEmail(String mail) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call checkUserAdminEmail(?,?)}");
            calla.setString(1, mail);
            calla.registerOutParameter(2, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(2);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    //Lay thong tin tai khoan bang email trang quan tri
    public AdminUser getUserAdminByEmail(String email) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        AdminUser user = new AdminUser();
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{call getUserAdminByEmail(?)}");
            calla.setString(1, email);
            rs = calla.executeQuery();
            while (rs.next()) {
                user.setUserId(rs.getString("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("UPassWord"));
                user.setAddress(rs.getString("UAddress"));
                user.setPhone(rs.getString("Phone"));
                user.setEmail(rs.getString("Email"));
                if (rs.getDate("Created") == null) {
                    user.setCreated(null);
                } else {
                    user.setCreated(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("UStatus"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return user;
    }

    //Them moi tai khoan Admin
    public boolean insertAdmin(AdminUser admin) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call insertAcountAdmin(?,?,?,?,?)}");
            //set-du-lieu-cho-tham-so-vao
            callSt.setString(1, admin.getUserName());
            callSt.setString(2, admin.getPassword());            
            callSt.setString(3, admin.getEmail());
            callSt.setString(4, admin.getPhone());
            callSt.setString(5, admin.getAddress());
            
            callSt.executeUpdate();
            check = true;
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return check;
    }
}
