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
            function valida(){
                
           var pass = document.getElementById('pass').value; 
                    if(pass.length<=8) {
                        alert ('minimo de 8 caracteres');
                        return false;
                    } else {
                        return true;
                    }
                }
        </script>
    </head>
    <body>
        <div class="blockpage">
            
            <form action="AgregarUsuario" method="post" onsubmit="return valida()">
               <table>
                <th>Datos de manager</th>
                <tr>
                    <td>
                        <input type="email" name="mail"  placeholder="Mail"/><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="text" required="" name="Nombrelogin" placeholder="nombre" /><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="password"  required="" id="pass" name="Contrasenia" placeholder="Contraseña" /><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text"  required="" placeholder="Nombre de la empresa" name="nombreempresa" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" required="" name="nombreSucursal" placeholder="Nombre de la sucursal" />
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
