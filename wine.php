<?php $title = 'Vins';
// vim: foldmethod=indent
// --> vim= encoding=utf-8
    $origin = "wine";
    include 'check.php';
    include 'header.inc';
    if($isMobile){
        include 'wine_mobile.php';
    }else {
        include 'wine_desktop.php';
    }
?>
<?php include 'footer.inc' ?>
