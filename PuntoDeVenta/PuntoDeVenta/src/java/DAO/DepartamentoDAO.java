/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Departamento;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ray
 */
public class DepartamentoDAO {
    public static List<Departamento> buscarDepartamentos()
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try
        {
            List<Departamento> departamentos = new ArrayList<Departamento>();
            cs = connection.prepareCall("{ call buscarDepartamentos() }");
            rs = cs.executeQuery();
            while(rs.next())
            {
                Departamento dep = new Departamento(
                        rs.getInt("idDepartamento"),
                        rs.getString("nombreDepartamento"));
                departamentos.add(dep);
            }
            return departamentos;
        } 
        catch(Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
