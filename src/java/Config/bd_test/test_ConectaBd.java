/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config.bd_test;
 import java.sql.Connection;
import java.sql.SQLException;
import Config.bd.ConectaBd;

/**
 *
 * @author Ori
 */
public class test_ConectaBd {
   
    public static void main(String[] args) {
        ConectaBd bd = new ConectaBd();
        try (Connection cn = bd.getConnection()) {
            System.out.println("Conexion OK..");
        } catch (SQLException e) {
            System.out.println("Error: ");
            System.out.println(e.getMessage());
        }
    }
}


