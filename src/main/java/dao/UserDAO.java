/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtils;

/**
 *
 * @author avillX
 */
public class UserDAO {
    private final static String LOGIN = "SELECT * FROM dbo.[User] WHERE email=? AND password=?";
    private final static String APPROVED_USER = "UPDATE dbo.[User] SET status = ? where user_id = ?";


public UserDTO checkLogin(String email, String password) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        UserDTO user = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, email);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String userID = rs.getString("user_id");
                    String fullName = rs.getString("fullName");                   
                    String phone = rs.getString("phone");
                    String status = rs.getString("status");
                    String roleID = rs.getString("Role");
                    user = new UserDTO(userID, password, fullName, email, phone, status, roleID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }

    public boolean Approved_User(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(APPROVED_USER);
                ptm.setString(1, user.getStatus());
                ptm.setString(2, user.getUserID());             
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

  public static void main(String[] args) throws SQLException {
        
        UserDAO dao = new UserDAO();
        UserDTO list = dao.checkLogin("hungtqse150272@fpt.edu.vn", "hung");
        if(list.getStatus().trim().equals("APPROVED"))
            System.out.println("OK");
        }
}
