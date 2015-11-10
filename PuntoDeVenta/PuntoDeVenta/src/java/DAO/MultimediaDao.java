/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Multimedia;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author kevin
 */
public class MultimediaDao {
    public static void insertarVideo(Multimedia M) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        
        try {
            cs = connection.prepareCall("{ call insertarvideo(?, ?, ?) }");
            cs.setString(1, M.getDescripcion());
            cs.setString(2, M.getUbicacion());
            cs.setString(3, M.getTipo());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
