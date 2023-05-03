package com.tecsup.ventas;

import java.sql.*;
import java.util.ArrayList;

public class ControladorProducto {
    
    public static int agregarProducto(Producto p){
        int status = 0;
        try {
            Connection conn = Conexion.getConnection();
            String sql = "insert into producto (codigo, nombre, precio, stock) values(?,?,?,?);";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, p.getCodigo());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getPrecio());
            ps.setString(4, p.getStock());
            
            status = ps.executeUpdate();          
            conn.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    
    public ArrayList<Producto> listarProducto(){
        ArrayList<Producto> lista = new ArrayList<Producto>();
        try {
            Connection conn = Conexion.getConnection();
            String sql = "select * from producto";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()){
                //Instanciamos el objeto Producto
                Producto producto = new Producto();
                //Obtenemos el valor de los campos de la tabla
                String cod = rs.getString("codigo");
                String nom = rs.getString("nombre");
                String prec = rs.getString("precio");
                String stock = rs.getString("stock");
                //Establecemos los valores para los atributos del objeto
                producto.setCodigo(cod);
                producto.setNombre(nom);
                producto.setPrecio(prec);
                producto.setStock(stock);
                //Agregamos el objeto instanciado a la lista
                lista.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return lista;
    }
    
    public static Producto BuscarProducto(String nombre){
        Producto prod = new Producto();
        try {
            Connection conn = Conexion.getConnection();
            String sql = "select * from producto where nombre = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nombre);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                prod.setCodigo(rs.getString(1));
                prod.setNombre(rs.getString(2));
                prod.setPrecio(rs.getString(3));
                prod.setStock(rs.getString(4));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return prod;
    }
}
