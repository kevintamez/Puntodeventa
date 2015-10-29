<%-- 
    Document   : Articulos
    Created on : 19/08/2015, 04:09:52 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form action="">
                <table>
                    <th>Ingresa datos de articulo</th>
                    <tr>
                        <td>
                            <input type="text" placeholder="Nombre del producto" name="nombreProducto" />
                        </td>
                    </tr>
                    <tr>
                        <td><input type="number" placeholder="codigo" name="codigoProducto" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" placeholder="Existencia" name="existencia"/>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" placeholder="Precio público" name="precioPublico"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Unidad de Medida" name="unidadDeMedida" />
                        </td>
                    </tr>
                    <tr>
                        <td>Imagen del articulo <input type="file" name="imagenProducto" /></td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="DescripcionCorta" id="DesCorta" cols="30" rows="5" placeholder="Descripción Corta"></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <textarea name="DescripcionLarga" id="DesLarga" cols="30" rows="10" placeholder="Descripción Larga"></textarea>
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
