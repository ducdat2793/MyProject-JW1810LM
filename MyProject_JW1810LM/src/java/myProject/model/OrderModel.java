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
import myProject.entities.Common;
import myProject.entities.Order;
import myProject.entities.OrderDetail;
import myProject.util.ConnectDB;

/**
 *
 * @author Administrator
 */
public class OrderModel {
     SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
    public boolean insertOrder(Order order) {

        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call insertOrder(?,?,?,?,?,?,?)}");
            calla.setString(1, order.getOrderName());
            calla.setString(2, order.getOrderNumber());
            calla.setString(3, order.getPhone());
            calla.setString(4, order.getEmail());
            calla.setString(5, order.getAddress());
            calla.setFloat(6, order.getTotalAmount());
            calla.setInt(7, order.getUserId());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }
    public boolean insertOrderDetail(OrderDetail orderDetail) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call insertOrderDetail(?,?,?,?,?,?)}");
            calla.setInt(1, orderDetail.getOrderId());
             calla.setString(2, orderDetail.getProductName());
            calla.setString(3, orderDetail.getProductId());
            calla.setFloat(4, orderDetail.getAmount());
            calla.setFloat(5, orderDetail.getPrice());
            calla.setInt(6, orderDetail.getQuantity());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }
    public int getOrderIdNewByUserId(int id) {
        Connection conn = null;
        CallableStatement calla = null;
        int result = 0;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call getOrderIdNewByUserId(?,?)}");
            calla.setInt(1, id);
            calla.registerOutParameter(2, Types.INTEGER);
            calla.executeUpdate();
            result = calla.getInt(2);
        } catch (SQLException ex) {
            Logger.getLogger(AdminUserModel.class.getName()).log(Level.SEVERE,
                    null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }

    public float getTotalMoney() {
        Connection conn = null;
        CallableStatement calla = null;
        float result = 0;
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{ call getTotalMoney(?)}");
            calla.registerOutParameter(1, Types.FLOAT);
            calla.executeUpdate();
            result = calla.getFloat(1);
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectDB.closeConnect(conn, calla);
        }
        return result;
    }
    
       public int getTotalOrder(){
      Connection conn = null;
      CallableStatement calla = null;
      int result = 0;
         try {
             conn = ConnectDB.openConnect();
             calla = conn.prepareCall("{ call getTotalOrder(?)}");
             calla.registerOutParameter(1, Types.INTEGER);
             calla.executeUpdate();
             result = calla.getInt(1);
         } catch (SQLException ex) {
             Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
         } finally{
            ConnectDB.closeConnect(conn, calla);
         }
         return result;      
    }
   
        public List<Order> getAllOrder(){
        Connection conn = null;
        CallableStatement calla = null;
        List<Order> list = new ArrayList<Order>();
        try {
            conn = ConnectDB.openConnect();
            calla = conn.prepareCall("{call getAllOrder()}");
            ResultSet rs = calla.executeQuery();
            while(rs.next()){
                Order order = new Order();
                order.setOrderId(rs.getInt("OrderId"));
                order.setOrderName(rs.getString("OrderName"));
                order.setOrderNumber(rs.getString("OrderNumber"));
                order.setPhone(rs.getString("Phone"));
                order.setEmail(rs.getString("Email"));
                order.setAddress(rs.getString("Address"));
                //trong table ko co PaymentMethod collum
               // order.setPaymentMethod(rs.getString("PaymentMethod"));
                order.setTotalAmount(rs.getFloat("TotalAmount"));
                if(rs.getDate("PaymentDate") != null){
                    order.setPaymentDate(fomat.format(rs.getDate("PaymentDate")));
                } 
                if(rs.getDate("CreatedDate") != null){
                    order.setCreated(fomat.format(rs.getDate("CreatedDate")));
                } 
               
                order.setStatus(rs.getBoolean("Status"));
                list.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            ConnectDB.closeConnect(conn, calla);
        }
        return list;
    }
       
}
