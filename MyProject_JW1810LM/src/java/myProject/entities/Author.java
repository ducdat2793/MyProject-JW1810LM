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
public class Author {
    private String authorId;
    private String authorName;
    private String authorInformation;
    private boolean status;

    public Author() {
    }

    public Author(String authorId, String authorName, String authorInformation, boolean status) {
        this.authorId = authorId;
        this.authorName = authorName;
        this.authorInformation = authorInformation;
        this.status = status;
    }

    public String getAuthorId() {
        return authorId;
    }

    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getAuthorInformation() {
        return authorInformation;
    }

    public void setAuthorInformation(String authorInformation) {
        this.authorInformation = authorInformation;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
