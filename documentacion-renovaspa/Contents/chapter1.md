# Documentación del codigo PHP #

Aqui veremos el código documentado, esto nos sirve para entenderlo mejor.

## Conexio.php ##
 
Aqui vamos a documentar el codigo de conexion para la base de datos:

        [php]
            <?php
            /**
          * @author Naranjo Kadala Héctor
          * @author Naranjo Kadala Héctor<hectorhbk@hotmail.com>
          */

            /**
            *Hacemos una conexion en la base de datos llamada renovaspa1m
            */


            $conexion = mysql_connect("localhost","root","") Or die("No se pudo conectar");
            if($conexion){
                mysql_select_db("renovaspa1",$conexion);
            }else{
                echo "Error";
            }
            ?>

## Guardar.php ##
En este archivo se va guardar las variables insertadas en el index.html, donde los usuarios proporcionan su informacion:

        [php]
        /**
        * @author Naranjo Kadala Héctor
        * @author Naranjo Kadala Héctor<hectorhbk@hotmail.com>
        */

        /**
        * En esta parte recibimos los parametros del archivo index.php los campos
        * que llene el cliente.
        */
        $nombre = $_POST['name'];
        $edad = $_POST['age'];
        $pais = $_POST['country'];
        $email = $_POST['email'];
        $hotel = $_POST['hotel'];
        $habitacion = $_POST['room'];
        $agencia = $_POST['agency'];
        $tratamiento = $_POST['treatment'];
        $terapeuta = $_POST['therapist'];
        $opcion = $_POST['opcion'];
        $calificacion = $_POST['score'];

        /**
        * Aqui llamamos el archivo conexion.php para poder consultar a base de datos
        *y poder guardar datos.
        */
        require("conexion.php");

        /**
        *Creamos variables para poder insertar en la base de datos donde la variable especifica
        *a que tabla se va insertar y que campos se van llenar
        */
        $agregarCliente=mysql_query("INSERT INTO cliente(nombre, edad, correo_electronico, habitacion)
         VALUES ('$nombre','$edad','$email','$habitacion')");

        $agregarPais=mysql_query("INSERT INTO paises(nombre) VALUES ('$pais')");

        $agregarAgencia=mysql_query("INSERT INTO agencias(nombre_comercial) VALUES ('$agencia')");

        $agregarHotel=mysql_query("INSERT INTO hoteles(nombre) VALUES ('$hotel')");

        $agregarTratamientos=mysql_query("INSERT INTO tratamientos(nombre) VALUES ('$tratamiento')");

        $agregarTerapeuta=mysql_query("INSERT INTO terapeutas(nombre) VALUES ('$terapeuta')");

        $agregarMedica=mysql_query("INSERT INTO circustancias_medicas(nombre) VALUES ('$opcion')");

        $agregarOpiniones=mysql_query("INSERT INTO opiniones(nombre) VALUES ('$calificacion')");

        /**
        *Aqui mandamos un mensaje que se guardo correctamente  y nos redirige a index.php de nuevo 
        */
        echo "Guardo con exito";
        header("location: index.php");
        ?>
