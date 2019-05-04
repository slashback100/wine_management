<?php $title = 'Statistique';
// vim: foldmethod=indent syntax=javascript
// --> vim= encoding=utf-8
    $origin = "stat";
    include 'check.php';
    include 'header.inc';
?>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawCharts);
    function drawStock(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {'is3D': 'true', isStacked: 'true', backgroundColor: $('#main').css("background-color")//, colors:[{color:'#FF0000', darker:'#680000'}, {color:'cyan', darker:'deepskyblue'}]
                };
        var chart = new google.visualization.ColumnChart(document.getElementById('stock_div'));
        chart.draw(googleData, options);
    }
    function drawNbrBottle(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: $('#main').css("background-color")
                };
        var chart = new google.visualization.PieChart(document.getElementById('nbrBottle_div'));
        chart.draw(googleData, options);
    }
    function drawRegionItBar(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: $('#main').css("background-color")
                };
        var chart = new google.visualization.ColumnChart(document.getElementById('regionItBar_div'));
        chart.draw(googleData, options);
    }
    function drawRegionFrBar(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: $('#main').css("background-color")
                };
        var chart = new google.visualization.ColumnChart(document.getElementById('regionFrBar_div'));
        chart.draw(googleData, options);
    }
    function drawCharts(){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                stats: 'stock'
            },
            success: function(list){
                drawStock(list);
            }
        });
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                stats: 'nbrBottle'
            },
            success: function(list){
                drawNbrBottle(list);
            }
        });
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                stats: 'regionFr'
            },
            success: function(list){
                drawRegionFrBar(list);
            }
        });
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                stats: 'regionIt'
            },
            success: function(list){
                drawRegionItBar(list);
            }
        });
    }
    </script>
<h1>Etat du stock</h1>
<div id='stock_div' style='width: 1000px; height: 500px;'></div>
<h1>Nombre de bouteilles</h1>
<div id='nbrBottle_div' style='width: 1000px; height: 500px;'></div>
<h1>Par Region (France)</h1>
<div id='regionFrBar_div' style='width: 1000px; height: 500px;'></div>
<h1>Par Region (Italie)</h1>
<div id='regionItBar_div' style='width: 1000px; height: 500px;'></div>
<?php include 'footer.inc' ?>
