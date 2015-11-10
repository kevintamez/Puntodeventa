<%-- 
    Document   : Menu
    Created on : 19/08/2015, 04:10:03 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="../../Css/Estilo.css" />
        <link rel="stylesheet" href="../../Css/Font.css" />
        
    </head>
    <body>
        <div class="men" id = "menu">            
                <ul>
                    <li><a href="ingreso/Menu/PrincipalManager.jsp" class="icon-view-headline"><div class="show">Home</div></a></li>
                    <li><a href="ingreso/Menu/Empresa.jsp" class="icon-account-child"><div class="show">Empresa</div></a></li>
                    <li><a href="ingreso/Menu/Articulos.jsp" class="icon-assignment"><div class="show">Articulo</div></a></li>
                    <li><a href="ingreso/Menu/Usuario.jsp" class="icon-add-user"><div class="show">Usuario</div></a></li>
                    <li><a href="ingreso/Menu/Reportes.jsp" class="icon-text-document" ><div class="show">Reportes</div></a></li>
                    <%--
                       <li><a href="/ingreso/Menu/Empresa.jsp" class="icon-account-child"><div class="show">Empresa</div></a></li>
                    --%>
                </ul>          
        </div>

    </body>
</html>
