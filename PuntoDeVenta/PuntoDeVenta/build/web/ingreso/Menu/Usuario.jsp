<%-- 
    Document   : Cajero
    Created on : 19/08/2015, 04:12:21 PM
    Author     : kevin & ray
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Usuario"%>
<%@page import="Model.Municipio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/ingreso/Menu/Menu.jsp" %>



<%
    Usuario usu=(Usuario) request.getAttribute("usuario");
    int id=0;
    String nombre="";
    String apellidoPaterno="";
    String apellidoMaterno="";
    int sexo=1;
    
    if (usu!= null) {
            id=usu.getIdUsuario();
            nombre=usu.getNombreUsuario();
            apellidoPaterno=usu.getApellidoPaterno();
            apellidoMaterno=usu.getApellidoMterno();
            //sexo=usu.getSexo();
            
        }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de cajero</title>

    </head>
    <body>
        <h1 class="h1header">Usuario</h1>
        <div class="center">

            <form action="AgregarUsuario" method="post">
                <table>
                    <th>Cajero</th>
                    <tr>
                        <td>
                            <input type="text" placeholder="Nombre" name="nombreUsuario"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Email" name="EmailUsuario"/>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <input type="password" placeholder="Contraseña" name="contraseniaUsuario"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Apellido paterno" name="apellidoPaterno" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Apellido materno" name="apellidoMaterno" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <select name="Tipodeusuario" id="tipo Usuario">
                                <option value="" disabled selected>Selecciona tipo de usuario</option>
                                <option value="1">Manager</option>
                                <option value="2">Cajero</option>
                            </select>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Fecha de nacimiento <input type="date" name="fechadenacimiento"/>
                        </td>
                    </tr>
                    <tr>
                        <td>  
                                <select name="nivelDeEstudios" id="NivelEstudios">
                                 <option value="" disabled selected>Selecciona nivel de estudios</option>
                                    <option value="1">Universidad</option>
                                <option value="2">Preparatoria</option>
                                <option value="3">Secundaria</option>
                                <option value="4">Primaria</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <select name="municipio">                            
                            <%
                                List<Municipio> municipio = (List<Municipio>) request.getAttribute("municipio");
                                if (municipio != null) {
                                    for (Municipio mun : municipio) {
                            %>
                                        <option value="<%= mun.getIdMunicipio()%>"
                                                <%= usu != null && usu.getMunicipio().getIdMunicipio()== mun.getIdMunicipio()? "selected" : "" %>
                                                ><%= mun.getNombreMunicipio()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="CURP" name="CURP"/>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text"  placeholder="RFC" name="RFC"/></td>
                    </tr>
                    
                    <tr>
                        <td>
                             Domicilio<br/>
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
                            <input type="Submit" value="Agregar usuario"/>
                        </td>
                    </tr>

                </table>
            </form>
        </div>

    </body>
</html>
