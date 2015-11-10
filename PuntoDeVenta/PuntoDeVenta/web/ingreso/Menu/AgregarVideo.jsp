<%-- 
    Document   : AgregarVideo
    Created on : 9/11/2015, 9/11/2015 08:02:54 PM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/ingreso/Menu/Menu.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="center">
            <form action="<%=request.getServletContext().getContextPath()%>/AgregarMultimedia" enctype="multipart/form-data" method="post">
                <table>
                    <tr>
                        <td>
                            Seleccione un video<input type="file" value="Suba su video" name="archivo" />
                            <input type="text" placeholder="Elija un nombre para el video" name="nombre" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Subir Archivo" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
