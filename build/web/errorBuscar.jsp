<%-- 
    Document   : error
    Created on : 28 abr 2023, 19:07:55
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
                <a href="/MVC/index.jsp" class="navbar-brand">Productos</a>
                <form class="d-flex" action="/MVC/ServletBuscarProducto" method="post">
                    <input class="form-control me-2" type="search" placeholder="Ingrese nombre" aria-label="Search" name="obtenerNombre">
                    <button class="btn btn-outline-light" type="submit">Buscar</button>
                </form>
            </div>
        </nav>
        <div class="d-flex align-items-center justify-content-center vh-100">
            <div class="text-center">             
                <p class="fs-3"> <span class="text-danger">Opps!</span>Ha sucedido un error.</p>
                <p class="lead">
                    El nombre del producto ingresado no se encuentra, ingrese otro nombre valido.
                  </p>
                <a href="/MVC/index.jsp" class="btn btn-primary">Go Home</a>
            </div>
        </div>
    </body>
</html>
