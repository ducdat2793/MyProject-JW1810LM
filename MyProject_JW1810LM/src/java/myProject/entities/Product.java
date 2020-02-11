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
public class Product {
    private String productId;
    private String productName;
    private String price;
    private String content;
    private String contentDetail;
    private int view;
    private int buyItem;
    private int discount;
    private String images;
    private String created;
    private boolean status;
    private String authorId;
    private String categoryId;
    private String publisherId;
    private int quantity;
    private String priceInput;
    private String priceDiscount;

    public Product(String productId, String productName, String price, String content, String contentDetail, int view, int buyItem, int discount, String images, String created, boolean status, String authorId, String categoryId, String publisherId, int quantity, String priceInput, String priceDiscount) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.content = content;
        this.contentDetail = contentDetail;
        this.view = view;
        this.buyItem = buyItem;
        this.discount = discount;
        this.images = images;
        this.created = created;
        this.status = status;
        this.authorId = authorId;
        this.categoryId = categoryId;
        this.publisherId = publisherId;
        this.quantity = quantity;
        this.priceInput = priceInput;
        this.priceDiscount = priceDiscount;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContentDetail() {
        return contentDetail;
    }

    public void setContentDetail(String contentDetail) {
        this.contentDetail = contentDetail;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public int getBuyItem() {
        return buyItem;
    }

    public void setBuyItem(int buyItem) {
        this.buyItem = buyItem;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
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

    public String getAuthorId() {
        return authorId;
    }

    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(String publisherId) {
        this.publisherId = publisherId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPriceInput() {
        return priceInput;
    }

    public void setPriceInput(String priceInput) {
        this.priceInput = priceInput;
    }

    public String getPriceDiscount() {
        return priceDiscount;
    }

    public void setPriceDiscount(String priceDiscount) {
        this.priceDiscount = priceDiscount;
    }

    public Product() {
    }

  

   


}