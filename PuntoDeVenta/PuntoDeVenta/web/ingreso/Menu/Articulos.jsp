<%-- 
    Document   : Articulos
    Created on : 19/08/2015, 04:09:52 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/ingreso/Menu/Menu.jsp" %>
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
                            <input type="text" placeholder="Nombre del producto" name="nombreArticulo" />
                        </td>
                    </tr>
                    <tr>
                        <td><input type="number" placeholder="codigo" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" placeholder="Existencia"/>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" placeholder="Precio público"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Unidad de Medida" />
                        </td>
                    </tr>
                    <tr>
                        <td>Imagen del articulo <input type="file" /></td>
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
