/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author Fatec
 */
public class cliente {
    private int id;
    private String name;
    
    public static ArrayList<cliente> getList() throws Exception{
        ArrayList<cliente> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
         String query = "SELECT * FROM customers ORDER BY FirstName";
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
            int id = rs.getInt("CustomerId");
            String name = rs.getString("FirstName");
            cliente a = new cliente(id,name);
            list.add(a);
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
         
    }

    public static int getCount() throws Exception{
         int count = 0;
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT count(*) as count FROM customers";
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
           count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
         
    }
    public cliente(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

   

   
    
}
