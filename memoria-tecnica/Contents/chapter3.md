# Codificacion #

Despúes de hacer toda la documentación, ahora si podremos empezar con nuestro programa:

## Insertar dato##
Aqui metemos los datos que inserta el usuario y los guarda en la base de datos.

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
    
## Conexion a la base de datos:##
Esto sirve para que nos podamos enlzar a la base de datos

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

## Crear esctructura ##
Después de eso ahora falta crear nuestra esctructura en html:

    [html]
    <html>
    <head lang="es">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta charset="utf-8">
        <title>Renova Spa</title>
    </head>
    <header>

    </header>
    <body>
        <div id="formulario">
            <img src="imagenes/renovaspa.png" id="renova">
            <h1 style="clear: center;">Exoneración de Responsabilidad</h1>
        <br>
        <br>
        <nav>
            <ul>
        <li><a title="Opcion 1" href="#">Bienvenido</a></li>
        <li><a title="Opcion 2" href="#">welcome</a></li>
        <li><a title="Opcion 3" href="#">willkommen</a></li>
        <li><a title="Opcion 4" href="#">benvenuto</a></li>
        <li><a title="Opcion 5" href="#">valkomen</a></li>
        <li><a title="Opcion 5" href="#">bienvenue</a></li>
            </ul>
        </nav>
        </div>
        <p>Por favor, dedique unos minutos a leer cuidadosamente
            la información siguiente y suscribirla con una 
            firma al finalizar. Muchuas gracias.
        </p>
        <div id="Relleno">
        <form  method="post" action="guardar.php">
        <input type="text" placeholder="Nombre:" class="textNom" name="name">
        <input type="number" placeholder="Edad:" class="textEda" name="age">
        <br>
        <br>
        <input type="text" placeholder="País:" class="textPai" name="country">
        <input type="text"placeholder="E-mail:" class="textEma" name="email">
        <br>
        <br>
        <input type="text" placeholder="Hotel:" class="textHot" name="hotel">
        <input type="text" placeholder="Habitación:" class="textHab" name="room">
        <br>
        <br>
        <input type="text" placeholder="Agencia de viaje:" class="textAge" name="agency">
        <br>
        <br>
        <input type="text" placeholder="Tratamiento:" class="textTra" name="treatment">
        <input type="text" placeholder="Terapeuta" class="textTer" name="therapist">
        <br>
        <ol>
            <li value="1"> El mesaje o tratamietno que usted va a recibir tiene el propósito 
                básico de la relajación y el alivio de la tensión muscular superficial.</li>
                <br>
            <li>Si usted está inastfecho con el servicio, o experimenta cualquier tipo de molestia  o dolor durante la 
            sesión, informe por favor al terapeuta cuanto antes.</li>
                <br>
            <li>Si no se menciona nada durante la sesión, asumiremos que no ha habido
             ningún problema.</li>
                <br>
            <li>Hágamos saber antes del inicio de la sesión si se encuentra bajo algunas de 
            las siguientes circuntancias:</li>
            <br>
            <input type="checkbox" name="opcion" value="embarazo">Embarazo<input type="checkbox" value="corazon" name="opcion">Problemas del corazón
            <input type="checkbox" value="claustrofobia" name="opcion">Claustrofobia<input type="checkbox"value="dolor" name="opcion">Dolor general
            <input type="checkbox" value="alergia" name="opcion">Alergía <input type="checkbox" value="epilepsia" name="opcion">Epilepsia<br>
            <input type="checkbox" value="piel" name="opcion">Problemas en la piel <input type="checkbox" value="cirugia" name="opcion">Cirugía reciente
            <input type="checkbox" value="problemas" name="opcion">Problemas o lesión de la espina dorsal 
            <input type="checkbox" value="daibetes" name="opcion">Diabetes <input type="checkbox" value="acne" name="opcion">Acne<br>
            <input type="checkbox" name="opcion">algún otro desquilibrio de la salud:
            <br>
            <div style="text-align: center;" value="otro">
            <textarea rows="5" cols="80" class="comentario" id="comentario" name="opcion">

            </textarea>	
        </div>
            <br>
            <li>Cualquier insinuación, hecho o propuesta de caracter ocasionara el final inmediato
                dela sesión él/la huésped seera obligada al pago completo del servicio</li>
            <br>
            <li>Por la seguridad de sus valores, le sugerimos dejarlos en la caja fuerte de su habitación.<br>
                Renova Spa no asumirá ninguna responsabiidad por robo o extravío de valores</li>
        </ol>
        <p>Le agradecemos su compresión y esperamos que difrute de nuestros servicios.</p>
        <br>
        <br>

        <table style="margin: 0 auto;"  width="100%">
        <tr>
            <td><hr style='width: 50%'>Firma del Terapeuta</td>
            <td><hr style='width: 50%'>Firma del Cliente</td>
        </tr>
        </table>
        <br>
        <p>Por favor ayúdenos a mejorar nuestros servicios dándonos su opinión sobre le servicio recibido.</p>
        <div id="imagenes" align="center">
            <img src="imagenes/muyBueno.png">
            <img src="imagenes/bueno.png">
            <img src="imagenes/normal.png">
            <img src="imagenes/malo.png">
        </div>
        <div id="check" align="center">
            <input type="radio" value="muyBueno" name="score">
            <input type="radio" value="bueno" name="score">
            <input type="radio" value="normal"name="score">
            <input type="radio"value="malo"name="score">
        </div>
        <br>
        <footer>Dada la inexistencia previa de condición médica especial, Renova Spa y el Hotel no se hacen responsables
         de ningún efecto secundario resultante.
        </footer>
        <br>
        <input type="submit" value="Guardar" name="guardar">
        <input type="button" value="Imprimir archivo" onClick="window.print()">
        <link href="estilos_impresion.css" rel="stylesheet" type="text/css" media="print">
        </form>
    </div>
    </body>
    </html>