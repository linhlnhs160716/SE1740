/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package entity;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author DELL
 */
@Builder
@Getter
@Setter
@ToString
public class Accounts {

    private int AccountID;
    private String Email;
    private String Password;
    private String CustomerID;
    private int EmployeeID;
    private int Role;

    public Accounts() {
    }

    public Accounts(int AccountID, String Email, String Password, String CustomerID, int EmployeeID, int Role) {
        this.AccountID = AccountID;
        this.Email = Email;
        this.Password = Password;
        this.CustomerID = CustomerID;
        this.EmployeeID = EmployeeID;
        this.Role = Role;
    }

}


