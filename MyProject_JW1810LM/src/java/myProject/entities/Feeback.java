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
public class Feeback {   
    private int feebackId;
    private String name;
    private String email;
    private String content;
     private String title;
    private boolean status;

    public Feeback() {
    }

    public Feeback(int feebackId, String name, String email, String content, String title, boolean status) {
        this.feebackId = feebackId;
        this.name = name;
        this.email = email;
        this.content = content;
        this.title = title;
        this.status = status;
    }

    public int getFeebackId() {
        return feebackId;
    }

    public void setFeebackId(int feebackId) {
        this.feebackId = feebackId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
}