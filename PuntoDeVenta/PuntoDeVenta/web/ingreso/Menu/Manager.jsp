<%--
    Document   : Manager
    Created on : 9/09/2015, 06:04:58 PM
    Author     : kevin & ray
--%>



<%@page import="java.sql.Date"%>
<%@page import="Model.Estado"%>
<%@page import="java.util.List"%>
<%@page import="Model.Municipio"%>
<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/ingreso/Menu/Menu.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos personales</title>
    </head>
    <body>
       
        <% 
            Usuario User=(Usuario)request.getAttribute("user");
            int id=0;
            String nombre="";
            String apePaterno="";
            String apeMaterno="";
            String sexo="";
            String calle="";
            String curp="";
            String RFC="";
            String colonia="";
            String Estado="";
            String telefono="";
            int codigoPostal=0;
            
            if (User!=null) {

                id = User.getIdUsuario();
                nombre = User.getNombreUsuario()!= null ? User.getNombreUsuario(): "";
                apePaterno = User.getApellidoPaterno() != null ? User.getApellidoPaterno(): "";
                apeMaterno = User.getApellidoMterno()!= null ? User.getApellidoMterno(): "";
                sexo = User.getSexo();
                calle=User.getCalle();
                RFC=User.getRFC();
                curp=User.getCURP();
                colonia=User.getColonia();
                telefono=User.getTelefono();
                codigoPostal=User.getCodigoPostal();
                        //fecha=User.getFecha()!=null? User.getFecha():"";
            }
        %>
        
        <h1 class="h1header">Modifica tus datos</h1>
        <div class="center">

            <form action="" method="post">
                <table>
                    <th>Usuario</th>
                    <tr>
                        <td>
                            <input type="text" placeholder="Nombre" value="<%= nombre %>" />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <input type="tetxt" placeholder="Apellido paterno" value="<%= apePaterno %>" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="tetxt" placeholder="Apellido materno" value="<%= apeMaterno %>" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fecha de nacimiento <input type="date" value=""/>
                        </td>
                    </tr>
                    <tr>
                    <td>
                    <% if (sexo.equals("Hombre")) { %>
                            <input type="radio" value="1" name="sexo" checked/>Hombre
                            <input type="radio" value="0" name="sexo"  />Mujer
                        <% } else { %>
                            <input type="radio" value="1" name="sexo" />Hombre
                            <input type="radio" value="0" name="sexo"  checked/>Mujer
                        <%}%>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            Nivel de estudio  <select name="nivelDeEstudios" id="NivelEstudios">
                                <option value="1">Universidad</option>
                                <option value="2">Preparatoria</option>
                                <option value="3">Secundaria</option>
                                <option value="4">Primaria</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><input type="text"  placeholder="RFC" value="<%=RFC%>"/></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="CURP" value="<%=curp%>" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                             Domicilio<br />
                             <input type="text" placeholder="Numero" value=""/><br />
                             <input type="text" placeholder="Calle" value="<%= calle%>"/><br />
                             <input type="text" placeholder="Colonia" value="<%=colonia%>"/><br />
                              <select name="Estado">                            
                            <%
                                List<Estado> estado = (List<Estado>) request.getAttribute("estados");
                                if (estado != null) {
                                    for (Estado edo : estado) {
                            %>
                                        <option value="<%= edo.getIdEstado()%>"
                                                
                                                
                                               <%-- <%= User != null && User.getMunicipio().getIdMunicipio()== mun.getIdMunicipio()? "selected" : "" %>--%>
                                                ><%= edo.getNombreEstado()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                           
                             </select><br>
                             <select name="Municipio">                            
                            <%
                                List<Municipio> municipio = (List<Municipio>) request.getAttribute("municipios");
                                if (municipio != null) {
                                    for (Municipio mun : municipio) {
                            %>
                                        <option value="<%= mun.getIdMunicipio()%>"
                                                
                                                
                                               <%-- <%= User != null && User.getMunicipio().getIdMunicipio()== mun.getIdMunicipio()? "selected" : "" %>--%>
                                                ><%= mun.getNombreMunicipio()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                           
                             </select><br>
                            
                             
                             <input type="text" placeholder="Codigo postal" value="<%=codigoPostal%>"/><br />
                        </td>
                       
                    </tr>
                    <tr>
                        <td>Seleccione una fotografía <input type="file" name="fotoCajero" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="Submit" value="Actualizar"/>
                        </td>
                    </tr>

                </table>
            </form>
            
        </div>
    </body>
</html>
