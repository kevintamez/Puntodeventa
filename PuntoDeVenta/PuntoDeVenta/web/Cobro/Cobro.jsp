<%-- 
    Document   : Cobro
    Created on : 11/09/2015, 10:50:10 PM
    Author     : kevin & ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        
        <title>Ventana de Cobro</title>

        <!--Estilos-->
        <!--<link rel="stylesheet" href="css/reset.css">-->
        <link rel="stylesheet" href="../Css/Estilo.css">

        <!--Plugins-->
        <link rel="stylesheet" href="js/Nivo Slider/nivo-slider.css" />
        <link rel="stylesheet" href="js/Nivo Slider/themes/dark/dark.css"/>
    </head>

    <body id="body" style="overflow: hidden; background: url('img/repeating-vintage-paper-background.jpg');">
        
        <header id="header">
            <!--<img src="C:\Users\ray\Desktop\Cobro\img\fondoHeader.png" alt="Imagen de Fondo" width = "1080">-->

            <div id = "logo">
                <a href="VentanaCobro.html"></a>				
            </div>

            <div id = "slogan" align = "center">				
                <h1>To inspire and nurture the human spirit - one person, one cup and one neighborhood at a time</h1>
            </div>
        </header>

        <div id = "articulos">
            <button type = "button"><img src="img/Lupa.png" alt="LUPA"></button>
            <input type="text" name = "producto" placeholder = "Producto">
            <input type="number" id = "numProductos" value = "1">
            <input type = "button" value = "Registrar">
        </div>

        <div id = "ticketCompra">
            <textarea id="ticket" cols="40" rows="25" readonly>
                Total
                
            </textarea>

            <div id = "btnFin">
                <button type = "button">Finalizar Compra</button>
            </div>
        </div>

        <!--Slider-->
        <div id = "sliderMain" class = "slider-wrapper theme-dark" align = "center">
            <div id = "slider" class = "nivoSlider" align = "center">
                <img src="../Cobro/img/Starbucks Promo 1.jpg" alt="" data-transition = "boxRainGrowReverse">
                <img src="../Cobro/img/Starbucks Promo 2.jpg" alt="" data-transition = "boxRainGrowReverse">
                <img src="../Cobro/img/Starbucks Promo 3.jpg" alt="" data-transition = "boxRainGrowReverse">
                <img src="../Cobro/img/Starbucks Promo 4.jpg" alt="" data-transition = "boxRainGrowReverse">
                <img src="../Cobro/img/Starbucks Promo 5.jpg" alt="" data-transition = "boxRainGrowReverse">
            </div>
        </div>
        <!--/Slider-->
        
        <div id = "video">
            <video autoplay loop>
                <source src = "../Cobro/video/Starbucks Ad.mp4" type = "video/mp4">
                Ocurrio un error al cargar el video.
            </video>
        </div>

        <script type = "text/javascript" src = "js/jquery.js"></script>
        <script type = "text/javascript" src = "js/Nivo Slider/jquery.nivo.slider.js"></script>



        <script>
            $(window).load(function ()
            {
                $('#slider').nivoSlider();
            });
        </script>
        
    </body>
</html>
