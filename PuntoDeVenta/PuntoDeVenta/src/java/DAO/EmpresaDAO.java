/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Empresa;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author kevin
 */
public class EmpresaDAO {
    public static void insertar(Empresa E){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call Empresa_agregar(?, ?, ?, ?) }");
            cs.setString(1, E.getNombreEmpresa());
            cs.setBinaryStream(2, E.getLogoEmpresa());
            cs.setBinaryStream(3,E.getImagenEmpresa());
            cs.setString(4, E.getsloganEmpresa());
           
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
