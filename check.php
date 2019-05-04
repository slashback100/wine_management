<?php
session_start();
if (!isset($_SESSION['logged']) && $_SERVER['REMOTE_ADDR'] != "192.168.0.165" ){
	  /* Redirige vers la page de login */
	  $host  = $_SERVER['HTTP_HOST'];
	    $uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
	    $extra = "index.php?origin=$origin";
                if($_SERVER['HTTPS']){
                        header("Location: https://$host$uri/$extra");
                } else {
                        header("Location: http://$host$uri/$extra");
                }
	    exit;
	      //header("Location: https://$host/$extra");
	      //header("Location: https://$host$uri/$extra");
	      //exit;
}
?>
