/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Empresa;
import Model.Sucursal;
import Model.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Types;

/**
 *
 * @author kevin
 */
public class UsuarioDao {
    public static void insertarUsuarioSucursalEmpresa(Usuario U,Empresa E, Sucursal S){
       ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call ManagerEmpresaSucursal(?, ?, ?, ?, ?) }");
            cs.setString(1, E.getNombreEmpresa());
            cs.setString(2, S.getNombreSucursal());
            cs.setString(3, U.getNombreUsuario());
            cs.setString(4, U.getEmail());
            cs.setString(5, U.getContraseña());
            
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    public static void eliminar(int id){
    ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call UsuarioBorrar(?, ?) }");
            cs.setInt(1, id);
            cs.registerOutParameter(2, Types.BIT);
            cs.execute();
            byte res = cs.getByte(2);
            System.out.println("[Borrar] Resultado=" + res);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
    
}
