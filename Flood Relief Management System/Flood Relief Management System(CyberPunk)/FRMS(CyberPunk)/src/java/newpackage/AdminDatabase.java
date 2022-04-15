/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.*;

public class AdminDatabase {

    Connection con;

    public AdminDatabase(Connection con) {
        this.con = con;
    }


    //log user
    public Admin logAdmin(String email, String password) {
        Admin admin = null;

        try {
            String query = "select * from admin where email=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query); 
            ps.setString(1,email);
            ps.setString(2, password);
            
            ResultSet rs  = ps.executeQuery();
            
            if(rs.next()){
                 admin = new Admin();
                 admin.setId(rs.getInt("id"));
                 admin.setName(rs.getString("name"));
                 admin.setEmail(rs.getString("email"));
                 admin.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
    
}
