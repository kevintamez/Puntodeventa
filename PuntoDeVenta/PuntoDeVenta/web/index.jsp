<%-- 
    Document   : index
    Created on : 19/08/2015, 03:57:03 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <link rel="stylesheet" 
              href="Css/Estilo.css" />
        <script type="text/javascript">
            function valida()
            {

            }
        </script>
    </head>
    <body>
      
       <div class="blockpage">
           <div class="Logo">
               <img src="Cobro/img/logo-01.png" alt="Logo empresa" align="middle"/>
           </div>
           <form action="login" method="post" onsubmit="return valida()">
            <table>
                <th>
                     Login
                </th>
                <tr>
                    <td><input type="email" name="correo" id="email" required="Comleta correo" placeholder="Correo"/></td>
                </tr>
                <tr><td><input type="password" name="contrasenia"  required="Comleta contraseña" id="pass" placeholder="Contraseña" /></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Acceder" /></td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarManager.jsp">Registrarse</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <% if (request.getAttribute("mensaje") != null) { %>
            <div style="color: red"><%= request.getAttribute("mensaje") %> </div>
                        <% } %>
                    </td>
                </tr>
            </table>
        </form>
        </div>
       

        

    </body>
</html>
