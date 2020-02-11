/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.entities;

/**
 *
 * @author Administrator
 */
public class Order {

    private int orderId;
    private int userId;
    private String orderName;
    private String orderNumber;
    private String phone;
    private String email;
    private String address;
    private float totalAmount;
    private String paymentDate;
    private String paymentMethod;
    private String created;
    private boolean status;

    public Order() {
    }

    public Order(int orderId, int userId, String orderName, String orderNumber, String phone, String email, String address, float totalAmount, String paymentDate, String paymentMethod, String created, boolean status) {
        this.orderId = orderId;
        this.userId = userId;
        this.orderName = orderName;
        this.orderNumber = orderNumber;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.totalAmount = totalAmount;
        this.paymentDate = paymentDate;
        this.paymentMethod = paymentMethod;
        this.created = created;
        this.status = status;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
}