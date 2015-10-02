<%-- 
    Document   : Reportes
    Created on : 14/09/2015, 02:29:10 PM
    Author     : kevin
--%>

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
                <select name="filtroSelect" id="Filtro">
                    <option value="Sucursal">Sucursal</option>
                    <option value="Departamento">Departamento</option>
                    <option value="Cajero">Cajero</option>
                    <option value="MetodoDePago">Metodo de pago</option>
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
        </div>
    </body>
</html>
