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
import org.springframework.ui.ModelMap;

/**
 *
 * @author Administrator
 */
public class UserModel {

    SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");

    public boolean checkLoginFontEnd(User account) {
        boolean result = false;
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call checkLoginUser(?,?)}");
            calla.setString(1, account.getEmail());
            calla.setString(2, account.getPassword());
            rs = calla.executeQuery();
            while (rs.next()) {
                result = true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    //Kiem tra Email da duoc dang ky chua
    public boolean checkUserEmail(String mail) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call checkUserEmail(?,?)}");
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

    //Them tai khoan vao CSDL sau khi dang ky
    public boolean insertAccount(User user) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call insertAcount(?,?,?,?,?)}");
            calla.setString(1, user.getEmail());
            calla.setString(2, user.getUserName());
            calla.setString(3, user.getAddress());
            calla.setString(4, user.getPhone());
            calla.setString(5, user.getPassword());
            calla.executeUpdate();
            //Kiem tra xem xac nhan mat khau da chinh xac chua
            //  if (calla.getString(4) == calla.getString(5)) {
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    //Sua thong tin tai khoan khach hang
    public boolean updateAccount(User user) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call updateUserByEmail(?,?,?,?,?)}");
            calla.setString(1, user.getEmail());
            calla.setString(2, user.getUserName());
            calla.setString(3, user.getAddress());
            calla.setString(4, user.getPhone());
            calla.setString(5, user.getPassword());
            calla.executeUpdate();
            //Kiem tra xem xac nhan mat khau da chinh xac chua
            //  if (calla.getString(4) == calla.getString(5)) {
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    public User getUserByUserName(String name) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        User user = new User();
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{call getUserByName(?)}");
            calla.setString(1, name);
            rs = calla.executeQuery();
            while (rs.next()) {
                user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("Password"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setEmail(rs.getString("Email"));
                if (rs.getDate("Created") == null) {
                    user.setCreated(null);
                } else {
                    user.setCreated(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("Status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return user;
    }

    public User getUserByEmail(String email) {
        SimpleDateFormat fomat = new SimpleDateFormat();
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        User user = new User();
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{call getUserByEmail(?)}");
            calla.setString(1, email);
            rs = calla.executeQuery();
            while (rs.next()) {
                user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("Password"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setEmail(rs.getString("Email"));
                if (rs.getDate("Created") == null) {
                    user.setCreated(null);
                } else {
                    user.setCreated(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("Status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return user;
    }

    public List<User> getAllUserGuest() {
        Connection conn = null;
        CallableStatement calla = null;
        List<User> list = new ArrayList<User>();
        ResultSet rs;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call getAllUserGuest()}");
            rs = calla.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("PassWord"));
                user.setEmail(rs.getString("Email"));
                user.setPhone(rs.getString("Phone"));
                user.setAddress(rs.getString("Address"));
                if (rs.getDate("Created") == null) {
                    user.setCreated(null);
                } else {
                    user.setCreated(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("Status"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return list;
    }
}
