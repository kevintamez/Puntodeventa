/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Producto;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author kevin
 */
public class ProductoDao {
    public static void insertar(Producto P){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertarProducto(?, ?, ?, ?, ?, ?) }");
            cs.setString(1, P.getNombreProducto());
            cs.setString(2, P.getDescripcionLarga());
            cs.setString(3, P.getDescripcionCorta());
            cs.setInt(4, P.getPrecio());
            cs.setBinaryStream(5, P.getImagenProducto());
            cs.setInt(6, P.getDepartamento().getIdDepartamento());           
            int res = cs.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
