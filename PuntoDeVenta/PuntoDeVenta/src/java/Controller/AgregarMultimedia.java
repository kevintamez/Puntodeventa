/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author kevin
 */
public class AgregarMultimedia extends HttpServlet {

    private final String directorio = "archivos";
    
    private String extractExtension(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                String filename = s.substring(s.indexOf("=") + 2, s.length() - 1);
                return filename.substring(filename.indexOf(".") - 1, filename.length());
            }
        }
        return "";
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String uploadPath = getServletContext().getRealPath("/" + directorio + "/");
        System.out.println("PATH: " + uploadPath);
        
        File fdir = new File(uploadPath);
        if (!fdir.exists()) {
            fdir.mkdir();
        }
        
        Archivo archivo = new Archivo();
        String descripcion = request.getParameter("descripcion");
        archivo.setDescripcion(descripcion);
        
        Part filePart = request.getPart("archivo");
        if (filePart != null && filePart.getSize() > 0) {
            String contentType = filePart.getContentType();
            if (!contentType.equals("video/mp4") 
                    && !contentType.equals("image/jpeg")) {
                request.setAttribute("error", "Archivo con formato incorrecto.");
                RequestDispatcher disp = getServletContext().getRequestDispatcher("/desplegar.jsp");
                disp.forward(request, response);
                
            } else {
                archivo.setTipo(contentType);
                String nombreArchivo = String.valueOf(System.currentTimeMillis());
                nombreArchivo += extractExtension(filePart);
                
                if (contentType.equals("video/mp4")) {
                    String path = directorio + "/" + nombreArchivo;
                    archivo.setUbicacion(path);
                    ArchivoDao.insertarVideo(archivo);
                    filePart.write(uploadPath + "/" + nombreArchivo);
                    request.setAttribute("path", path);
                    
                } else if (contentType.equals("image/jpeg")) {
                    InputStream inputStream = filePart.getInputStream();
                    archivo.setStream(inputStream);
                    int id = ArchivoDao.insertarImagen(archivo);
                    request.setAttribute("id", id);
                    
                }
            }
        }
        
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/desplegar.jsp");
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
