/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Producto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author kevin
 */
public class ProductoDao {
    public static void insertarProducto(Producto P){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        CallableStatement cs = null;
        
        try
        {
            cs = conn.prepareCall("{ call insertarProducto(?, ?, ?, ?, ?, ?, ?) }");
            cs.setString(1, P.getNombreProducto());
            cs.setString(2, P.getDescripcionLarga());
            cs.setString(3, P.getDescripcionCorta());
            cs.setDouble(4, P.getPrecio());
            cs.setInt(5, P.getCantidad());
            cs.setBinaryStream(6, P.getImagenProducto());
            cs.setInt(7, P.getDepartamento().getIdDepartamento());
            int res = cs.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        finally
        {
            DBUtil.closeStatement(cs);
            pool.freeConnection(conn);
        }
    }
}
