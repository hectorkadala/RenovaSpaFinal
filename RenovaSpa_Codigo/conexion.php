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