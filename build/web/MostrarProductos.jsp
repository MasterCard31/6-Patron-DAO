<%@page import="com.tecsup.ventas.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tecsup.ventas.ControladorProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCTOS | VENTAS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            body,h1,h2,h3,h4,h5,h6 {
                font-family: "Raleway", sans-serif
            }

            body, html {
                height: 100%;
                line-height: 1.8;
            }

            /* Full height image header */
            .bgimg-1 {
                background-position: center;
                background-size: cover;
                background-image: url("fondo.jpg");
                min-height: 100%;
            }

            .w3-bar .w3-button {
                padding: 16px;
            }
            .altura{
                margin-top: 5rem;
            }
        </style>
    </head>

    <body>

        <!-- Navbar (sit on top) -->
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="/lab6_MVC/" class="w3-bar-item w3-button w3-wide">VENTAS</a>
                <!-- Right-sided navbar links -->
                <div class="w3-right w3-hide-small">
                    <a href="MostrarProductos.jsp" class="w3-bar-item w3-button">PRODUCTOS</a>
                    <a href="AgregarProducto.jsp" class="w3-bar-item w3-button"><i class="fa fa-plus"></i>  AGREGAR PRODUCTO</a>
                    <a href="BuscarProducto.jsp" class="w3-bar-item w3-button"><i class="fa fa-search"></i> BUSCAR</a>
                </div>
                <!-- Hide right-floated links on small screens and replace them with a menu icon -->

                <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
        </div>


        <div class="container altura">
            <div class="mt-5">
                <div>
                    <h2 class="">Listado de Productos</h2>
                    <hr>
                </div>
            </div>
            <table border="1" class="table table-striped table-bordered mb-5">
                <thead class="table-secondary">
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Stock</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        //Llamo al controladorProducto para poder llamar al metodo listar
                        ControladorProducto cont = new ControladorProducto();
                        //Lista que almacenara la cantidad de objetos productos
                        ArrayList<Producto> lista = cont.listarProducto();
                        int contador = 0; //contador de objetos de tipo producto
                        //Por cada objeto producto en la lista                       
                        for (Producto prod : lista) {
                            contador++;
                    %>
                    <tr>
                        <td><%= prod.getCodigo()%></td>
                        <td><%= prod.getNombre()%></td>
                        <td><%= prod.getPrecio()%></td>
                        <td><%= prod.getStock()%></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>        
        </div>


        <!-- Footer -->
        <footer class="w3-center w3-black w3-padding-64">
            <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Volver al Inicio</a>
            <div class="w3-xlarge w3-section">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
            <p>Todos los Derechos Reservados 2023</p>
        </footer>

    </body>
</html>
