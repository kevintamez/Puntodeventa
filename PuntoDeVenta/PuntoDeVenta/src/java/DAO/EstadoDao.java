/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Estado;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kevin
 */
public class EstadoDao {
    public static List<Estado> buscarEstado() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Estado> municipio = new ArrayList<>();
            cs = connection.prepareCall("{ call buscarEstado }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Estado Mun = new Estado(
                        rs.getInt("idEstado"), 
                        rs.getString("nombreEstado"));
                municipio.add(Mun);
            }
            return municipio;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
