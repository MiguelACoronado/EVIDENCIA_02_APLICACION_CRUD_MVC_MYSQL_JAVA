<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="es">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
            <meta
                name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <!-- Bootstrap CSS v5.0.2 -->
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
                        <style>
                            .container {
                                margin: 10% auto;
                                box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
                            }
                            .element-p {
                                background-color: rgb(248, 248, 248);
                                border-radius: 5px;
                            }
                            .hiper-form,
                            .hiper-eye {
                                width: 10%;
                                display: inline-block;
                            }
                            i {
                                font-size: 29px;
                                color: rgb(164, 202, 214);
                            }
                            a {
                                text-decoration: none;
                                font-size: 18px;
                                color: rgb(61, 114, 160);
                            }
                        </style>
                    </head>
                    <body>
                        <div class="container container-elements" ">
                            <div class="row">
                                <div class="col-xx-auto element-p">
                                    <h1 class="text-center">ACCIONES EN Usuario</h1>
                                    <div class="hipervinculos text-center">
                                        <div class="hiper-form">
                                            <a href="usuario?accion=formUser">
                                                <i class="bi bi-file-earmark-post-fill"></i>
                                                <br>
                                                    Registrar Usuario
                                                </a>
                                            </div>

                                            <div class="hiper-eye">
                                                <a href="usuario?accion=listUser">
                                                    <i class="bi bi-eye"></i>
                                                    <br>
                                                        Mostrar Usuarios
                                                    </a>
                                                </div>

                                            </div>
                                            <figure class="text-center"></figure>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Bootstrap JavaScript Libraries -->
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                </body>
            </html>
