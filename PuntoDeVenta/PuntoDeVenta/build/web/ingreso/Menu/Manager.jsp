<%-- 
    Document   : Manager
    Created on : 9/09/2015, 06:04:58 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos personales</title>
    </head>
    <body>
        <h1 class="h1header">Modifica tus datos</h1>
        <div class="center">

            <form action="" method="post">
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
                            <input type="Submit" value="Enviar informacion"/>
                        </td>
                    </tr>

                </table>
            </form>
            
        </div>
    </body>
</html>
