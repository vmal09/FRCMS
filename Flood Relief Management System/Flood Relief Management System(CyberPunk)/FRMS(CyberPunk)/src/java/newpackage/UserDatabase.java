/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.*;

public class UserDatabase {

    Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    //for register user 
    public boolean saveUser(User user) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into user(name,email,password,Compartment) values(?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setInt(4, 0);

            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }

    //log user
    public User logUser(String email, String password) {
        User user = null;

        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setCompartment(rs.getString("Compartment"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public User logUser(String feedback) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int update(Dependent a) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update dependent set dname=?,relation=?,age=?,gender=?,address=?,postcode=?,state=? where id=?");
            ps.setString(1, a.getDname());
            ps.setString(2, a.getRelation());
            ps.setInt(3, a.getAge());
            ps.setString(4, a.getGender());
            ps.setString(5, a.getAddress());
            ps.setString(6, a.getPostcode());
            ps.setString(7, a.getAddress());

            ps.setInt(8, a.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(int a) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from dependent where id=?");
            ps.setInt(1, a);
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static Dependent getRecordById(int id) {
        Dependent a = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from dependent where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                a = new Dependent();
                a.setId(rs.getInt("id"));
                a.setDname(rs.getString("dname"));
                a.setRelation(rs.getString("relation"));
                a.setAge(rs.getInt("age"));
                a.setGender(rs.getString("gender"));
                a.setAddress(rs.getString("address"));
                a.setPostcode(rs.getString("postcode"));
                a.setState(rs.getString("state"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return a;
    }
    
    

}
