<%-- 
    Document   : PrincipalManager
    Created on : 19/08/2015, 05:14:38 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos generales</title>
        <script type="text/javascript">
            function getTime(){
                var x;
                x=document.getElementById("myTime").value;
                document.getElementById("despliega").innerHTML=x;
            }
        </script>
    </head>
    <body>
        <h1 class="h1header">Listado</h1>
        <div class="der">
            <a class="icon-account-box" href="Manager.jsp">Mis Datos</a>
        </div>

        <div class="center">

            <table>
                <th>
                    Articulos
                </th>
                <tr>
                    <td>
                        Lista de articulos
                    </td>
                    <td>
                        Existencia
                    </td>
                    <td>
                        Precio
                    </td>
                    <td>Eliminar</td>
                </tr>
                <tr>
                    <td>nombre</td>
                    <td>nombre</td>
                    <td>nombre</td>
                    <td><div class="icon-remove-user"></div></td>
                </tr>
                <tr>
                    <td>nombre</td>
                    <td>nombre</td>
                    <td>nombre</td>
                    <td><div class="icon-remove-user"></div></td>
                </tr>

            </table>
            <br />
            <table >
                <th>Cajeros</th>
                <tr>
                    <td>Nombre</td>
                    <td>Número de nómina</td>
                    <td>Elinimar</td>
                </tr>
                <tr>
                    <td>nombre</td>
                    <td>nombre</td>

                    <td><div class="icon-remove-user"></div></td>
                </tr>
                <tr>
                    <td>nombre</td>
                    <td>nombre</td>

                    <td><div class="icon-remove-user"></div></td>
                </tr>
            </table>
            <br />
            <table>
                <th>Empresa</th>
                <tr>
                    <td>
                        Nombre
                    </td>
                    <td>
                        Logo
                    </td>
                    <td>
                        Slogan
                    </td>
                </tr>
            </table>
            <br />
            
                <table>
                    <th>Horario de videos</th>
                    <tr>
                        <td>videosPrevisualización</td>
                        <td>Horario</td>
                        <td>hora</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="video">

                            </div>
                        </td>
                        <td>
                            <input id="myTime" type="time" name="horaVideo" />
                        </td>
                        <td><h1 id="despliega">aquí</h1></td>
                    </tr> 
                    <tr>
                        <td>
                            <button onclick="getTime()">try</button>
                        </td>
                    </tr>
                </table>
            

        </div>

    </body>
</html>
