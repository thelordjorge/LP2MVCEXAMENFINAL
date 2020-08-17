/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config.bd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ori
 */
public class ConectaBd {
    
    public Connection getConnection() throws SQLException{
        Connection cn = null;
        try {
            Class.forName(driver).newInstance();
            cn = DriverManager.getConnection(url, user, password);

        } catch (ClassNotFoundException 
                | InstantiationException 
                | IllegalAccessException ex) {
       
            throw new SQLException(ex.getMessage());
        }
        return cn;
    }
    private final String url = "jdbc:mysql://localhost:8080/academico";
    private final String driver = "com.mysql.jdbc.Driver";
    private final String user = "root";
    private final String password = "123";
}


