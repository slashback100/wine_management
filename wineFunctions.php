<?php
include 'config.php';

$db = mysql_connect($db_config['host'], $db_config['user'], $db_config['password'])  or error_log("cannot connect DB");
mysql_select_db($db_config['database']) or error_log("cannot select DB");

if(isset($_REQUEST['searchType'])){
    if($_REQUEST['searchType'] == "country"){
        $query = "select label from country where lower(label) like lower('".$_GET['country']."%')";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "region"){
        if($_GET['country'] != "" ){
            $query = "select region.label from region join country on country.id = region.country_id where lower(region.label) like lower('".$_GET['region']."%') and country.label = '".$_GET['country']."' limit 10";
        } else{
            $query = "select label from region where lower(label) like lower('".$_GET['region']."%') limit 10";
        }
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "nameClimat"){
        $query = "select distinct(name_climat) name_climat from wine where lower(name_climat) like lower('%".$_GET['nameClimat']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['name_climat'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "propriete"){
        $query = "select distinct(propriete) propriete from wine where lower(propriete) like lower('%".$_GET['propriete']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['propriete'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "appellation"){
        if($_GET['region'] != ''){
            $query = "select apellation.label from apellation join region on region.id = apellation.region_id where region.label = '".$_GET['region']."' and lower(apellation.label) like lower('%".$_GET['appellation']."%') limit 10";
        } else {
            $query = "select label from apellation where lower(label) like lower('%".$_GET['appellation']."%') limit 10";
        }
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "producer"){
        $query = "select distinct(producer) producer from wine where lower(producer) like lower('%".$_GET['producer']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['producer'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "size"){
        $query = "select label, volume from size where lower(label) like lower('".$_GET['size']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]['label'] = $row['label'];
            $list[$i]['volume'] = $row['volume'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "color"){
        $query = "select label from color where lower(label) like lower('".$_GET['color']."%')";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "category"){
        $query = "select label from category where lower(label) like lower('%".$_GET['category']."%')";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "cepage"){
        $query = "select label from cepage where lower(label) like lower('%".$_GET['cepage']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "location"){
        $query = "select distinct(location) from buy where lower(location) like lower('%".$_GET['location']."%') limit 10";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['location'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "toKeep"){
        $query = "select label from to_keep where lower(label) like lower('%".$_GET['toKeep']."%')";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['label'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "meal"){
        $query = "select distinct(meal) meal from wine where lower(meal) like lower('%".$_GET['meal']."%')";
        $result = mysql_query($query);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]=$row['meal'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "basementAvailability"){
        $wall = getPost('wall');
        if($wall != ""){
            $qWall = "where t.wall = ".$wall;
        } else {
            $qWall = "";
        }
        $q = "select wall, casier, sum(quantity) quantity, sum(bottle) bottle from (select wall, casier, -quantity quantity, quantity bottle from position_cave union all select wall, casier, capacity quantity, 0 bottle from casier_capacity) t ".$qWall." group by wall, casier";
        $result = mysql_query($q);
        $i=0;
        $list = array();
        while($row = mysql_fetch_assoc($result)){
            $list[$i]['wall']=$row['wall'];
            $list[$i]['casier']=$row['casier'];
            $list[$i]['quantity']=$row['quantity'];
            $list[$i]['bottle']=$row['bottle'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "wine"){
        $country = getPost('country');
        $region = getPost('region');
        $nameClimat = getPost('nameClimat');
        $propriete = getPost('propriete');
        $producer = getPost('producer');
        $year = getPost('year');
        $size = getPost('size');
        $color = getPost('color');
        $category = getPost('category');
        $appellation = getPost('appellation');
        $cepage1 = getPost('cepage1');
        $cepage2 = getPost('cepage2');
        $cepage3 = getPost('cepage3');
        $cepage4 = getPost('cepage4');
        $cepage5 = getPost('cepage5');
        $plan = getPost('plan');
        $wall = getPost('wall');
        $meal = getPost('meal');
        $optimum = getPost('dateOptimum');
        $optimumOperator = getPost('dateOptimumOperator');
        $endOptimum = getPost('endOptimum');
        $endOptimumOperator = getPost('endOptimumOperator');
        $optimumNow = getPost('optimumNow');
        error_log("opt now".$optimumNow);
        $showEmptyStock = getPost('showEmptyStock');
        $toBeClassified = getPost('toBeClassified');
        $s = "select distinct w.id ";
        $f = "from wine w ";
        $w = "where 1 = 1 ";

        if($country != ""){
            $f .= "join country on country.id = w.country_id ";
            $w .= "and country.label = '".q($country)."' ";
        }
        if($region != ""){
            $f .= "join region on region.id = w.region_id ";
            $w .= "and region.label = '".q($region)."' ";
        }
        if($nameClimat != ""){
            $w .= "and w.name_climat = '".q($nameClimat)."' ";
        }
        if($propriete != ""){
            $w .= "and w.propriete = '".q($propriete)."' ";
        }
        if($producer != ""){
            $w .= "and w.producer = '".q($producer)."' ";
        }
        if($meal != ""){
            $w .= "and lower(w.meal) like lower('%".q($meal)."%') ";
        }
        if($year != ""){
            $w .= "and w.year = ".q($year)." ";
        }
        if($color != ""){
            $f .= "join color on color.id = w.color_id ";
            $w .= "and color.label = '".q($color)."' ";
        }
        if($category != ""){
            $f .= "join category on category.id = w.category_id ";
            $w .= "and category.label = '".q($category)."' ";
        }
        if($appellation != ""){
            $f .= "join apellation on apellation.id = w.apellation_id ";
            $w .= "and apellation.label = '".q($appellation)."' ";
        }
        if($cepage1 != ""){
            $f .= "join wine_cepage wc1 on w.id = wc1.wine_id ";
            $f .= "join cepage c1 on c1.id = wc1.cepage_id ";
            $w .= "and c1.label = '".q($cepage1)."' ";
        }
        if($cepage2 != ""){
            $f .= "join wine_cepage wc2 on w.id = wc2.wine_id ";
            $f .= "join cepage c2 on c2.id = wc2.cepage_id ";
            $w .= "and c2.label = '".q($cepage2)."' ";
        }
        if($cepage3 != ""){
            $f .= "join wine_cepage wc3 on w.id = wc3.wine_id ";
            $f .= "join cepage c3 on c3.id = wc3.cepage_id ";
            $w .= "and c3.label = '".q($cepage3)."' ";
        }
        if($cepage4 != ""){
            $f .= "join wine_cepage wc4 on w.id = wc4.wine_id ";
            $f .= "join cepage c4 on c4.id = wc4.cepage_id ";
            $w .= "and c4.label = '".q($cepage4)."' ";
        }
        if($cepage5 != ""){
            $f .= "join wine_cepage wc5 on w.id = wc5.wine_id ";
            $f .= "join cepage c5 on c5.id = wc5.cepage_id ";
            $w .= "and c5.label = '".q($cepage5)."' ";
        }
        if($plan != "" || $wall != ""){
            $f .= "join position_cave pc on w.id = pc.wine_id ";
        }
        if($plan != ""){
            $w .= "and pc.wall = '".q($plan)."' ";
        }
        if($wall != ""){
            $w .= "and pc.casier = '".q($wall)."' ";
        }
        if($showEmptyStock == "false"){
            $f .= "join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = w.id ";
            $w .= "and stock.quantity > 0 ";
        }
        if($toBeClassified == "true"){
            $f .= "join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record union all select -quantity quantity, wine_id from position_cave) t group by wine_id) tbclass on tbclass.wine_id = w.id ";
            $w .= "and tbclass.quantity > 0 ";
        }
        
        if($optimum != ""){
            $w .= "and w.date_optimum ".$optimumOperator." ".$optimum." ";
        }
        if($endOptimum != ""){
            $w .= "and w.end_optimum ".$endOptimumOperator." ".$endOptimum." ";
        }
        if($optimumNow == "true"){
            $w .= "and w.date_optimum <= ".date("Y")." and w.end_optimum >= ".date("Y")." ";
        }
        $q = $s.$f.$w." limit 20";
        error_log($q);
        $result = mysql_query($q);
        $i=0;
        $data = array();
        while($row = mysql_fetch_assoc($result)){
            $id=$row['id'];
            $wineQ = "select w.id, w.year year, coalesce(w.name_climat,'') name_climat,c.label country, coalesce(w.propriete,'') propriete, coalesce(w.producer,'') producer, region.label region, color.label color, category.label category, coalesce(apellation.label, '') apellation ";
            $wineQ .=", coalesce(c1.label,'') cepage1, coalesce(c2.label,'') cepage2, coalesce(c3.label,'') cepage3, coalesce(c4.label,'') cepage4, coalesce(c5.label,'') cepage5, coalesce(w.date_optimum, '') optimum, coalesce(w.end_optimum,'') end_optimum, coalesce(to_keep.label,'') to_keep ";
            $wineQ .= "from wine w ";
            $wineQ .= "left outer join country c on c.id = w.country_id ";
            $wineQ .= "left outer join region on region.id = w.region_id ";
            $wineQ .= "left outer join color on color.id = w.color_id ";
            $wineQ .= "left outer join category on category.id = w.category_id ";
            $wineQ .= "left outer join apellation on apellation.id = w.apellation_id ";
            $wineQ .= "left outer join wine_cepage wc1 on wc1.wine_id = w.id ";
            $wineQ .= "left outer join cepage c1 on c1.id = wc1.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc2 on wc2.wine_id = w.id and wc2.id <> wc1.id ";
            $wineQ .= "left outer join cepage c2 on c2.id = wc2.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc3 on wc3.wine_id = w.id and wc3.id <> wc1.id and wc3.id <> wc2.id ";
            $wineQ .= "left outer join cepage c3 on c3.id = wc3.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc4 on wc4.wine_id = w.id and wc4.id <> wc1.id and wc4.id <> wc2.id and wc4.id <> wc3.id ";
            $wineQ .= "left outer join cepage c4 on c4.id = wc4.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc5 on wc5.wine_id = w.id and wc5.id <> wc1.id and wc5.id <> wc2.id and wc5.id <> wc3.id and wc5.id <> wc4.id ";
            $wineQ .= "left outer join cepage c5 on c5.id = wc5.cepage_id ";
            $wineQ .= "left outer join to_keep on to_keep.id = w.to_keep_id ";
            $wineQ .= "where w.id = ".$id;
            
            $wine = mysql_fetch_assoc(mysql_query($wineQ));
            $data[$i]['id'] = $wine['id'];
            $data[$i]['year'] = $wine['year'];
            $data[$i]['country'] = $wine['country'];
            $data[$i]['propriete'] = $wine['propriete'];
            $data[$i]['producer'] = $wine['producer'];
            $data[$i]['nameClimat'] = $wine['name_climat'];
            $data[$i]['region'] = $wine['region'];
            $data[$i]['category'] = $wine['category'];
            $data[$i]['color'] = $wine['color'];
            $data[$i]['appellation'] = $wine['apellation'];
            $data[$i]['cepage1'] = $wine['cepage1'];
            $data[$i]['cepage2'] = $wine['cepage2'];
            $data[$i]['cepage3'] = $wine['cepage3'];
            $data[$i]['cepage4'] = $wine['cepage4'];
            $data[$i]['cepage5'] = $wine['cepage5'];
            $data[$i]['optimum'] = $wine['optimum'];
            $data[$i]['end_optimum'] = $wine['end_optimum'];
            $data[$i]['to_keep'] = $wine['to_keep'];

            $note = "";
            if($wine['year'] > 0){
                $millesime = "select millesime.note ";
                $millesime .= "from millesime join region on region.id = millesime.region_id ";
                $millesime .= "left outer join color on color.id = millesime.color_id ";
                $millesime .= "left outer join apellation on apellation.id = millesime.apellation_id ";
                $millesime .= "left outer join category on category.id = millesime.category_id ";
                $millesime .= "where millesime.year = ".$wine['year']." ";
                $millesime .= "and region.label = '".$wine['region']."' ";
                $millesime .= "and (millesime.color_id is null or color.label = '".$wine['color']."') ";
                $millesime .= "and (millesime.apellation_id is null or apellation.label = '".$wine['apellation']."') ";
                $millesime .= "and (millesime.category_id is null or category.label = '".$wine['category']."') ";
                $millesime .= "order by millesime.priority asc ";
                $millesime .= "limit 1";
                $noteQuery = mysql_query($millesime);
                //error_log($millesime);
                if(mysql_num_rows($noteQuery) > 0){ 
                    $note = mysql_fetch_assoc($noteQuery)['note'];
                }
            }
            $data[$i]['note'] = $note;

            $i++;
        }
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'positionDetail'){
        $id = getPost('id');
        $q = "select pc.id, pc.wall, pc.casier, pc.quantity quantity, s.label size from position_cave pc join size s on s.id = pc.size_id where pc.wine_id = ".$id;
        //error_log($q);
        $result = mysql_query($q);
        $i=0;
        $data = array();
        while($row = mysql_fetch_assoc($result)){
            $data[$i]['id'] = $row['id'];
            $data[$i]['wall'] = $row['wall'];
            $data[$i]['casier'] = $row['casier'];
            $data[$i]['quantity'] = $row['quantity'];
            $data[$i]['size'] = $row['size'];
            $i++;
        }
        //check if there is wine bought but not drink and not in a 'casier'
        $q = "select quantity, size from (select sum(t.quantity) quantity, s.label size from (select quantity, size_id size from buy where wine_id = ".$id." union all select -quantity quantity, size_id size from out_record where wine_id = ".$id." union all select -quantity quantity, size_id size from position_cave where wine_id = ".$id.") t join size s on s.id = t.size group by s.label) t where quantity > 0";
        //error_log($q);
        $result = mysql_query($q);
        while($row = mysql_fetch_assoc($result)){
            $data[$i]['wall'] = "";
            $data[$i]['casier'] = "";
            $data[$i]['quantity'] = $row['quantity'];
            $data[$i]['size'] = $row['size'];
            $i++;
        }
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'outDetail'){
        $id = getPost('id');
        $q = "select out_record.*, size.label size from out_record join size on size.id = out_record.size_id where out_record.wine_id = ".$id." order by out_record.out_date desc";
        $result = mysql_query($q);
        $i=0;
        $data = array();
        while($row = mysql_fetch_assoc($result)){
            $data[$i]['quantity'] = $row['quantity'];
            $data[$i]['out_date'] = $row['out_date'];
            $data[$i]['size'] = $row['size'];
            $i++;
        }
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'buyDetail'){
        $id = getPost('id');
        $q = "select buy.*, size.label size from buy join size on size.id = buy.size_id where buy.wine_id = ".$id." order by buy.buy_date desc";
        $result = mysql_query($q);
        $i=0;
        $data = array();
        while($row = mysql_fetch_assoc($result)){
            $data[$i]['quantity'] = $row['quantity'];
            $data[$i]['location'] = $row['location'];
            $data[$i]['buy_date'] = $row['buy_date'];
            $data[$i]['unit_price'] = (float)$row['unit_price'];
            $data[$i]['size'] = $row['size'];
            $i++;
        }
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'tasteDetail'){
        $id = getPost('id');
        $q = "select coalesce(distinction, '') distinction, coalesce(medal, '') medal, coalesce(noze, '') noze, coalesce(view, '') view, coalesce(taste, '') taste, coalesce(my_note, '') my_note, coalesce(meal, '') meal, coalesce(comment, '') comment, coalesce(end_optimum, '') end_optimum, coalesce(date_optimum, '') date_optimum, coalesce(to_keep.label, '') to_keep  from wine left outer join to_keep on wine.to_keep_id = to_keep.id where wine.id = ".$id;
        $result = mysql_query($q);
        $row = mysql_fetch_assoc($result);
        $data['distinction'] = $row['distinction'];
        $data['medal'] = $row['medal'];
        $data['noze'] = $row['noze'];
        $data['view'] = $row['view'];
        $data['taste'] = $row['taste'];
        $data['my_note'] = $row['my_note'];
        $data['meal'] = $row['meal'];
        $data['comment'] = $row['comment'];
        $data['date_optimum'] = $row['date_optimum'];
        $data['end_optimum'] = $row['end_optimum'];
        $data['to_keep'] = $row['to_keep'];
        echo json_encode($data);
    }
} elseif(isset($_POST['saveWine'])){
    $wineId = getPost('wineId');
    $locationBuy = getPost('locationBuy');
    $sizeBuy = getPost('sizeBuy');
    $quantityBuy = getPost('quantityBuy');
    $priceBuy = getPost('priceBuy');
    $distinction = getPost('distinction');
    $medal = getPost('medal');
    $view = getPost('view');
    $noze = getPost('noze');
    $taste = getPost('taste');
    $comment = getPost('comment');
    $myNote = getPost('myNote');
    $meal = getPost('meal');
    $position = getPost('positions');
    $dateOptimum = getPost('date_optimum');
    $endOptimum = getPost('end_date');
    $toKeep = getPost('toKeep');
    //error_log($position);
    $posArray = json_decode($position);

    mysql_query("start transaction;");
    for($i = 0; $i < sizeof($posArray); $i++){
        if($posArray[$i]->positionId > 0){
            if($posArray[$i]->quantity > 0){
                $q = "update position_cave set wall = '".$posArray[$i]->wall."', casier = '".$posArray[$i]->casier."', quantity = ".$posArray[$i]->quantity." where id = ".$posArray[$i]->positionId;
                $result = mysql_query($q);
                //error_log($q);
            } else {
                $q = "delete from position_cave where id = ".$posArray[$i]->positionId;
                $result = mysql_query($q);
            }
        }else if($posArray[$i]->wall != "" && $posArray[$i]->casier != ""){
            $q = "select id from size where label = '".$posArray[$i]->size."'";
            $result = mysql_query($q);
            $sizeId = mysql_fetch_assoc($result)['id'];

            $q = "insert into position_cave (wine_id, wall, casier, quantity, size_id) values (".$wineId.", '".$posArray[$i]->wall."', '".$posArray[$i]->casier."', ".$posArray[$i]->quantity.", ".$sizeId.")";
            //error_log($q);
            $result = mysql_query($q);
        }
    }
    if($quantityBuy > 0){
        if($priceBuy == ""){
            $priceBuy = "NULL";
        }

        $q = "select id from size where label = '".$sizeBuy."'";
        $result = mysql_query($q);
        $sizeId = mysql_fetch_assoc($result)['id'];
        $q = "insert into buy (wine_id, quantity, location, size_id, buy_date, unit_price) values (".$wineId.", ".$quantityBuy.", '".$locationBuy."', ".$sizeId.", '".date('Y/m/d', time())."', ".$priceBuy.")";
        mysql_query($q);
    }
    $cols = "";
    if($distinction != ""){$cols .= ", distinction= '".$distinction."'"; }
    if($medal != ""){$cols .= ",medal='".$medal."'"; }
    if($view != ""){$cols .= ",view='".$view."'"; }
    if($noze != ""){$cols .= ",noze='".$noze."'"; }
    if($taste != ""){$cols .= ",taste='".$taste."'"; }
    if($comment != ""){$cols .= ",comment='".$comment."'"; }
    if($myNote != ""){$cols .= ",my_note=".$myNote; }
    if($meal != ""){$cols .= ",meal='".$meal."'"; }
    if($dateOptimum != ""){$cols .= ",date_optimum='".$dateOptimum."'"; }
    if($endOptimum != ""){$cols .= ",end_optimum='".$endOptimum."'"; }
    if($toKeep != ""){$cols .= ",to_keep_id = (select id from to_keep where label = '".$toKeep."')"; }
    //error_log("xouxou ".$cols);
    if($cols != ""){
        $cols = substr($cols, 1);// remove first comma
        $q = "update wine set ".$cols." where id =".$wineId;
        //error_log($q); 
        mysql_query($q);
    }

    $ret = array();
    $ret['status'] = "OK";
    $ret['wineId'] = $wineId;
    mysql_query("commit;");
    echo json_encode($ret);

} elseif(isset($_POST['addWine'])){
    $country = getPost('country');
    $region = getPost('region');
    $nameClimat = getPost('nameClimat');
    $propriete = getPost('propriete');
    $producer = getPost('producer');
    $year = getPost('year');
    $size = getPost('size');
    $color = getPost('color');
    $category = getPost('category');
    $appellation = getPost('appellation');
    $cepage1 = getPost('cepage1');
    $cepage2 = getPost('cepage2');
    $cepage3 = getPost('cepage3');
    $cepage4 = getPost('cepage4');
    $cepage5 = getPost('cepage5');
    $location = getPost('location');
    $buyDate = getPost('buyDate');
    $quantity = getPost('quantity');
    $price = getPost('price');
    $optimum = getPost('optimum');
    $endOptimum = getPost('endOptimum');
    $toKeep = getPost('toKeep');
    $distinction = getPost('distinction');
    $medal = getPost('medal');
    $view = getPost('view');
    $noze = getPost('noze');
    $taste = getPost('taste');
    $comment = getPost('comment');
    $myNote = getPost('myNote');
    $meal = getPost('meal');
    $wall = getPost('plan');
    $casier = getPost('wall');

    mysql_query("START TRANSACTION");
    $ret = array();
    $cols = "";
    $values = "";
    // insert into wine ($cols) values ($values)
    if($country != ""){
        $result = mysql_query("select id from country where label = '".$country."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into country (label) values ('".$country."')");
            $result = mysql_query("select id from country where label = '".$country."'");
        }
        $countryId = mysql_fetch_assoc($result)['id'];
        $cols .= "country_id";
        $values .= $countryId;
    } else {
        // country is mandatory
        $ret['status'] = "KO";
        $ret['message'] = "Le pays est obligatoire";
        return 1;
    }
    if($region != ""){
        $result = mysql_query("select id from region where label = '".$region."' and country_id = '".$countryId."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into region (label, country_id) values ('".$region."', '".$countryId."')");
            $result = mysql_query("select id from region where label = '".$region."' and country_id = '".$countryId."'");
        }
        $regionId = mysql_fetch_assoc($result)['id'];
        $cols .= ",region_id";
        $values .= ",".$regionId;
    }
    if($appellation != ""){
        $result = mysql_query("select id from apellation where label = '".$appellation."' and region_id = '".$regionId."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into apellation (label, region_id) values ('".$appellation."', '".$regionId."')");
            $result = mysql_query("select id from apellation where label = '".$appellation."' and region_id = '".$regionId."'");
        }
        $appellationId = mysql_fetch_assoc($result)['id'];
        $cols .= ",apellation_id";
        $values .= ",".$appellationId;
    } 
    if($color != ""){
        $result = mysql_query("select id from color where label = '".$color."';");
        if(mysql_num_rows($result) > 0){
            $colorId = mysql_fetch_assoc($result)['id'];
            $cols .= ",color_id";
            $values .= ",".$colorId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "La couleur du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }
    if($category != ""){
        $result = mysql_query("select id from category where label = '".$category."'");
        if(mysql_num_rows($result) > 0){
            $categoryId = mysql_fetch_assoc($result)['id'];
            $cols .= ",category_id";
            $values .= ",".$categoryId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "La catégorie du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }

    if($toKeep != ""){
        $result = mysql_query("select id from to_keep where label = '".$toKeep."'");
        if(mysql_num_rows($result) > 0){
            $toKeepId = mysql_fetch_assoc($result)['id'];
            $cols .= ",to_keep_id";
            $values .= ",".$toKeepId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "Le critère 'Garde' du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }

    if($nameClimat != ""){$cols .= ",name_climat";$values .= ",'".$nameClimat."'"; }
    if($propriete != ""){$cols .= ",propriete";$values .= ",'".$propriete."'"; }
    if($producer != ""){$cols .= ",producer";$values .= ",'".$producer."'"; }
    if($year != ""){$cols .= ",year";$values .= ",".$year; }
    if($optimum != ""){$cols .= ",date_optimum";$values .= ",".$optimum; }
    if($endOptimum != ""){$cols .= ",end_optimum";$values .= ",".$endOptimum; }
    if($distinction != ""){$cols .= ",distinction";$values .= ",'".$distinction."'"; }
    if($medal != ""){$cols .= ",medal";$values .= ",'".$medal."'"; }
    if($view != ""){$cols .= ",view";$values .= ",'".$view."'"; }
    if($noze != ""){$cols .= ",noze";$values .= ",'".$noze."'"; }
    if($taste != ""){$cols .= ",taste";$values .= ",'".$taste."'"; }
    if($comment != ""){$cols .= ",comment";$values .= ",'".$comment."'"; }
    if($myNote != ""){$cols .= ",my_note";$values .= ",".$myNote; }
    if($meal != ""){$cols .= ",meal";$values .= ",'".$meal."'"; }

    mysql_query("insert into wine (".$cols.") values (".$values.");");
    $wineId = mysql_fetch_row(mysql_query("SELECT LAST_INSERT_ID();"))[0];


    if($quantity != ""){
        if($size != ""){
            $result = mysql_query("select id from size where label = '".$size."'");
            if(mysql_num_rows($result) > 0){
                $sizeId = mysql_fetch_assoc($result)['id'];
            } else {
                $ret['status'] = "KO";
                $ret['message'] = "La taille de la bouteille ne correspond pas à ce qu'il y a dans le système";
                return 1;
            }
        }
        mysql_query("insert into buy (wine_id, location, buy_date, quantity, size_id, unit_price) values (".$wineId.", '".$location."', '".$buyDate."', ".$quantity.", ".$sizeId.", ".$price.")"); 
        if($wall != "" && $casier != ""){
            mysql_query("insert into position_cave (wine_id, quantity, size_id, wall, casier) values (".$wineId.", ".$quantity.", ".$sizeId.", '".$wall."', '".$casier."')");

        }
    }
    //After wine creation
    if($cepage1 != ""){
        $result = mysql_query("select id from cepage where label = '".$cepage1."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into cepage (label) values ('".$cepage1."')");
            $result = mysql_query("select id from cepage where label = '".$cepage1."'");
        }
        $cepage1 = mysql_fetch_assoc($result)['id'];
        mysql_query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".$cepage1.");");
    }
    if($cepage2 != ""){
        $result = mysql_query("select id from cepage where label = '".$cepage2."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into cepage (label) values ('".$cepage2."')");
            $result = mysql_query("select id from cepage where label = '".$cepage2."'");
        }
        $cepage2 = mysql_fetch_assoc($result)['id'];
        mysql_query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".$cepage2.");");
    }
    if($cepage3 != ""){
        $result = mysql_query("select id from cepage where label = '".$cepage3."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into cepage (label) values ('".$cepage3."')");
            $result = mysql_query("select id from cepage where label = '".$cepage3."'");
        }
        $cepage3 = mysql_fetch_assoc($result)['id'];
        mysql_query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".$cepage3.");");
    }
    if($cepage4 != ""){
        $result = mysql_query("select id from cepage where label = '".$cepage4."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into cepage (label) values ('".$cepage4."')");
            $result = mysql_query("select id from cepage where label = '".$cepage4."'");
        }
        $cepage4 = mysql_fetch_assoc($result)['id'];
        mysql_query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".$cepage4.");");
    }
    if($cepage5 != ""){
        $result = mysql_query("select id from cepage where label = '".$cepage5."'");
        if(mysql_num_rows($result) == 0){
            mysql_query("insert into cepage (label) values ('".$cepage5."')");
            $result = mysql_query("select id from cepage where label = '".$cepage5."'");
        }
        $cepage5 = mysql_fetch_assoc($result)['id'];
        mysql_query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".$cepage5.");");
    }

    mysql_query("commit");
    $ret['status'] = "OK";
    echo json_encode($ret);
} elseif(isset($_POST['stats'])){
    if($_POST['stats'] == "nbrBottle"){
        $q = "select color.label color, sum(stock.quantity) quantity from wine join color on wine.color_id = color.id  join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id group by color.label";
        mysql_query($q);
        $result = mysql_query($q);
        $data = array();
        $data[0][0] = "Couleur";
        $data[0][1] = "Quantité";
        $i=1;
        while($row = mysql_fetch_assoc($result)){
            $data[$i][0] = $row['color'];
            $data[$i][1] = $row['quantity']+0;
            $i++;
        }
        echo json_encode($data);
    }elseif($_POST['stats'] == "regionFr"){
        $q = "select region.label region, sum(stock.quantity) quantity from wine join region on wine.region_id = region.id join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id join country on country.id = wine.country_id where country.label = 'France' group by region.label";
        mysql_query($q);
        $result = mysql_query($q);
        $data = array();
        $data[0][0] = "Région";
        $data[0][1] = "Nombre de bouteilles";
        $data[0][2]['role'] = "style";
        $i=1;
        $color[0] = 'blue';
        $color[1] = 'silver';
        $color[2] = 'yellow';
        $color[3] = 'orange';
        $color[4] = 'red';
        $color[5] = 'black';
        $color[6] = 'gold';
        $j = 0;
        while($row = mysql_fetch_assoc($result)){
            $data[$i][0] = $row['region'];
            $data[$i][1] = $row['quantity']+0;
            $data[$i][2] = $color[$j];
            $j = ($j + 1 ) % sizeof($color);
            $i++;
        }
        echo json_encode($data);
    }elseif($_POST['stats'] == "regionIt"){
        $q = "select region.label region, sum(stock.quantity) quantity from wine join region on wine.region_id = region.id join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id join country on country.id = wine.country_id where country.label = 'Italie' group by region.label";
        mysql_query($q);
        $result = mysql_query($q);
        $data = array();
        $data[0][0] = "Région";
        $data[0][1] = "Nombre de bouteilles";
        $data[0][2]['role'] = "style";
        $i=1;
        $color[0] = 'blue';
        $color[1] = 'silver';
        $color[2] = 'yellow';
        $color[3] = 'orange';
        $color[4] = 'red';
        $color[5] = 'black';
        $color[6] = 'gold';
        $j = 0;
        while($row = mysql_fetch_assoc($result)){
            $data[$i][0] = $row['region'];
            $data[$i][1] = $row['quantity']+0;
            $data[$i][2] = $color[$j];
            $j = ($j + 1 ) % sizeof($color);
            $i++;
        }
        echo json_encode($data);
    }
}
function getPost($var){
    if(isset($_POST[$var])){
        return $_POST[$var];
    } else {
        return "";
    }
}
function q($str){
    return mysql_real_escape_string($str);
}
?>

