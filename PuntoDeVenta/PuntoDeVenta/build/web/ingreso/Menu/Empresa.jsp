<%-- 
    Document   : Empresa
    Created on : 19/08/2015, 04:09:45 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/ingreso/Menu/Menu.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa</title>
    </head>
    <body>
        <h1 class="h1header">Empresa</h1>
        
        <Div class="center">
            <form action="<%=request.getServletContext().getContextPath()%>/AgregarEmpresa" method="post" enctype="multipart/form-data">
                <table>
                    <th>Empresa</th>
                    <tr>    
                        <td><input type="text" name="nombreEmpresa" placeholder="Nombre" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="Slogan" name="slogan" />
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <input type="file" name="logoEmpresa" accept="image/*" placeholder="Logo" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="file" name="Imagencorporativa1" name="imagenCorporativa" />
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
