<?php $title = 'Statistique';
// vim: foldmethod=indent
// --> vim= encoding=utf-8
    $origin = "stat";
    include 'header.inc';
?>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawCharts);
    function drawNbrBottle(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: '#cccccc'
                };
        var chart = new google.visualization.PieChart(document.getElementById('nbrBottle_div'));
        chart.draw(googleData, options);
    }
    function drawRegionItBar(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: '#cccccc'
                };
        var chart = new google.visualization.ColumnChart(document.getElementById('regionItBar_div'));
        chart.draw(googleData, options);
    }
    function drawRegionFrBar(data){
        var googleData = google.visualization.arrayToDataTable(data);
        var options = {backgroundColor: '#cccccc'
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
<h1>Nombre de bouteilles</h1>
<div id='nbrBottle_div' style='width: 1000px; height: 500px;'></div>
<h1>Par Region (France)</h1>
<div id='regionFrBar_div' style='width: 1000px; height: 500px;'></div>
<h1>Par Region (Italie)</h1>
<div id='regionItBar_div' style='width: 1000px; height: 500px;'></div>
<?php include 'footer.inc' ?>
