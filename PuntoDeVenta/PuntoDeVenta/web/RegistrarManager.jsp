<%-- 
    Document   : Login
    Created on : 17/08/2015, 05:37:51 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/Estilo.css" />
        <script type="text/javascript">
           
        </script>
    </head>
    <body>
        <div class="blockpage">
            
            <form action="AgregarUsuario" method="post" >
               <table>
                <th>Datos de manager</th>
                <tr>
                    <td>
                          <input type="text" name="mail" placeholder="Mail"/><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                          <input type="text" name="Nombrelogin" placeholder="Nombre" /><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                         <input type="password" name="Contraseña" placeholder="Contraseña" /><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="empresa" placeholder="Nombre de la empresa" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <input type="submit" value="Enviar"/>
                    </td>
                </tr>
                <tr>
                    <td><a href="ingreso/Menu/Empresa.jsp">Ingresar datos</a></td>
                </tr>
            </table>
              
              
               
               
            </form>
        </div>
        
    </body>
</html>
