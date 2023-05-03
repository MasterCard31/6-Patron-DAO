
package com.tecsup.ventas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conexion {
    
    public static Connection getConnection(){
        String driver  = "com.mysql.cj.jdbc.Driver";
        String url     = "jdbc:mysql://localhost/ventas";
        String usuario = "root";
        String clave   = "tecsup";
        
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,usuario,clave);
            System.out.println("Conexion exitosa");
            return conn;
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return conn;
    }
    
}
