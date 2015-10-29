/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Sucursal;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author kevin
 */
public class SucursalDAO {
    public static void insertar(Sucursal S){
    ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call Sucursal_agregar(?, ?, ?, ?) }");
            cs.setString(1, S.getNombreSucursal());
            //cs.setString(2,)
            //Pendientes DATOS
           
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
        
}
