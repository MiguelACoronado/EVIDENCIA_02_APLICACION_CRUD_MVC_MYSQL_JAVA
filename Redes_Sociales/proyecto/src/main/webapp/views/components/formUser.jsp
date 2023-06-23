<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instagram</title>
    <link rel="stylesheet" href="views/resources/css/formularios.css">


    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

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
                                  <form action="usuario" method="post">
                                    
                        
                                      <label for="nameuser">Ingrese el nombre del usuario: </label>
                                      <input type="text" class="nameuser" id="nameuser" name="nameuser" required><br>

                                      <label for="lastnameuser">Ingrese el apellido del usuario: </label>
                                      <input type="text" class="lastnameuser" id="lastnameuser" name="lastnameuser" required><br>

                                      <label for="mailuser">Ingrese el correo del usuario: </label>
                                      <input type="text" class="mailuser" id="mailuser" name="mailuser" required><br>

                                      <label for="numuser">Ingrese el numero del usuario: </label>
                                      <input type="text" class="numuser" id="numuser" name="numuser" required><br>

                                      <label for="useru">Ingrese el apodo del usuario: </label>
                                      <input type="text" class="useru" id="useru" name="useru" required><br>

                                      <label for="passworduser">Ingrese la contraseña del usuario: </label>
                                      <input type="password" class="passworduser" id="passworduser" name="passworduser" required><br>
            
                                      <button type="submit" class="btn btn-outline-info" name="accionForm" value="agregar" >Registrar rol</button>
                                  </form>
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
</body>
</html>