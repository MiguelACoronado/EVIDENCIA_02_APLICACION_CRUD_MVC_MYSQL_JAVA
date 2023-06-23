<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="es">
    <head>
        <title>Lista Usuarios</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta
        name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- sweetalert -->
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <!-- Bootstrap CSS v5.0.2 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="views/resources/css/formularios.css">
        <style>
            .btnEdit {
                color: rgb(255, 208, 0);
            }
            .btnDelete {
                color: brown;
            }
            .btnDelete:hover {
                cursor: pointer;
                color: red;
                transition: 0.3s ease;
            }
            i {
                font-size: 16px;
            }
            button[type="submit"] {
                border: none;
            }
        </style>
    </head>
    <body>
        <div class="global">

            <!-------header-------->
            <div class="header">
                <div class="logo">
                    <center>
                        <a href="usuario?accion=VolverP"><img src="views/resources/img/logoig.png" class="img1"></a>
                    </center>
                </div>
                <div class="links">
                    <div class="btn-prin-1">
                        <a href="Login.jsp"><input type="button" value="Ingresar" class="btn-index"></a>
                    </div>
                    <div class="btn-prin-2">
                        <a href="Registrar.jsp"><input type="button" value="Registrarse" class="btn-index-1"></a>
                    </div>
                    
                </div>
            </div>
    <!-------main-------->
            <div class="main">
                <div class="tabla">
    
                    <div class="chat"></div>
    
                     <div class="publicacion">
                         <div class="contenedor-nombre-cuenta">
                            <h1 class="nombre-cuenta">Registrar Usuario</h1>
                         </div>
                            <div class="fondo-formularios">
                                <div class="formularios">
                                    <!--formularios-->
                                    <div class="container">
                                        <h1 class="text-center">USUARIOS</h1>
                                        <a href="usuario?accion=VolverP">volver</a>
                                        <table class="table table-light">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Nombre Usuario</th>
                                                    <th>Apellido Usuario</th>
                                                    <th>Correo Usuario</th>
                                                    <th>Número Usuario</th>
                                                    <th>User Usuario</th>
                                                    <th colspan="4">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="usuario" items="${usuarios}">
                                                    <tr>
                                                        <td scope="row">${usuario.getIduser()}</td>
                                                        <td>${usuario.getNameuser()}</td>
                                                        <td>${usuario.getLastnameuser()}</td>
                                                        <td>${usuario.getMailuser()}</td>
                                                        <td>${usuario.getNumuser()}</td>
                                                        <td>${usuario.getUseru()}</td>
                                                        <td>${usuario.getPassworduser()}</td>
                                                        
                                                        <td>
                            
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-id-${usuario.getIduser()}">
                                                                <i class="bi bi-pencil-square btnEdit"></i>
                                                            </button>
                            
                                                            <!-- Modal -->
                                                            <div class="modal fade" id="modal-id-${usuario.getIduser()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                                <div class="modal-dialog">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <form action="usuario" method="post">
                                                                                <input type="hidden" name="iduser" value="${usuario.getIduser()}">
                                                                                <label for="nameuser">Nombre Usuario:
                                                                                </label>
                                                                                <input type="text" name="nameuser" id="nameuser" value="${usuario.getNameuser()}"><br>
                            
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="submit" class="btn btn-success" name="accionForm" value="Actualizar">Actualizar Informacion</button>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                            
                            
                                                        <td>
                                                            <form action="usuario" method="post" id="formularioEliminar${usuario.getIduser()}">
                                                                <input type="hidden" name="idusereliminar" id="IdFormulario" value="${usuario.getIduser()}">
                                                                <input type="hidden" name="accionForm" value="eliminar">
                                                                <i class="bi bi-trash-fill btnDelete" onclick="EnviarEliminacion('${usuario.getIduser()}')"></i>
                                                            </form>
                                                        </td>
                                                    </tr>
                            
                            
                                                </c:forEach>
                            
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--Fin Formularios-->
                                </div>
                            </div>     
                     </div>
                </div>    
                    
    
                
                <div class="info">
                
                    <p class="Subti">Usuarios</p>
                        <ol class="lista1">
                            <a href="usuario?accion=formUser"><li>
                                Agregar Usuario
                            </li></a>
                            <a href="usuario?accion=listUser"><li>
                                Buscar/Eliminar Usuario
                            </li></a>
                        </ol>
                    <p class="Subti">Amigos</p>
                        <ol class="lista1">
                            <a href="servlet?op=agregaramigo"><li>
                                Agregar Amigo
                            </li></a>
                            </li></a>
                            <a href="servlet?op=buscaramigo"><li>
                                Buscar/Eliminar Amigo
                            </li></a>
                        </ol>
        
                    </div>
            </div>
    
    <!-------footer-------->
    <footer class="pie-pagina">
        <div class="grupo-1">
            <div class="box">
                <figure>
                    <div class="logo-footer">
                    <a href="#">
                        <img src="logo_ig_footer.png">
                    </a>
                    </div>
                </figure>
            </div>
            <div class="box">
                <h2>Instagram</h2>
                <p>Que es instagram?</p>
                <p>Usos de instagram</p>
            </div>
            <div class="box">
                <h2>SIGUENOS</h2>
                <div class="red-social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>
                </div>
            </div>
        </div>
        <div class="grupo-2">
            <small>&copy; 2023<b>Miguel Coronado</b> - Todos los Derechos Reservados.</small>
        </div>
    </footer>
        <script>
            
            function EnviarEliminacion(id) {

                var formEliminado = document.getElementById('formularioEliminar' + id);

                Swal.fire({
                    title: "¿Seguro que deesea eliminar este registro?",
                    text: "Los registros eliminados no se podran recuperar.",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Sí, eliminarlo"
                }).then((result) => {
                    if (result.isConfirmed) {

                        formEliminado.submit(); 

                    }

                });

            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
