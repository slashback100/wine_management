<?php $title = 'Millesime';
// vim: foldmethod=indent
// --> vim= encoding=utf-8
    $origin = "millesime";
    include 'check.php';
    include 'header.inc';
?>
<table id='millesimeTable'>

</table>
    <script>
var nbYear = 0;
var maxYear = 0;
$(document).ready(function() {
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: "millesime"
            },
            success : function(list, b){
                var oldKey = "";
                var table = "";
                var header = "<tr><td>Vin</td>";
                var firstRow = 1;
                var cl = "";
                for(var index in list){
                    var obj = list[index];
                    if(oldKey != obj.key){
                        if(oldKey != ""){
                            table += "</tr>";
                            header += "</tr>";
                            firstRow = 0;
                        }
                        if(obj.wine.country == 'France'){
                            cl=" class='note20' ";
                        } else if(obj.wine.country == 'Italie'){
                            cl=" class='note100' ";
                        }
                        oldKey = obj.key;
                        var wine = obj.wine;
                        table += "<tr><td>"+wine.country+" "+wine.region+" "+wine.color+" "+wine.category+" "+wine.sub_division+" "+wine.appellation;
                        table += "<input data-type='region' type='hidden' value='"+wine.region+"'/>";
                        table += "<input data-type='color' type='hidden' value='"+wine.color+"'/>";
                        table += "<input data-type='category' type='hidden' value='"+wine.category+"'/>";
                        table += "<input data-type='appellation' type='hidden' value='"+wine.appellation+"'/></td>";
                    }
                    if(firstRow == 1){
                        nbYear++;
                        maxYear = maxYear < obj.year?obj.year:maxYear;
                        header += "<td>"+obj.year+"</td>";
                    }
                    table += "<td "+cl+">"+obj.note+"</td>";
                }
                table+="</tr>";
                /*<tr><td></td>";
                for(var i=0;i<nbYear;i++){
                    table+="<td><input type='submit' class='majButton' value='maj'/></td>";
                }
            table += "</tr>";*/
                $('#millesimeTable').html(header+table);
                $('.note20').each(function(){
                    if($(this).html() == "20")
                        $(this).css('background-color', '#FC0D1B');
                    if($(this).html() == "19")
                        $(this).css('background-color', '#FC251C');
                    if($(this).html() == "18")
                        $(this).css('background-color', '#FC431D');
                    if($(this).html() == "17")
                        $(this).css('background-color', '#FC6120');
                    if($(this).html() == "16")
                        $(this).css('background-color', '#FD7F24');
                    if($(this).html() == "15")
                        $(this).css('background-color', '#FD9F28');
                    if($(this).html() == "14")
                        $(this).css('background-color', '#FDBF2D');
                    if($(this).html() == "13")
                        $(this).css('background-color', '#D9BC2C');
                    if($(this).html() == "12")
                        $(this).css('background-color', '#B6BA2E');
                    if($(this).html() == "11")
                        $(this).css('background-color', '#92B733');
                    if($(this).html() == "10")
                        $(this).css('background-color', '#6FB439');
                    if($(this).html() == "9")
                        $(this).css('background-color', '#4DB242');
                    if($(this).html() == "8")
                        $(this).css('background-color', '#2EB04B');
                    if($(this).html() <= 7 && $(this).html() > 0)
                        $(this).css('background-color', '#1AAF54');
                });
                $('.note100').each(function(){
                    if($(this).html() > 98)
                        $(this).css('background-color', '#FC0D1B');
                    else if($(this).html() > 96)
                        $(this).css('background-color', '#FC251C');
                    else if($(this).html() > 94)
                        $(this).css('background-color', '#FC431D');
                    else if($(this).html() > 92)
                        $(this).css('background-color', '#FC6120');
                    else if($(this).html() > 90)
                        $(this).css('background-color', '#FD7F24');
                    else if($(this).html() > 88)
                        $(this).css('background-color', '#FD9F28');
                    else if($(this).html() > 86)
                        $(this).css('background-color', '#FDBF2D');
                    else if($(this).html() > 84)
                        $(this).css('background-color', '#D9BC2C');
                    else if($(this).html() > 82)
                        $(this).css('background-color', '#B6BA2E');
                    else if($(this).html() > 80)
                        $(this).css('background-color', '#92B733');
                    else if($(this).html() > 78)
                        $(this).css('background-color', '#6FB439');
                    else if($(this).html() > 76)
                        $(this).css('background-color', '#4DB242');
                    else if($(this).html() > 74)
                        $(this).css('background-color', '#2EB04B');
                    else if($(this).html() > 0)
                        $(this).css('background-color', '#1AAF54');
                });
                $('#millesimeTable tr').each(function(){
                    $(this).find('td').eq(nbYear).after('<td><input type="text" size="4"/></td>');
                });
                var row = '<tr><td></td>';
                for(var i = 0; i < nbYear; i++){
                    row += '<td><input class="edit" click="edit" data-index="'+i+'" type="submit" value="maj"/></td>';
                }
                row += '<td><input type="submit" id="save" value="Ajouter"/></td>';
                row += '</tr>';
                $(row).insertAfter($('#millesimeTable tr').last());
                $($('#millesimeTable tr')[0]).find('td').eq(nbYear+1).find('input').val(parseInt(maxYear)+1);
                $('.edit').click(function(e){edit(e);});
                $('#save').click(function(e){save(e, 'create');});
            } 
        });
});
function edit(event){
    $(event.target).off('click');
    var col = parseInt($(event.target).attr("data-index"));
    $('#millesimeTable tr td input[type="submit"]').val('maj');
    $('#millesimeTable tr').each(function(){
        $(this).find('td').eq(nbYear+1).remove();
        if($(this).find('td input[type="text"]').length > 0){
            $(this).find('td input[type="text"]').parent().html($(this).find('td input[type="text"]').val());
        }
        var cell = $(this).find('td').eq(col+1);
        if(cell.find('input').length == 0){
            cell.html('<input size="4" type="text" value="'+cell.html()+'"/>');
        } else {
            cell.find('input').val("Sauver");
            cell.find('input').click(function(e){save(e, 'update');});
        }
    }); 
    event.preventDefault(); 
    return false;
}
function save(event, mode){
    var year;
    var all = [];
    var i=0;
    $('#millesimeTable tr').each(function(){
        if($(this).find('td').eq(0).find('input').length > 0){
            if($(this).find('td input').last().attr('type') == 'text'){
                note=$(this).find('td input').last().val();
                note=note==""?"0":note;
                all.push({"region": $(this).find('td').eq(0).find('input[data-type=region]').val(),
                    "color": $(this).find('td').eq(0).find('input[data-type=color]').val(),
                    "category": $(this).find('td').eq(0).find('input[data-type=category]').val(),
                    "appellation": $(this).find('td').eq(0).find('input[data-type=appellation]').val(),
                    "note": note,
                    "year": year
                });
            }
        }else{
            year=$(this).find('td input').val();
        }
    });
    $.ajax({
        url: 'wineFunctions.php',
        dataType: 'json',
        method: 'post',
        data: {
            updateMillesime: "updateMillesime",
            mode: mode,
            notes: all
        },
        success : function(list, b){
            window.location = window.location;
        }
    });
    event.preventDefault(); 
    return false;
}
    </script>
<?php
    include 'footer.inc';
?>
