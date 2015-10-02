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
        <link rel="stylesheet" href="Css/Estilo.css" />
        <script type="text/javascript">
            function valida(){
                var a="Su cuenta no está registrada";
                alert(a);
            }
        </script>
    </head>
    <body>
      
       <div class="blockpage">
           <div class="Logo">
               <img src="Cobro/img/logo-01.png" alt="Logo empresa" align="middle"/>
           </div>
             <form action="#" method="post">
            <table>
                <th>
                     Login
                </th>
                <tr>
                <td><input type="text" name="Correo" placeholder="Correo"/></td>
                </tr>
                <tr><td><input type="password" name="contraseña" placeholder="Contraseña" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Acceder" onclick="valida()"/></td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarManager.jsp">Registrarse</a>
                    </td>
                    <td>
                        <a href="Cobro/Cobro.jsp">Pagina de cobro</a>
                    </td>
                </tr>
                
            </table>
        </form>
        </div>
       

        

    </body>
</html>
