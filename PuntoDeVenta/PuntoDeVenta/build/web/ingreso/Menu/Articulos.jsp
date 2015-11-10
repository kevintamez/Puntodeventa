<%-- 
    Document   : Articulos
    Created on : 19/08/2015, 04:09:52 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.List" %>
<%@page import ="Model.Departamento" %>
<%@include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
    </head>
    <body>
        <h1 class="h1header">Articulos</h1>
        <div class="center">
            <form action="AgregarProducto" method="post">
                <table>
                    <th>Ingresa datos de articulo</th>
                    <tr>
                        <td>
                            <input type="text" placeholder="Nombre del producto" name="nombreProducto" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" placeholder="Precio público" name="precioPublico"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Imagen del articulo <input type="file" name="imagenProducto" /></td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="descripcionCorta" id="DesCorta" cols="30" rows="5" placeholder="Descripción Corta"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="descripcionLarga" id="DesLarga" cols="30" rows="10" placeholder="Descripción Larga"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>Departamento: 
                            <select name="departamento">
                                <%
                                    List<Departamento> departamentos = (List<Departamento>)
                                            request.getAttribute("depos");
                                    if(departamentos != null)
                                    {
                                        for(Departamento depo: departamentos)
                                        {
                                %>
                                            <option value ="<%= depo.getIdDepartamento()%>">
                                                    <%=depo.getNombreDepartamento()%>
                                            </option>
                                <%
                                        }
                                    }
                                    else
                                    {
                                %>
                                        <option value ="null">No hay departamentos</option>
                                <%
                                    }
                                %>
                                     
                            </select>
                        </td>
                        <td>
                            Departamento2:
                            <select name = departamento2>
                                <option value ="1">Musica</option>
                                <option value ="2">Lacteos</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Agregar articulo" />
                        </td>
                    </tr>
                    
                    
                </table>
            </form>
        </div>

    </body>
</html>
