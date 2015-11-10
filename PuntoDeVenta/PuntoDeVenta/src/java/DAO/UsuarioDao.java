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
import java.sql.ResultSet;
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
    public static void AgregarUsuario(Usuario U){
       ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertarUsuario(?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?) }");
            cs.setString(1, U.getNombreUsuario());
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
    public static Usuario validarLogin(String email, String password) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call validaLogin(?, ?) }");
            cs.setString(1, email);
            cs.setString(2, password);
            rs = cs.executeQuery();
            if (rs.next()) {
                Usuario u = new Usuario(
                        rs.getInt("idUsuario"), 
                        rs.getString("email"),
                        rs.getString("tipoUsuario"));
                return u;
            }
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }

    public static Usuario buscarUsuario(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call buscarUsuario(?) }");
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                Usuario u = new Usuario(
                        rs.getString("nombreUsuario"), 
                        rs.getString("email"),
                        rs.getString("contraseña"),
                        rs.getString("apellidoMaternoUsuario"),
                        rs.getString("apellidoPaternoUsuario"),
                        rs.getString("tipoUsuario"),
                        rs.getString("CURP"),
                        rs.getString("RFC"),
                        rs.getString("nivelDeEstudios"),
                        rs.getInt("idMunicipio"),
                        rs.getString("colonia"),
                        rs.getInt("codigoPostal"),
                        rs.getString("calle"),
                        rs.getString("telefono"),
                        rs.getDate("fechaNacimiento"),
                        rs.getBinaryStream("fotoUsuario"),
                        rs.getInt("idSucursal"),
                        rs.getString("sexo")
                );
                return u;
            }
            return null;
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
