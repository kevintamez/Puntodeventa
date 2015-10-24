<%-- 
    Document   : Cajero
    Created on : 19/08/2015, 04:12:21 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.jsp" %>

<%
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de cajero</title>

    </head>
    <body>
        <h1 class="h1header">Cajero</h1>
        <div class="center">

            <form action="Articulos.jsp" method="post">
                <table>
                    <th>Cajero</th>
                    <tr>
                        <td>
                            <input type="text" placeholder="Nombre" />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <input type="tetxt" placeholder="Apellido" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fecha de nacimiento <input type="date" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Nivel de estudio  <select name="nivelDeEstudios" id="NivelEstudios">
                                <option value="Universidad">Universidad</option>
                                <option value="Preparatoria">Preparatoria</option>
                                <option value="Secundaria">Secundaria</option>
                                <option value="Primaria">Primaria</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input type="text"  placeholder="RFC"/></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Numero de nómina" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Puesto <select name="Puesto" id="">
                                <option value="Cajero">Cajero</option>
                                <option value="Manager">Manager</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Domicilio<br />
                             <input type="text" placeholder="Numero" /><br />
                             <input type="text" placeholder="Calle" /><br />
                             <input type="text" placeholder="Colonia"/><br />
                             <input type="text" placeholder="Municipio" /><br />
                             <input type="text" placeholder="Estado" /><br />
                             <input type="text" placeholder="Codigo postal"/><br />
                        </td>
                       
                    </tr>
                    <tr>
                        <td>Seleccione una fotografía <input type="file" name="fotoCajero" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="Submit" value="Agregar cajero"/>
                        </td>
                    </tr>

                </table>
            </form>
        </div>

    </body>
</html>
