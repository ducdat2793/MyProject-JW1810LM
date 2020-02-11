/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import myProject.entities.Author;
import myProject.util.ConnectDB;

/**
 *
 * @author Administrator
 */
public class AuthorModel {
     public List<Author> getAllAuthor() {
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Author> list = new ArrayList<>();
        try {
            conn = ConnectDB.openConnect();
            callSt = conn.prepareCall("{call getAllAuthor()}");
            rs = callSt.executeQuery();
            while (rs.next()) {
                Author au = new Author();
                au.setAuthorId(rs.getString("AuthorId"));
                au.setAuthorName(rs.getString("AuthorName"));
                au.setAuthorInformation(rs.getString("AuthorInfomation"));
                au.setStatus(rs.getBoolean("Status"));           
                list.add(au);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectDB.closeConnect(conn, callSt);
        }
        return list;
    }
}
