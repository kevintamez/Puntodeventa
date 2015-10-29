<%-- 
    Document   : Reportes
    Created on : 14/09/2015, 02:29:10 PM
    Author     : kevin
--%>

<%@page import="Model.Sucursal"%>
<%@page import="java.util.List"%>
<%@page import="Model.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.jsp"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes Manager</title>
    </head>
    <body>
        <h1 class="h1header">Reporte general</h1>
        <div class="center">
            <form action="">

                <input type="date"name="inicio" /> al: <input type="date" name="fin" />
                
                <select name="filtroSucursal" id="">
                    <%
                                List<Sucursal> departamentos = (List<Sucursal>) request.getAttribute("sucursal");
                                if (departamentos != null) {
                                    for (Sucursal suc : departamentos) {
                            %>
                                        <option value="<%= suc.getIdSucursal()%>"
                                                
                                                ><%= suc.getNombreSucursal()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                </select>
                
                <select name="departamento">                            
                            <%
                                List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
                                if (departamentos != null) {
                                    for (Departamento depto : departamentos) {
                            %>
                                        <option value="<%= depto.getIdDepartamento()%>"
                                                <%= emp != null && emp.getDepartamento().getId() == depto.getId() ? "selected" : "" %>
                                                ><%= depto.getNombreDepartamento()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                            <!--<option value="1">Mantenimiento</option>
                            <option value="2">Tesorería</option>
                            <option value="3">Dirección</option>
                            <option value="4">Recursos humanos</option>
                            <option value="5">CSI</option>
                            <option value="6">Escolar</option>
                            <option value="7">Compras</option>-->
                        </select>
                
            </form>

            <table>
                <th>Reportes 

                </th>

                <tr>
                    <td>Fecha de venta</td>
                    <td>Sucursal</td>
                    <td>Departamento</td>
                    <td>Cajero</td>
                    <td>Articulo</td>
                    <td>Descripción</td>
                    <td>Cantidad</td>
                    <td>Precio de venta</td>
                    <td>Descuento</td>
                    <td>Impuesto</td>
                    <td>Subtotal</td>
                    <td>Metodo de pago</td>
                </tr>
            </table>

            <table>

                <th>Articulos</th>
                <tr>
                    <td>nombre</td>
                    <td>descripcion corta</td>
                    <td>editar</td>
                </tr>


            </table>
        </div>
    </body>
</html>
