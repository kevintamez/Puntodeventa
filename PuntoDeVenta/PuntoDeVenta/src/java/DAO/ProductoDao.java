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
            cs = connection.prepareCall("{ call Empresa_agregar(?, ?, ?, ?) }");
            cs.setString(1, P.getNombreProducto());
            //Pendiente
           
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
