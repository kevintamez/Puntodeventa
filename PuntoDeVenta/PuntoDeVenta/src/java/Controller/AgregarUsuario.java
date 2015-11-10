/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UsuarioDao;
import Model.Empresa;
import Model.Sucursal;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class AgregarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        if ("insertarUsuario".equals(accion)) {
            String nombre = request.getParameter("nombreUsuario");
            String email = request.getParameter("EmailUsuario");
            String contrasenia = request.getParameter("contraseniaUsuario");
            String apellidoPaterno = request.getParameter("apellidoPaterno");
            String apellidoMaterno = request.getParameter("apellidoMaterno");
            String tipoUsuario = request.getParameter("Tipodeusuario");
            String fechaDeNacimiento = request.getParameter("fechadenacimiento");
            String nivelDeEstudios=request.getParameter("nivelDeEstudios");
            String municipio=request.getParameter("municipio");
            String Curp=request.getParameter("CURP");
            String Rfc=request.getParameter("RFC");
            String strsexo = request.getParameter("sexo");

        }
        /* TODO output your page here. You may use following sample code. */
        String mail = request.getParameter("mail");
        String usuarioNombre = request.getParameter("Nombrelogin");
        String password = request.getParameter("Contrasenia");
        String empresaNombre = request.getParameter("nombreempresa");
        String sucursalNombre = request.getParameter("nombreSucursal");
        
        Usuario u = new Usuario(usuarioNombre, mail, password);
        Empresa e = new Empresa(empresaNombre);
        Sucursal s = new Sucursal(sucursalNombre);

        UsuarioDao.insertarUsuarioSucursalEmpresa(u, e, s);

        RequestDispatcher disp = getServletContext().
                getRequestDispatcher("/ingreso/Menu/Usuario.jsp");
        disp.forward(request, response);
        
        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
