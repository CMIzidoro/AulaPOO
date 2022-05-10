/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class funcionarios {
    private int id;
    private String name;
    
    public static ArrayList<funcionarios> getList() throws Exception{
        ArrayList<funcionarios> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT * FROM employees ORDER BY FirstName";
        ResultSet rs = stmt.executeQuery(query);
        
        while(rs.next()){
            int id = rs.getInt("EmployeeId");
            String name = rs.getString("FirstName");
            funcionarios a = new funcionarios(id,name);
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
        String query = "SELECT count(*) as count FROM employees";
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
           count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
         
    }
    
    public funcionarios(int id, String name) {
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
