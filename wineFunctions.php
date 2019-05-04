<?php
// vim: syntax=php
include 'config.php';
$uniqId=uniqid();
$db = new PDO('mysql:host='.$db_config['host'].';dbname='.$db_config['database'].';charset=utf8mb4', $db_config['user'], $db_config['password'], array(PDO::ATTR_EMULATE_PREPARES => false, 
	                                                                                                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
//$db = new PDO('mysql:host=localhost;dbname=wine;charset=utf8mb4', 'wine', 'ghost100');
if(isset($_REQUEST['searchType'])){
    if($_REQUEST['searchType'] == "millesime"){
        $query = "select millesime.note, millesime.year, country.label country, region.label region, coalesce(color.label,'') color, coalesce(category.label, '') category, coalesce(apellation.label, '') appellation, coalesce(apellation.sub_division, '') sub_division from millesime join region on region.id = millesime.region_id join country on country.id = region.country_id  left outer join color on color.id = millesime.color_id left outer join category on category.id = millesime.category_id left outer join apellation on apellation.id = millesime.apellation_id order by country.label, region.label, apellation.sub_division, apellation.label, color.label, category.label, millesime.year";
        error_log($query);
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
        //while($row = $result->fetch(PDO::FETCH_ASSOC)){
            $wine = array();
            $wine['country'] = $row['country'];
            $wine['region'] = $row['region'];
            $wine['appellation'] = $row['appellation'];
            $wine['sub_division'] = $row['sub_division'];
            $wine['color'] = $row['color'];
            $wine['category'] = $row['category'];
            $key = $row['country'].'#'.$row['region'].'#'.$row['appellation'].'#'.$row['color'].'#'.$row['category'];
            $list[$i]['key'] = $key;
            $list[$i]['wine'] = $wine;
            $list[$i]['year'] = $row['year'];
            $list[$i]['note'] = $row['note'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "country"){
        $query = "select label, id from country where lower(label) like lower('".$_GET['country']."%')";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $obj = array();
            $obj['label'] = $row['label'];
            $obj['id'] = $row['id'];
            $list[$i]=$obj;
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "region"){
        if($_GET['country'] != "" ){
            $query = "select region.label, region.id from region join country on country.id = region.country_id where lower(region.label) like lower(".q($db,$_GET['region']."%").") and country.label = ".q($db,$_GET['country'])." limit 10";
        } else{
            $query = "select label, id from region where lower(label) like lower(".q($db,$_GET['region']."%").") limit 10";
        }
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $obj = array();
            $obj['label'] = $row['label'];
            $obj['id'] = $row['id'];
            $list[$i]=$obj;
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "nameClimat"){
        $query = "select distinct(name_climat) name_climat from wine where lower(name_climat) like lower(".q($db,"%".$_GET['nameClimat']."%").") limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]=$row['name_climat'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "propriete"){
        $query = "select distinct(propriete) propriete from wine where lower(propriete) like lower(".q($db,"%".$_GET['propriete']."%").") limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]=$row['propriete'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "appellation"){
        if($_GET['region'] != ''){
            $query = "select apellation.label, apellation.id from apellation join region on region.id = apellation.region_id where region.label = ".q($db,$_GET['region'])." and lower(apellation.label) like lower(".q($db,"%".$_GET['appellation']."%").") limit 10";
        } else {
            $query = "select label, id from apellation where lower(label) like lower(".q($db,"%".$_GET['appellation']."%").") limit 10";
        }
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $obj = array();
            $obj['label'] = $row['label'];
            $obj['id'] = $row['id'];
            $list[$i]=$obj;
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "producer"){
        $query = "select distinct(producer) producer from wine where lower(producer) like lower(".q($db,"%".$_GET['producer']."%").") limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]=$row['producer'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "size"){
        $query = "select label, volume,id from size where lower(label) like lower('".$_GET['size']."%') limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['label'] = $row['label'];
            $list[$i]['volume'] = $row['volume'];
            $list[$i]['id'] = $row['id'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "color"){
        $query = "select label, id from color where lower(label) like lower('".$_GET['color']."%')";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['label']=$row['label'];
            $list[$i]['id']=$row['id'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "category"){
        $query = "select label, id from category where lower(label) like lower(".q($db,"%".$_GET['category']."%").")";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['label']=$row['label'];
            $list[$i]['id']=$row['id'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "cepage"){
        $query = "select label, id from cepage where lower(label) like lower(".q($db,"%".$_GET['cepage']."%").") limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['label']=$row['label'];
            $list[$i]['id']=$row['id'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "location"){
        $query = "select distinct(location) from buy where lower(location) like lower(".q($db,"%".$_GET['location']."%").") limit 10";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]=$row['location'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "toKeep"){
        $query = "select label, id from to_keep where lower(label) like lower('%".$_GET['toKeep']."%')";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['label']=$row['label'];
            $list[$i]['id']=$row['id'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "meal"){
        $query = "select distinct(meal) meal from wine where lower(meal) like lower(".q($db,"%".$_GET['meal']."%").")";
        $result = $db->query($query);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
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
        $result = $db->query($q);
        $i=0;
        $list = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $list[$i]['wall']=$row['wall'];
            $list[$i]['casier']=$row['casier'];
            $list[$i]['quantity']=$row['quantity'];
            $list[$i]['bottle']=$row['bottle'];
            $i++;
        }
        echo json_encode($list);
    } elseif($_REQUEST['searchType'] == "wineCount"){
        error_log($uniqId." ".time()." wineCount");
        $f = " join stock_view stock_count on w.id = stock_count.wine_id ";
        $fw = getFromWhere($db, $f);
        $q = "select count(w.id) nbWine, coalesce(sum(stock_count.quantity),0) nbBottle ".$fw;
        error_log($uniqId." ".time()." ".$q);
        $stmt = $db->query($q);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        error_log($uniqId." ".time()." ended");
        $ret = array();
        $ret['nbWine'] = $result['nbWine'];
        $ret['nbBottle'] = $result['nbBottle'];
        echo json_encode($ret);
    } elseif($_REQUEST['searchType'] == "wine"){
        $s = "select distinct w.id ";
        $limit = getPost('limit');
        $orderBy = getPost('orderBy');
        $fw = getFromWhere($db, "");
        if($limit+0 > 0){
            $q = $s.$fw." ".$orderBy." limit 20";
        } else {
            $q = $s.$fw.$orderBy;
        }
        
        error_log($uniqId." ".$q);
        $result = $db->query($q);
        error_log($uniqId." end query");
        $i=0;
        $data = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $id=$row['id'];
/*
            $wineQ = "select w.id, coalesce(w.year, '') year, coalesce(w.name_climat,'') name_climat,c.label country, coalesce(w.propriete,'') propriete, coalesce(w.producer,'') producer, region.label region, coalesce(color.label, '') color, coalesce(category.label, '') category, coalesce(apellation.label, '') apellation ";
            $wineQ .=", coalesce(c1.label,'') cepage1, coalesce(c2.label,'') cepage2, coalesce(c3.label,'') cepage3, coalesce(c4.label,'') cepage4, coalesce(c5.label,'') cepage5, coalesce(c6.label,'') cepage6, ";
            $wineQ .="coalesce(concat(wc1.percentage, '%'), '') perc1, coalesce(concat(wc2.percentage, '%'), '') perc2, coalesce(concat(wc3.percentage, '%'), '') perc3, coalesce(concat(wc4.percentage, '%'), '') perc4, coalesce(concat(wc5.percentage, '%'), '') perc5, coalesce(concat(wc6.percentage, '%'), '') perc6, ";
            $wineQ .="coalesce(w.date_optimum, '') optimum, coalesce(w.end_optimum,'') end_optimum, coalesce(to_keep.label,'') to_keep, ";
            $wineQ .="coalesce(stock.quantity, 0) nbBottle ";
*/
            $wineQ = "select w.id, coalesce(w.name_climat,'') name_climat, coalesce(w.year, '') year, coalesce(w.propriete,'') propriete, coalesce(w.producer,'') producer,c.label country, region.label region, coalesce(apellation.label, '') apellation, coalesce(category.label, '') category, coalesce(color.label, '') color ";
            $wineQ .=", coalesce(c1.label,'') cepage1, coalesce(c2.label,'') cepage2, coalesce(c3.label,'') cepage3, coalesce(c4.label,'') cepage4, coalesce(c5.label,'') cepage5, coalesce(c6.label,'') cepage6, ";
            $wineQ .="coalesce(concat(wc1.percentage, '%'), '') perc1, coalesce(concat(wc2.percentage, '%'), '') perc2, coalesce(concat(wc3.percentage, '%'), '') perc3, coalesce(concat(wc4.percentage, '%'), '') perc4, coalesce(concat(wc5.percentage, '%'), '') perc5, coalesce(concat(wc6.percentage, '%'), '') perc6, ";
            $wineQ .="coalesce(w.date_optimum, '') optimum, coalesce(w.end_optimum,'') end_optimum, coalesce(to_keep.label,'') to_keep, ";
            $wineQ .="coalesce(stock.quantity, 0) nbBottle ";
            $wineQ .= "from wine w ";
            $wineQ .= "left outer join country c on c.id = w.country_id ";
            $wineQ .= "left outer join region on region.id = w.region_id ";
            $wineQ .= "left outer join color on color.id = w.color_id ";
            $wineQ .= "left outer join category on category.id = w.category_id ";
            $wineQ .= "left outer join apellation on apellation.id = w.apellation_id ";
            $wineQ .= "left outer join wine_cepage wc1 on wc1.wine_id = w.id ";
            $wineQ .= "left outer join cepage c1 on c1.id = wc1.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc2 on wc2.wine_id = w.id and wc2.id > wc1.id ";
            $wineQ .= "left outer join cepage c2 on c2.id = wc2.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc3 on wc3.wine_id = w.id and wc3.id > wc2.id ";
            $wineQ .= "left outer join cepage c3 on c3.id = wc3.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc4 on wc4.wine_id = w.id and wc4.id > wc3.id ";
            $wineQ .= "left outer join cepage c4 on c4.id = wc4.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc5 on wc5.wine_id = w.id and wc5.id > wc4.id ";
            $wineQ .= "left outer join cepage c5 on c5.id = wc5.cepage_id ";
            $wineQ .= "left outer join wine_cepage wc6 on wc6.wine_id = w.id and wc6.id > wc5.id ";
            $wineQ .= "left outer join cepage c6 on c6.id = wc6.cepage_id ";
            $wineQ .= "left outer join to_keep on to_keep.id = w.to_keep_id ";
            $wineQ .= "left outer join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = w.id ";
            $wineQ .= "where w.id = ".$id;
            error_log($wineQ);
            $stmt = $db->query($wineQ);
            $wine = $stmt->fetch(PDO::FETCH_ASSOC);
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
            $data[$i]['cepage6'] = $wine['cepage6'];
            $data[$i]['perc1'] = $wine['perc1'];
            $data[$i]['perc2'] = $wine['perc2'];
            $data[$i]['perc3'] = $wine['perc3'];
            $data[$i]['perc4'] = $wine['perc4'];
            $data[$i]['perc5'] = $wine['perc5'];
            $data[$i]['perc6'] = $wine['perc6'];
            $data[$i]['optimum'] = $wine['optimum'];
            $data[$i]['end_optimum'] = $wine['end_optimum'];
            $data[$i]['to_keep'] = $wine['to_keep'];
            $data[$i]['nbBottle'] = $wine['nbBottle'];

            $note = "";
            if($wine['year'] > 0){
                $millesime = "select millesime.note ";
                $millesime .= "from millesime join region on region.id = millesime.region_id ";
                $millesime .= "left outer join color on color.id = millesime.color_id ";
                $millesime .= "left outer join apellation on apellation.id = millesime.apellation_id ";
                $millesime .= "left outer join category on category.id = millesime.category_id ";
                $millesime .= "where millesime.year = ".$wine['year']." ";
                $millesime .= "and region.label = ".q($db,$wine['region'])." ";
                $millesime .= "and (millesime.color_id is null or color.label = '".$wine['color']."') ";
                $millesime .= "and (millesime.apellation_id is null or apellation.label = ".q($db,$wine['apellation']).") ";
                $millesime .= "and (millesime.category_id is null or category.label = ".q($db,$wine['category']).") ";
                $millesime .= "order by millesime.priority asc ";
                $millesime .= "limit 1";
                $noteQuery = $db->query($millesime);
                error_log($millesime);
                if($noteQuery->rowCount() > 0){ 
                    $note = $noteQuery->fetch(PDO::FETCH_ASSOC)['note'];
                }
            }
            $data[$i]['note'] = $note;

            $i++;
        }
        error_log($uniqId." result detail");
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'positionDetail'){
        $id = getPost('id');
        $q = "select pc.id, pc.wall, pc.casier, pc.quantity quantity, s.label size from position_cave pc join size s on s.id = pc.size_id where pc.quantity > 0 and pc.wine_id = ".$id;
        //error_log($q);
        $result = $db->query($q);
        $i=0;
        $data = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
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
        $result = $db->query($q);
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
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
        $result = $db->query($q);
        $i=0;
        $data = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $data[$i]['quantity'] = $row['quantity'];
            $data[$i]['out_date'] = $row['out_date'];
            $data[$i]['size'] = $row['size'];
            $i++;
        }
        echo json_encode($data);
    } elseif($_REQUEST['searchType'] == 'buyDetail'){
        $id = getPost('id');
        $q = "select buy.id, buy.quantity, coalesce(buy.location, '') location, coalesce(buy.buy_date, '') buy_date, coalesce(buy.unit_price, '') unit_price, size.label size from buy join size on size.id = buy.size_id where buy.wine_id = ".$id." order by buy.buy_date desc";
    error_log($q);
        $result = $db->query($q);
        $i=0;
        $data = array();
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $data[$i]['id'] = $row['id'];
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
        $result = $db->query($q);
        $row = $result->fetch(PDO::FETCH_ASSOC);
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
    $dateBuy = getPost('dateBuy');
    $locationBuyEdit = getPost('locationBuyEdit');
    $sizeBuyEdit = getPost('sizeBuyEdit');
    $quantityBuyEdit = getPost('quantityBuyEdit');
    $priceBuyEdit = getPost('priceBuyEdit');
    $dateBuyEdit = getPost('dateBuyEdit');
    $idBuyEdit = getPost('idBuyEdit');
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

 //   $db->query("start transaction;");
    $db->beginTransaction();
    for($i = 0; $i < sizeof($posArray); $i++){
        if($posArray[$i]->positionId > 0){
            if($posArray[$i]->quantity > 0){
                $q = "update position_cave set wall = '".$posArray[$i]->wall."', casier = '".$posArray[$i]->casier."', quantity = ".$posArray[$i]->quantity." where id = ".$posArray[$i]->positionId;
                error_log("MAJ: ".$q);
                $result = $db->query($q);
            } else {
                $q = "delete from position_cave where id = ".$posArray[$i]->positionId;
                error_log("MAJ: ".$q);
                $result = $db->query($q);
            }
        }else if($posArray[$i]->wall != "" && $posArray[$i]->casier != ""){
            $q = "select id from size where label = '".$posArray[$i]->size."'";
            $result = $db->query($q);
            $sizeId = $result->fetch(PDO::FETCH_ASSOC)['id'];

            $q = "insert into position_cave (wine_id, wall, casier, quantity, size_id) values (".$wineId.", '".$posArray[$i]->wall."', '".$posArray[$i]->casier."', ".$posArray[$i]->quantity.", ".$sizeId.")";
            error_log("MAJ: ".$q);
            $result = $db->query($q);
        }
        if($posArray[$i]->out > 0){
            $q = "select id from size where label = '".$posArray[$i]->size."'";
            $result = $db->query($q);
            $sizeId = $result->fetch(PDO::FETCH_ASSOC)['id'];
            $q = "insert into out_record (wine_id, quantity, out_date, size_id) values (".$wineId.", ".$posArray[$i]->out.", '".date('Y/m/d', time())."', ".$sizeId.")";
            error_log("MAJ: ".$q);
            $db->query($q);
            $q = "update position_cave set quantity = quantity-".$posArray[$i]->out." where id = ".$posArray[$i]->positionId;
            error_log("MAJ: ".$q);
            $db->query($q);
            
        }
    }
    if($idBuyEdit != ""){
        if($priceBuyEdit == ""){
            $priceBuyEdit = "NULL";
        }

        $q = "select id from size where label = '".$sizeBuyEdit."'";
        $result = $db->query($q);
        $sizeId = $result->fetch(PDO::FETCH_ASSOC)['id'];
        $q = "update buy set quantity = ".$quantityBuyEdit.", location= ".q($db,$locationBuyEdit).", size_id = ".$sizeId.", buy_date = '".$dateBuyEdit."', unit_price = ".str_replace(',', '.', $priceBuyEdit)." where id = ".$idBuyEdit;
        error_log($q);
        $db->query($q);

    }
    if($quantityBuy > 0){
        if($priceBuy == ""){
            $priceBuy = "NULL";
        }

        $q = "select id from size where label = '".$sizeBuy."'";
        $result = $db->query($q);
        $sizeId = $result->fetch(PDO::FETCH_ASSOC)['id'];
        error_log('location'.q($db,$locationBuy));
        $q = "insert into buy (wine_id, quantity, location, size_id, buy_date, unit_price) values (".$wineId.", ".$quantityBuy.", ".q($db,$locationBuy).", ".$sizeId.", '".$dateBuy."', ".str_replace(',', '.', $priceBuy).")";
        $db->query($q);
    }
    $cols = "";
    if($distinction != ""){$cols .= ", distinction= ".q($db,$distinction); }
    if($medal != ""){$cols .= ",medal=".q($db,$medal); }
    if($view != ""){$cols .= ",view=".q($db,$view); }
    if($noze != ""){$cols .= ",noze=".q($db,$noze); }
    if($taste != ""){$cols .= ",taste=".q($db,$taste); }
    if($comment != ""){$cols .= ",comment=".q($db,$comment); }
    if($myNote != ""){$cols .= ",my_note=".$myNote; }
    if($meal != ""){$cols .= ",meal=".$meal; }
    if($dateOptimum != ""){$cols .= ",date_optimum='".$dateOptimum."'"; }
    if($endOptimum != ""){$cols .= ",end_optimum='".$endOptimum."'"; }
    if($toKeep != ""){$cols .= ",to_keep_id = (select id from to_keep where label = '".$toKeep."')"; }
    //error_log("xouxou ".$cols);
    if($cols != ""){
        $cols = substr($cols, 1);// remove first comma
        $q = "update wine set ".$cols." where id =".$wineId;
        error_log("MAJ: ".$q);
        $db->query($q);
    }

    $ret = array();
    $ret['status'] = "OK";
    $ret['wineId'] = $wineId;
    //$db->query("commit;");
    $db->commit();
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
    $cepage6 = getPost('cepage6');
    $cepagePerc1 = getPost('cepagePerc1');
    $cepagePerc2 = getPost('cepagePerc2');
    $cepagePerc3 = getPost('cepagePerc3');
    $cepagePerc4 = getPost('cepagePerc4');
    $cepagePerc5 = getPost('cepagePerc5');
    $cepagePerc6 = getPost('cepagePerc6');
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

    $db->beginTransaction();
    $ret = array();
    $cols = "";
    $values = "";
    // insert into wine ($cols) values ($values)
    if($country != ""){
        $result = $db->query("select id from country where label = '".$country."'");
        if($result->rowCount() == 0){
            $db->query("insert into country (label) values ('".$country."')");
            $result = $db->query("select id from country where label = '".$country."'");
        }
        $countryId = $result->fetch(PDO::FETCH_ASSOC)['id'];
        $cols .= "country_id";
        $values .= $countryId;
    } else {
        // country is mandatory
        $ret['status'] = "KO";
        $ret['message'] = "Le pays est obligatoire";
        return 1;
    }
    if($region != ""){
        $result = $db->query("select id from region where label = ".q($db,$region)." and country_id = '".$countryId."'");
        if($result->rowCount() == 0){
            $db->query("insert into region (label, country_id) values (".q($db,$region).", '".$countryId."')");
            $result = $db->query("select id from region where label = ".q($db,$region)." and country_id = '".$countryId."'");
        }
        $regionId = $result->fetch(PDO::FETCH_ASSOC)['id'];
        $cols .= ",region_id";
        $values .= ",".$regionId;
    }
    if($appellation != ""){
        #$result = $db->query("select id from apellation where label = '".substitute("'", "''", $appellation)."' and region_id = '".$regionId."'");
        $result = $db->query("select id from apellation where label = ".q($db,$appellation)." and region_id = '".$regionId."'");
        if($result->rowCount() == 0){
            $db->query("insert into apellation (label, region_id) values (".q($db,$appellation).", '".$regionId."')");
            $result = $db->query("select id from apellation where label = ".q($db,$appellation)." and region_id = '".$regionId."'");
        }
        $appellationId = $result->fetch(PDO::FETCH_ASSOC)['id'];
        $cols .= ",apellation_id";
        $values .= ",".$appellationId;
    } 
    if($color != ""){
        $result = $db->query("select id from color where label = '".$color."';");
        if($result->rowCount() > 0){
            $colorId = $result->fetch(PDO::FETCH_ASSOC)['id'];
            $cols .= ",color_id";
            $values .= ",".$colorId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "La couleur du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }
    if($category != ""){
        $result = $db->query("select id from category where label = '".$category."'");
        if($result->rowCount() > 0){
            $categoryId = $result->fetch(PDO::FETCH_ASSOC)['id'];
            $cols .= ",category_id";
            $values .= ",".$categoryId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "La catégorie du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }

    if($toKeep != ""){
        $result = $db->query("select id from to_keep where label = '".$toKeep."'");
        if($result->rowCount() > 0){
            $toKeepId = $result->fetch(PDO::FETCH_ASSOC)['id'];
            $cols .= ",to_keep_id";
            $values .= ",".$toKeepId;
        } else {
            $ret['status'] = "KO";
            $ret['message'] = "Le critère 'Garde' du vin ne correspond pas à ce qu'il y a dans le système";
            return 1;
        }
    }

    if($nameClimat != ""){$cols .= ",name_climat";$values .= ",".q($db,$nameClimat); }
    if($propriete != ""){$cols .= ",propriete";$values .= ",".q($db,$propriete); }
    if($producer != ""){$cols .= ",producer";$values .= ",".q($db,$producer); }
    if($year != ""){$cols .= ",year";$values .= ",".$year; }
    if($optimum != ""){$cols .= ",date_optimum";$values .= ",".$optimum; }
    if($endOptimum != ""){$cols .= ",end_optimum";$values .= ",".$endOptimum; }
    if($distinction != ""){$cols .= ",distinction";$values .= ",".q($db,$distinction); }
    if($medal != ""){$cols .= ",medal";$values .= ",".q($db,$medal); }
    if($view != ""){$cols .= ",view";$values .= ",".q($db,$view); }
    if($noze != ""){$cols .= ",noze";$values .= ",".q($db,$noze); }
    if($taste != ""){$cols .= ",taste";$values .= ",".q($db,$taste); }
    if($comment != ""){$cols .= ",comment";$values .= ",".q($db,$comment); }
    if($myNote != ""){$cols .= ",my_note";$values .= ",".$myNote; }
    if($meal != ""){$cols .= ",meal";$values .= ",".q($db,$meal); }

    error_log("CREATION: insert into wine (".$cols.") values (".$values.");");
    $db->query("insert into wine (".$cols.") values (".$values.");");
    $wineId = $db->lastInsertId();
    error_log("wine id ".$wineId);

    if($quantity != "" && $quantity > 0){
        if($size != ""){
            $result = $db->query("select id from size where label = '".$size."'");
            if($result->rowCount() > 0){
                $sizeId = $result->fetch(PDO::FETCH_ASSOC)['id'];
            } else {
                $ret['status'] = "KO";
                $ret['message'] = "La taille de la bouteille ne correspond pas à ce qu'il y a dans le système";
                return 1;
            }
        }
        if($price == ""){
            $price = "NULL";
        }
        error_log("CREATION: insert into buy (wine_id, location, buy_date, quantity, size_id, unit_price) values (".$wineId.", '".$location."', '".$buyDate."', ".$quantity.", ".$sizeId.", ".str_replace(',', '.', $price).")"); 
        $db->query("insert into buy (wine_id, location, buy_date, quantity, size_id, unit_price) values (".$wineId.", ".q($db,$location).", '".$buyDate."', ".$quantity.", ".$sizeId.", ".str_replace(',', '.', $price).")"); 
        if($wall != "" && $casier != ""){
            error_log("CREATION: insert into position_cave (wine_id, quantity, size_id, wall, casier) values (".$wineId.", ".$quantity.", ".$sizeId.", '".$wall."', '".$casier."')");
            $db->query("insert into position_cave (wine_id, quantity, size_id, wall, casier) values (".$wineId.", ".$quantity.", ".$sizeId.", '".$wall."', '".$casier."')");

        }
    }
    if($cepage1 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage1));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage1).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage1));
        }
        $cepage1 = $result->fetch(PDO::FETCH_ASSOC)['id'];
        if($cepagePerc1 != ""){
            error_log("CREATION: insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage1).", ".$cepagePerc1.");");
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage1).", ".$cepagePerc1.");");
        } else {
            error_log("CREATION: insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage1).");");
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage1).");");
        }
    }
    if($cepage2 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage2));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage2).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage2));
        }
        $cepage2 = $result->fetch(PDO::FETCH_ASSOC)['id'];
        if($cepagePerc2 != ""){
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage2).", ".$cepagePerc2.");");
        } else {
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage2).");");
        }
    }
    if($cepage3 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage3));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage3).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage3));
        }
        $cepage3 = $result->fetch(PDO::FETCH_ASSOC)['id'];
        if($cepagePerc3 != ""){
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage3).", ".$cepagePerc3.");");
        } else {
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage3).");");
        }
    }
    if($cepage4 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage4));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage4).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage4));
        }
        $cepage4 = $result->fetch(PDO::FETCH_ASSOC)['id'];
        if($cepagePerc4 != ""){
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage4).", ".$cepagePerc4.");");
        } else {
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage4).");");
        }
    }
    if($cepage5 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage5));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage5).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage5));
        }
        $cepage5 = $result->fetch(PDO::FETCH_ASSOC)['id'];
        if($cepagePerc5 != ""){
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage5).", ".$cepagePerc5.");");
        } else {
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage5).");");
        }
    }
    if($cepage6 != ""){
        $result = $db->query("select id from cepage where label = ".q($db,$cepage6));
        if($result->rowCount() == 0){
            $db->query("insert into cepage (label) values (".q($db,$cepage6).")");
            $result = $db->query("select id from cepage where label = ".q($db,$cepage6));
        }

        if($cepagePerc6 != ""){
            $db->query("insert into wine_cepage (wine_id, cepage_id, percentage) values (".$wineId.", ".q($db,$cepage6).", ".$cepagePerc6.");");
        } else {
            $db->query("insert into wine_cepage (wine_id, cepage_id) values (".$wineId.", ".q($db,$cepage6).");");
        }
    }

    $db->commit();
    $ret['status'] = "OK";
    echo json_encode($ret);
} elseif(isset($_POST['deleteWine'])){
    $wineId = getPost('wineId');
    $db->beginTransaction();
    $ok = $db->query("delete from wine_cepage where wine_id = ".$wineId);
    $ok = $db->query("delete from position_cave where wine_id = ".$wineId);
    $ok = $db->query("delete from buy where wine_id = ".$wineId);
    $ok = $db->query("delete from out_record where wine_id = ".$wineId);
    $ok = $db->query("delete from wine where id = ".$wineId);
    $ok = $db->commit();
    $ret = array();
    $ret['status'] = "OK";
    echo json_encode($ret);
    
} elseif(isset($_POST['stats'])){
    if($_POST['stats'] == "nbrBottle"){
        $q = "select color.label color, sum(stock.quantity) quantity from wine join color on wine.color_id = color.id  join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id group by color.label";
        $db->query($q);
        $result = $db->query($q);
        $data = array();
        $data[0][0] = "Couleur";
        $data[0][1] = "Quantité";
        $i=1;
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $data[$i][0] = $row['color'];
            $data[$i][1] = $row['quantity']+0;
            $i++;
        }
        echo json_encode($data);
    }elseif($_POST['stats'] == "regionFr"){
        $q = "select region.label region, sum(stock.quantity) quantity from wine join region on wine.region_id = region.id join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id join country on country.id = wine.country_id where country.label = 'France' group by region.label";
        $db->query($q);
        $result = $db->query($q);
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
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $data[$i][0] = $row['region'];
            $data[$i][1] = $row['quantity']+0;
            $data[$i][2] = $color[$j];
            $j = ($j + 1 ) % sizeof($color);
            $i++;
        }
        echo json_encode($data);
    }elseif($_POST['stats'] == "regionIt"){
        $q = "select region.label region, sum(stock.quantity) quantity from wine join region on wine.region_id = region.id join (select sum(t.quantity) quantity, wine_id from (select quantity, wine_id from buy union all select -quantity quantity, wine_id from out_record) t group by wine_id) stock on stock.wine_id = wine.id join country on country.id = wine.country_id where country.label = 'Italie' group by region.label";
        $db->query($q);
        $result = $db->query($q);
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
        $rowRes = $result->fetchAll(PDO::FETCH_ASSOC);
        foreach($rowRes as $row){
            $data[$i][0] = $row['region'];
            $data[$i][1] = $row['quantity']+0;
            $data[$i][2] = $color[$j];
            $j = ($j + 1 ) % sizeof($color);
            $i++;
        }
        echo json_encode($data);
    }elseif($_POST['stats'] == "stock"){
        $q = "select sum(quantity) qty from (select quantity from buy union all select -quantity from out_record) t";
        $stock = $db->query($q->fetch(PDO::FETCH_ASSOC))['qty'];
        $q = "select sum(capacity) qty from casier_capacity";
        $db->query($q);
        $available = $db->query($q->fetch(PDO::FETCH_ASSOC))['qty'];
        $data = array();
        $data[0][0] = "Etat du stock";
        $data[0][1] = "Stock actuel";
        $data[0][2] = "Volume disponible";

        error_log("stock: ".$stock." available ".$available);
        error_log("stock: ".($stock+0)." available ".($available+0));
        $data[1][0] = "Stock";
        $data[1][1] = $stock+0;
        $data[1][2] = $available+0;
        echo json_encode($data);
    }
}elseif(isset($_POST['updateMillesime'])){
    $notes = getPost('notes');
    $db->beginTransaction();
    for($i = 0; $i < sizeof($notes); $i++){
        $m = $notes[$i];
        $q="select millesime.id from millesime join region on region.id = millesime.region_id left outer join color on color.id = millesime.color_id left outer join category on category.id = millesime.category_id left outer join apellation on apellation.id = millesime.apellation_id  where millesime.year = ".$m['year']." and region.label = ".q($db,$m['region'])." and coalesce(color.label, '') = '".$m['color']."' and coalesce(category.label, '') = '".$m['category']."' and coalesce(apellation.label, '') = ".q($db,$m['appellation']);
        error_log($q);
        $res=$db->query($q);
        if($res->rowCount() == 0){
            $db->query("insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (".$m['year'].", (select id from region where label = ".q($db,$m['region'])."), (select id from color where label = '".$m['color']."'), (select id from category where label = '".$m['category']."'), (select id from apellation where label = ".q($db,$m['appellation'])."), ".$m['note'].")") or error_log("error row ".$i);
        } else {
            $milId = $res->fetch(PDO::FETCH_ASSOC)['id'];
            $db->query("update millesime set note = ".$m['note']." where id = ".$milId);
        }

    }
    $db->commit();
    $data = array();
    $data['status'] = "ok";
    echo json_encode($data);
}
function getPost($var){
    if(isset($_POST[$var])){
        return $_POST[$var];
    } else {
        return "";
    }
}
function q($db, $str){
    //return str_replace(mysql_real_escape_string($str), "'", "''");
    //return mysql_real_escape_string($str);
    return $db->quote($str);
}
function getFromWhere($db, $from){
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
        $cepage6 = getPost('cepage6');
        $size = getPost('size');
        $plan = getPost('plan');
        $wall = getPost('wall');
        $meal = getPost('meal');
        $optimum = getPost('dateOptimum');
        $optimumOperator = getPost('dateOptimumOperator');
        $endOptimum = getPost('endOptimum');
        $endOptimumOperator = getPost('endOptimumOperator');
        $optimumNow = getPost('optimumNow');
        $toKeep = getPost('toKeep');
        $showEmptyStock = getPost('showEmptyStock');
        $toBeClassified = getPost('toBeClassified');
        $f = "from wine w ";
        $w = "where 1 = 1 ";

        if($country != ""){
            $w .= "and w.country_id = ".$country." ";
        }
        if($region != ""){
            $w .= "and w.region_id = ".$region." ";
        }
        if($nameClimat != ""){
            $w .= "and lower(w.name_climat) like lower(".q($db,"%".$nameClimat."%").") ";
        }
        if($propriete != ""){
            $w .= "and lower(w.propriete) like lower(".q($db,"%".$propriete."%").") ";
        }
        if($producer != ""){
            $w .= "and lower(w.producer) like lower(".q($db,"%".$producer."%").") ";
        }
        if($meal != ""){
            $w .= "and lower(w.meal) like lower(".q($db,"%".$meal."%").") ";
        }
        if($year != ""){
            $w .= "and w.year = ".$year." ";
        }
        if($color != ""){
            $w .= "and w.color_id = ".$color." ";
        }
        if($category != ""){
            $w .= "and w.category_id = ".$category." ";
        }
        if($appellation != ""){
            $w .= "and w.apellation_id = ".$appellation." ";
        }
        if($cepage1 != ""){
            $f .= "join wine_cepage wc1 on w.id = wc1.wine_id and wc1.cepage_id = ".$cepage1." ";
        }
        if($cepage2 != ""){
            $f .= "join wine_cepage wc2 on w.id = wc2.wine_id and wc2.cepage_id = ".$cepage2." ";
        }
        if($cepage3 != ""){
            $f .= "join wine_cepage wc3 on w.id = wc3.wine_id and wc3.cepage_id = ".$cepage3." ";
        }
        if($cepage4 != ""){
            $f .= "join wine_cepage wc4 on w.id = wc4.wine_id and wc4.cepage_id = ".$cepage4." ";
        }
        if($cepage5 != ""){
            $f .= "join wine_cepage wc5 on w.id = wc5.wine_id and wc5.cepage_id = ".$cepage5." ";
        }
        if($cepage6 != ""){
            $f .= "join wine_cepage wc6 on w.id = wc6.wine_id and wc6.cepage_id = ".$cepage6." ";
        }
        if($size != ""){
            $f .= "join stock_view s on w.id = s.wine_id and s.quantity > 0 and s.size_id = ".$size." ";
        }
        if($toKeep != ""){
            $w .= "and w.to_keep_id = ".$toKeep." ";
        }
        if($plan != "" || $wall != ""){
            $f .= "join position_cave pc on w.id = pc.wine_id ";
        }
        if($plan != ""){
            $w .= "and pc.wall = ".q($db,$plan)." ";
        }
        if($wall != ""){
            $w .= "and pc.casier = ".q($db,$wall)." ";
        }
        if($showEmptyStock == "false"){
            $f .= "join stock_view stock on stock.wine_id = w.id and stock.quantity > 0 ";
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
        return $f.$from.$w;
}
?>

