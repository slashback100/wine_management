<?php $title = 'Home';
  include 'config.php';
  session_start();
  // Connexion à la base de données
  $db = mysql_connect($db_config['host'], $db_config['user'], $db_config['password'])  or error_log("cannot connect DB");
  mysql_select_db($db_config['database']) or error_log("cannot select DB");

 //   echo "<script>//obj = eval('(' +".json_encode($_POST)." + ')');</script>";
    if(isset($_POST['log'])){
        if(($_POST['user'] == 'christ' && hash("md5", $_POST['password']) == "ee10c315eba2c75b403ea99136f5b48d")||
          ($_POST['user'] == 'mel' && hash("md5", $_POST['password']) == "cedbe1762752b644a95bbef8ba0b017c")){
            $_SESSION['logged'] = true;
			$_SESSION['group'] = 1;
           if(isset($_POST['origin']) && $_POST['origin'] != ""){
                $origin = $_POST['origin'];
                $host  = $_SERVER['HTTP_HOST'];
                $uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
                $extra = $origin.".php";
		if($_SERVER['HTTPS']){
                	header("Location: https://$host$uri/$extra");
		} else {
                	header("Location: http://$host$uri/$extra");
		}
            } else {
                $host  = $_SERVER['HTTP_HOST'];
                $uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
                $extra = "index.php";
		if($_SERVER['HTTPS']){
                	header("Location: https://$host$uri/$extra");
		} else {
                	header("Location: http://$host$uri/$extra");
		}
            }
        }
    } elseif(isset($_POST['unlog'])){
        unset($_SESSION['logged']);
    }
	
	if(!isset($_SESSION['logged'])){
      include 'header.inc';
?>
<br/>

<form method='post' action=''>
    <label for='user'>User:</label><br/>
    <input type='test' name='user'/><br/>

    <label for='password'>Password:</label><br/>
    <input type='password' name='password'/><br/>
    
    <input type='submit' name='log' value='Log'/>
    <input type='hidden' name='origin' value='<?php echo (isset($_GET['origin']) && $_GET['origin'] != '')?$_GET['origin']:''; ?>'/>
</form>
<?php } else { ?>
<form method='post'>
    <input type='submit' name='unlog' value='Unlog'/>
</form>
<?php }


	include 'footer.inc' ?>
