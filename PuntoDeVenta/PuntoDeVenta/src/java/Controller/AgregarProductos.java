/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DepartamentoDAO;
import DAO.ProductoDao;
import Model.Departamento;
import Model.Producto;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ray
 */
public class AgregarProductos extends HttpServlet {

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
        List<Departamento> depos = DepartamentoDAO.buscarDepartamentos();
            request.setAttribute("depos", depos);
        
            String nombreProducto = request.getParameter("nombreProducto");
            String descripcionLarga = request.getParameter("descripcionLarga");
            String descripcionCorta = request.getParameter("descripcionCorta");
            String precio = request.getParameter("precioPublico");
            InputStream imagenProducto = request.getInputStream();
            //String departamento = request.getParameter("departamento");
            
            Departamento depto = new Departamento("Salchichoneria");
            Producto producto = new Producto(nombreProducto, descripcionLarga, 
                    descripcionCorta, Integer.parseInt(precio),  imagenProducto, depto);
            
            ProductoDao.insertar(producto);
            
            ServletContext sc = getServletContext();
            RequestDispatcher disp = sc.getRequestDispatcher("/Articulos.jsp");    //FIX THIS, probably wrong!!
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
