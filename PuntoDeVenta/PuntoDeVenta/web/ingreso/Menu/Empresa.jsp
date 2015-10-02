<%-- 
    Document   : Empresa
    Created on : 19/08/2015, 04:09:45 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Menu.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa</title>
    </head>
    <body>
        <h1 class="h1header">Empresa</h1>
        
        <Div class="center">
            <form action="Cajero.jsp" method="post">
                <table>
                    <th>Empresa</th>
                    <tr>
                        <td><input type="text" name="nombreEmpresa" placeholder="Nombre" /></td>


                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Slogan" />
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <input type="file" name="logoEmpresa" accept="image/*" placeholder="Logan" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="file" name="Imagencorporativa1" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="file" name="Imagencorporativa2" />
                        </td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="Agregar empresa" /> </td>
                    </tr>
                    
                </table>
            </form>
        </Div>
    </body>
</html>
