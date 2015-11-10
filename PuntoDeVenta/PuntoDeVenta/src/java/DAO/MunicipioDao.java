/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Municipio;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kevin
 */
public class MunicipioDao {
    public static List<Municipio> buscarMunicipio() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Municipio> municipio = new ArrayList<>();
            cs = connection.prepareCall("{ call buscarMunicipio }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Municipio Mun = new Municipio(
                        rs.getInt("idMunicipio"), 
                        rs.getString("nombreMunicipio"));
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
