/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package dao;

import connection.SQLServerConnection;
import entity.Accounts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DUNG PC
 */
public class AccountDAO {

    public Accounts authenticate(String username, String password) {

        String sql = "Select "
                + " AccountID,"
                + " Email,"
                + " Password,"
                + " CustomerID,"
                + " EmployeeID,"
                + " Role"
                + " FROM Accounts"
                + " Where Email = ? And Password = ?";//

        try {
            Connection connection = SQLServerConnection.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Accounts a = Accounts.builder()
                        .AccountID(rs.getInt("AccountID"))
                        .Email(rs.getString("Email"))
                        .Password(rs.getString("Password"))
                        .CustomerID(rs.getString("CustomerID"))
                        .EmployeeID(rs.getInt("EmployeeID"))
                        .Role(rs.getInt("Role"))
                        .build();
                return a;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public int Register(Accounts account) {

        String sql = "INSERT INTO [dbo].[Accounts]\n"
                + "           ([Email]\n"
                + "           ,[Password]\n"
                + "           ,[CustomerID]\n"
                + "           ,[EmployeeID]\n"
                + "           ,[Role])\n"
                + "     VALUES\n"
                + "           (?,?,null,null,2)";//

        try {
            Connection connection = SQLServerConnection.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, account.getEmail());
//            ps.setString(2, account.getPassword());
            return ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;

    }

}