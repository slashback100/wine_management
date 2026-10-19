<?php $title = 'Wine';
  include 'config.php';
  session_start();
  // Connexion à la base de données
  $db = new PDO('mysql:host='.$db_config['host'].';dbname='.$db_config['database'].';charset=utf8mb4', $db_config['user'], $db_config['password'], array(PDO::ATTR_EMULATE_PREPARES => false, 
	                                                                                                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
 //   echo "<script>//obj = eval('(' +".json_encode($_POST)." + ')');</script>";
    $login_error = '';
    if(isset($_POST['log'])){
        $username = isset($_POST['user']) ? trim($_POST['user']) : '';
        $password = isset($_POST['password']) ? $_POST['password'] : '';

        $stmt = $db->prepare('SELECT password_hash FROM users WHERE username = ?');
        $stmt->execute(array($username));
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        $authenticated = false;
        if($user && is_string($user['password_hash'])){
            $stored_hash = $user['password_hash'];
            if(preg_match('/^\$(2[aby]|argon2)/', $stored_hash)){
                $authenticated = password_verify($password, $stored_hash);
            } else {
                $authenticated = hash_equals($stored_hash, md5($password));
            }
        }

        if($authenticated){
            session_regenerate_id(true);
            $_SESSION['logged'] = true;
            $_SESSION['user'] = $username;
            $_SESSION['group'] = 1;
           if(isset($_POST['origin']) && $_POST['origin'] != ""){
                $origin = $_POST['origin'];
                $host  = $_SERVER['HTTP_HOST'];
                $uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
                $extra = $origin.".php";
                if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']){
                        header("Location: https://$host$uri/$extra");
                } else {
                        header("Location: http://$host$uri/$extra");
                }
            } else {
                $host  = $_SERVER['HTTP_HOST'];
                $uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
                $extra = "wine.php";
                if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']){
                        header("Location: https://$host$uri/$extra");
                } else {
                        header("Location: http://$host$uri/$extra");
                }
            }
            exit;
        } else {
            $login_error = 'Identifiants invalides';
        }
    } elseif(isset($_POST['unlog'])){
        unset($_SESSION['logged'], $_SESSION['user'], $_SESSION['group']);
    }

    if(!isset($_SESSION['logged'])){
      include 'header.inc';
?>
<br/>

<?php if($login_error != ''){ echo '<p class="error">'.htmlspecialchars($login_error).'</p><br/>'; } ?>

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
