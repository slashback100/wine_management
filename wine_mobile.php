<?php $title = 'Wine';
    include 'check.php';
// vim: foldmethod=indent
// --> vim= encoding=utf-8
?>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>   
<meta name="referrer" content="no-referrer"/>
<form id='searchForm' method='POST'>
    <label>Pays</label><input type="text" name="country"  id="countrySearch" /><br/>
    <label>Region</label><input type="text" name="region" id="regionSearch" /><br/>
    <label>Nom / Climat</label><input type="text" name="nameClimat" id="nameClimatSearch" /><br/>
    <label>Propriété</label><input type="text" name="propriete"  id="proprieteSearch" /><br/>
    <label>Producteur</label><input type="text" name="producer" id="producerSearch" /><br/>
    <label>Appellation</label><input type="text" name="appellation" id="appellationSearch" /><br/>
    <label>Millesime</label><input type="text" name="year" id="year"/></br>
    <label>Couleur</label><input type="text" name="color" id="colorSearch" /><br/>
    <label>Catégorie</label><input type="text" name="category" id="categorySearch" /><br/>
    <label>Mur</label>
        <table id='plan' height='100px' width='150px'>
              <tr height='25%'><td width='16%'/><td class='plan' id='north' width='66,8%' colspan='2'/><td width='16%'/></tr>
              <tr height='25%'><td class='plan' id='west' rowspan='2'/><td colspan='2'/><td class='plan' id='east' rowspan='2'/></tr>
              <tr height='25%'><td colspan='2'/></tr>
              <tr height='25%'><td/><td width='16%'/><td class='plan' id='south'/></tr>
        </table>
    <input type='hidden' id='planField' name='plan'/>
    <label>Position</label>
       <table id='wall'>
      </table>
    <input type='hidden' id='wallField' name='position'/></br>
   <input type='submit' id='reset' value='Réinitialiser'/>
   <br/>
   <p id='searchCount'></p>
</form>
<table id='wines' width='100%'>
</table>
    <script>
    function drawWall(){
        var content = "";
        var col41="";
        var col42="";
        var col43="";
        var col44="";
        var col51="";
        var col52="";
        var col53="";
        var col54="";
        if($('#planField').val() == "north" || $('#planField').val() == "west"){
            col41="<td class='wall' width='20px' id='wall14'></td>";
            col42="<td class='wall' width='20px' id='wall24'></td>";
            col43="<td class='wall' width='20px' id='wall34'></td>";
            col44="<td class='wall' width='20px' id='wall44'></td>";
        }
        if($('#planField').val() == "north"){
            col51="<td class='wall' width='20px' id='wall15'></td>";
            col52="<td class='wall' width='20px' id='wall25'></td>";
            col53="<td class='wall' width='20px' id='wall35'></td>";
            col54="<td class='wall' width='20px' id='wall45'></td>";
        }

        content+="<tr height='20px'><td class='wall' width='20px' id='wall11'></td><td class='wall' width='20px' id='wall12'></td><td class='wall' width='20px' id='wall13'></td>"+col41+col51+"</tr>";
        content+="<tr height='20px'><td class='wall' width='20px' id='wall21'></td><td class='wall' width='20px' id='wall22'></td><td class='wall' width='20px' id='wall23'></td>"+col42+col52+"</tr>";
        content+="<tr height='20px'><td class='wall' width='20px' id='wall31'></td><td class='wall' width='20px' id='wall32'></td><td class='wall' width='20px' id='wall33'></td>"+col43+col53+"</tr>";
        content+="<tr height='20px'><td class='wall' width='20px' id='wall41'></td><td class='wall' width='20px' id='wall42'></td><td class='wall' width='20px' id='wall43'></td>"+col44+col54+"</tr>";
        $('#wall').html(content);
        $(".wall").click(function(){
              $('.wall').css("background-color", "#DDDDDD");
              $('.wall').css("color", "#000000");
              if($('#wallField').val() != $(this)[0].id){
                $(this).css("background-color", "#222222");
                $(this).css("color", "#FFFFFF");
                $('#wallField').val($(this)[0].id);
              } else {
                $('#wallField').val("");
              }
            search();
        });
    }
    function drawWallDetail(index){
        var content = "";
        var col41="";
        var col42="";
        var col43="";
        var col44="";
        var col51="";
        var col52="";
        var col53="";
        var col54="";
        if($('#planDetailField'+index).val() == "northDetail"+index || $('#planDetailField'+index).val() == "westDetail"+index){
            col41="<td class='wall wallDetail"+index+"' width='20px' id='wall14Detail"+index+"'/>";
            col42="<td class='wall wallDetail"+index+"' width='20px' id='wall24Detail"+index+"'/>";
            col43="<td class='wall wallDetail"+index+"' width='20px' id='wall34Detail"+index+"'/>";
            col44="<td class='wall wallDetail"+index+"' width='20px' id='wall44Detail"+index+"'/>";
        }
        if($('#planDetailField'+index).val() == "northDetail"+index){
            col51="<td class='wall wallDetail"+index+"' width='20px' id='wall15Detail"+index+"'/>";
            col52="<td class='wall wallDetail"+index+"' width='20px' id='wall25Detail"+index+"'/>";
            col53="<td class='wall wallDetail"+index+"' width='20px' id='wall35Detail"+index+"'/>";
            col54="<td class='wall wallDetail"+index+"' width='20px' id='wall45Detail"+index+"'/>";
        }

        content+="<tr height='20px'><td class='wall wallDetail"+index+"' width='20px' id='wall11Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall12Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall13Detail"+index+"'/>"+col41+col51+"</tr>";
        content+="<tr height='20px'><td class='wall wallDetail"+index+"' width='20px' id='wall21Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall22Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall23Detail"+index+"'/>"+col42+col52+"</tr>";
        content+="<tr height='20px'><td class='wall wallDetail"+index+"' width='20px' id='wall31Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall32Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall33Detail"+index+"'/>"+col43+col53+"</tr>";
        content+="<tr height='20px'><td class='wall wallDetail"+index+"' width='20px' id='wall41Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall42Detail"+index+"'/><td class='wall wallDetail"+index+"' width='20px' id='wall43Detail"+index+"'/>"+col44+col54+"</tr>";
        $('#wallDetail'+index).html(content);
        /*$(".wallDetail"+index).click(function(){
              var idOfWall = $(this).parent().parent().attr('id').substr('wallDetail'.length,1);
              var qtyInCell = parseInt($(this).html());
              var nbOfBottle = parseInt($('#quantityPos'+idOfWall).val());
              if(nbOfBottle > qtyInCell){
                    $(this).css("background-color", "#ff0000"); // selected item in dark, white text
                    $(this).attr("data-toputinblack", "true");
                    setTimeout(function() {
                        $("td[data-toputinblack=true]").css("background-color", "#DDDDDD");
                        $("td[data-toputinblack=true]").removeAttr("data-tobeputinblack");
                    }, 500);
              } else {
                  $('.'+$(this).attr('class').substr("wall ".length)).css("background-color", "#DDDDDD"); // everything in clear, text in black
                  $('.'+$(this).attr('class').substr("wall ".length)).css("color", "#000000");            
                  if($('#wallDetailField'+idOfWall).val() != $(this)[0].id){
                    $(this).css("background-color", "#222222"); // selected item in dark, white text
                    $(this).css("color", "#FFFFFF");
                    $('#wallDetailField'+idOfWall).val($(this)[0].id);
                  } else {
                    $('#wallDetailField'+idOfWall).val("");
                  }
              }
        });*/
    }

function clearForm(myFormElement) {
  var elements = myFormElement.elements;
  for(i=0; i<elements.length; i++) {
      field_type = elements[i].type.toLowerCase();
      switch(field_type) {
        case "text":
        case "password":
        case "textarea":
        case "hidden":
          elements[i].value = "";
          elements[i].removeAttribute("data-id");
          break;
        case "radio":
        case "checkbox":
          if (elements[i].checked) {
              elements[i].checked = false;
          }
          break;
        case "select-one":
        case "select-multi":
          elements[i].selectedIndex = -1;
          elements[i].removeAttribute("data-id");
          break;
        default:
          break;
      }
   }
}

$('#reset').click(function(e){
    clearForm($('#searchForm')[0]);
    search();
    e.preventDefault(); 
    return false;
});

$(document).ready(function() {
    $('#countrySearch').on('input',search);
    $('#countrySearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#countrySearch").removeAttr("data-id");
            $.ajax({
                    url : 'wineFunctions.php', // on appelle le script JSON
                    dataType : 'json', 
                    data: {searchType: 'country', country: request.term},
                    success : function(list,b){response($.map(list, function(obj){return obj;}));} 
            });
        },
        minLength: 0,
        select : function(event, ui){
            $('#countrySearch').val(ui.item.label);
            $('#countrySearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#regionSearch').on('input',search);
    $('#regionSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#regionSearch").removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'region', region: request.term, country: $('#countrySearch').val()},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#regionSearch').val(ui.item.label);
            $('#regionSearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#nameClimatSearch').on('input',search);
    $('#nameClimatSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'nameClimat', nameClimat: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#nameClimatSearch').val(ui.item.label);
            search();
        }
      //  minLength: 2
    });
    $('#proprieteSearch').on('input',search);
    $('#proprieteSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'propriete', propriete: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#proprieteSearch').val(ui.item.label);
            search();
        }
      //  minLength: 2
    });
    $('#producerSearch').on('input',search);
    $('#producerSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'producer', producer: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#producerSearch').val(ui.item.label);
            search();
        }
      //  minLength: 2
    });
    $('#colorSearch').on('input',search);
    $('#colorSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#colorSearch").removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'color', color: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#colorSearch').val(ui.item.label);
            $('#colorSearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#appellationSearch').on('input',search);
    $('#appellationSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#appellationSearch").removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'appellation', appellation: request.term, region: $('#regionSearch').val()},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#appellationSearch').val(ui.item.label);
            $('#appellationSearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#categorySearch').on('input',search);
    $('#categorySearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#categorySearch").removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'category', category: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#categorySearch').val(ui.item.label);
            $('#categorySearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#year').on('input', search);
    $(".plan").click(function(){
        $('.plan').css("background-color", "#DDDDDD");
        $('#wallField').val("");
        if($('#planField').val() != $(this)[0].id){
            $(this).css("background-color", "#222222");
            $('#planField').val($(this)[0].id);
            drawWall();
        } else {
            $('#planField').val("");
            $('#wall').html("");
        }
        search();
    });
    search();
});
    function search(){
        rowSelected = null;
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'wine',
                country: $('#countrySearch').val(),
                region: $('#regionSearch').val(),
                nameClimat: $('#nameClimatSearch').val(),
                propriete: $('#proprieteSearch').val(),
                producer: $('#producerSearch').val(),
                appellation: $('#appellationSearch').val(),
                year: $('#year').val(),
                color: $('#colorSearch').val(),
                category: $('#categorySearch').val(),
                plan: $('#planField').val(),
                wall: $('#wallField').val(),
                showEmptyStock: 'false',
                toBeClassified: 'false'
            },
            success : function(list, b){
                refreshTable(list);
                searchCount();
            } 
        });
        getStock("");
    }
    function searchCount(){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'wineCount',
                country: $('#countrySearch').val(),
                region: $('#regionSearch').val(),
                nameClimat: $('#nameClimatSearch').val(),
                propriete: $('#proprieteSearch').val(),
                producer: $('#producerSearch').val(),
                appellation: $('#appellationSearch').val(),
                year: $('#year').val(),
                color: $('#colorSearch').val(),
                category: $('#categorySearch').val(),
                plan: $('#planField').val(),
                wall: $('#wallField').val(),
                showEmptyStock: 'false',
                toBeClassified: 'false'
            },
            success : function(cnt, b){
                $('#searchCount').html(cnt.nbBottle+" bouteille, "+cnt.nbWine+" vin(s)");
            } 
        });
    }
    function getStock(wall){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'basementAvailability',
                wall: wall
            },
            success : function(list, b){
                refreshCave(list);
            } 
        });
    }
    function refreshCave(list){
        var wall = $('#planField').val();
        for(var i = 0; i < list.length; i++){
            if(list[i].wall == wall){
                if(list[i].bottle > 0){
                    $('#'+list[i].casier).html(list[i].bottle);
                }
            }
        }
        for(var j = 0; j < $('.planDetailHidden').length; j++){
            var wall = $('#planDetailField'+j).val();
            for(var i = 0; i < list.length; i++){
                if(list[i].wall+"Detail"+j == wall){
                    $('#'+list[i].casier+"Detail"+j).html(list[i].quantity);
                }
            }
        }
    }
    var rowSelected = null;
    function refreshTable(data){
        var table="<tr><th>Region & Appellation</th><th>Vin</th><th>Millesime</th></tr>";
        for(var i=0; i < data.length; i++){
           table = table + '<tr id="row'+data[i].id+'" data-wineid="'+data[i].id+'" class="wineRow"><td class="withBorder" >'+data[i].region+', '+data[i].appellation+'</td><td class="withBorder">'+data[i].nbBottle+' bouteilles '+data[i].color+' de '+data[i].propriete+' '+data[i].producer+' '+data[i].nameClimat+'</td><td class="withBorder">'+data[i].year+'</td></tr>';
        }

        $('#wines')[0].innerHTML = table;
        $('.wineRow').click(function(){
            //$('.wineDetail').attr("class", "oldWineDetail");
            //$('.oldWineDetail').animate({opacity: '0', height: '0'}, "slow", function(){$(this).remove();});
            //$('.wineDetail').animate({opacity: '0', height: '0'}, "slow");
            $('.wineDetail').remove();
            if(rowSelected != $(this)[0].id){
                var wineId = $('#'+$(this)[0].id).attr('data-wineid'); 
                $('<tr style="opacity: 0" class="wineDetail" data-wineid="'+wineId+'"><td class="withBorder" colspan="15"></td></tr>').insertAfter('#'+$(this)[0].id);
                rowSelected = $(this)[0].id;
                var det = '<div id="buyDetail"/><div id="outDetail"/><div id="buyInput"/><div id="positionDetail"/><div id="tastingDetail" width="45%"/>';

                $('.wineDetail > td').html(det);
                $('.wineDetail').animate({opacity: '1'}, "slow");
                fillDetails(wineId);
            } else {
                rowSelected = null;
            }
        });
    }
    function fillDetails(wineId){
        fillPositionDetails(wineId);
        fillOutDetails(wineId);
        fillBuyDetails(wineId);
        //fillTasteDetails(wineId);
    }
    function fillOutDetails(wineId){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'outDetail',
                id: wineId
            },
            success: function(list){
                var det = "<ul>";
                for(i=0; i < list.length; i++){
                    var oDate = list[i].out_date;
                    oDate = oDate.substr(8,2)+"/"+oDate.substr(5,2)+"/"+oDate.substr(0,4);
                    det +=  "<li>"+list[i].quantity+" "+list[i].size+" bue(s) le "+oDate+"</li>";
                }
                det = det+"</ul>";
                $('#outDetail').html(det);
            }
        });
    }
    function fillBuyDetails(wineId){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'buyDetail',
                id: wineId
            },
            success: function(list){
                var det = "<ul>";
                for(i=0; i < list.length; i++){
                    det +=  "<li>"+list[i].quantity+" "+list[i].size+'(s)'+(list[i].buy_date != ""?(" achetées/reçue le "+list[i].buy_date):"")+(list[i].location!=""?(" chez/de "+list[i].location):"")+(list[i].unit_price>0?(" à "+list[i].unit_price+"€ la bouteille</li>"):"");
                }
                det = det+"</ul>";
                $('#buyDetail').html(det);
            }

        });
    }
    function fillTasteDetails(wineId){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'tasteDetail',
                id: wineId
            },
            success: function(list){
                var det = "<label>Optimum</label><input id='optimumDetail' type='text' value='"+list.date_optimum+"'></input></br><label>Fin optimum</label><input id='endOptimumDetail' type='text' value='"+list.end_optimum+"'></input></br><label>Garde</label><input id='toKeepDetail' type='text' value='"+list.to_keep+"'></input></br><label>Distinction: </label><input id='distinctionDetail' type='text' value='"+list.distinction+"'/><br/><label>Médaille: </label><input id='medalDetail' type='text' value='"+list.medal+"'/><br/><label>Vue: </label><textarea id='viewDetail' rows='2' cols='50'>"+list.view+"</textarea><br/><label>Nez</label><textarea id='nozeDetail' rows='2' cols='50'>"+list.noze+"</textarea><br><label>Goût :</label><textarea id='tasteDetail' rows='2' cols='50'>"+list.taste+"</textarea><br/><label>Ma note :</label><input id='myNoteDetail' type='text' value='"+list.my_note+"'/><br/><label>Met :</label><textarea id='mealDetail' rows='2' cols='50'>"+list.meal+"</textarea><br/><label>Commentaire :</label><textarea id='commentDetail' rows='2' cols='50'>"+list.comment+"</textarea>";
                det += "<br/><div align='right'><input type='submit' id='saveWine' value='Sauver'/>";
                det += "<input type='submit' id='deleteWine' value='Supprimer le vin'/></div>";
                $('#tastingDetail').html(det);

                $('#toKeepDetail').autocomplete({
                    //autoFocus: true,
                    source: function(request, response){
                        $.ajax({
                            url : 'wineFunctions.php', // on appelle le script JSON
                            dataType : 'json', 
                            data: {searchType: 'toKeep', toKeep: request.term},
                            success : function(list,b){
                                response($.map(list, function(obj){return obj;}));
                            } 
                        });
                    },
                    select : function(event, ui){
                        $('#toKeepDetail').val(ui.item.label);
                    }
                });
                $('#saveWine').click(function(e){saveWine(e);});
                $('#deleteWine').click(function(e){deleteWine(e);});
            }
        });
    }
    function saveWine(event){
        var positions = new Array();
        for(var i = 0; i < $('.planDetailHidden').length; i++){
            var det = new Object();
            det.positionId = $('#planDetailField'+i).parent().parent().attr('data-positionid');
            det.wall = $('#planDetailField'+i).val().substr(0, $('#planDetailField'+i).val().indexOf("Detail"));
            det.casier = $('#wallDetailField'+i).val().substr(0, $('#wallDetailField'+i).val().indexOf("Detail"));
            det.quantity = $('#quantityPos'+i).html();
            det.size = $('#sizePos'+i).html();
            det.out = $('#out'+i).val();
            positions.push(det);
        }
        
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                saveWine: "saveWine",
                wineId: $('.wineDetail').attr('data-wineid'),
                positions:  JSON.stringify(positions)

            },
            success : function(list, b){
                fillDetails(list.wineId);
            } 
        });

        event.preventDefault(); 
        return false;
    }
    function fillPositionDetails(wineId){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                searchType: 'positionDetail',
                id: wineId
            },
            success: function(list){
                var det = "<table>";
                for(i=0; i < list.length; i++){
                    det += "<tr data-positionid='"+list[i].id+"'><td><div style='display: inline' id='quantityPos"+i+"'>"+list[i].quantity+"</div><div id='sizePos"+i+"'>"+list[i].size+"</div>";
                    //det += "<br/><button>-</button><button>+</button></td>";
                    det += "</td>";
                    det += "<td><table id='planDetail"+i+"' height='100px' width='150px'>";
                    det += "<tr height='25%'><td width='16%'/><td class='plan planDetail"+i+"' id='northDetail"+i+"' width='66,8%' colspan='2'/><td width='16%'/></tr>";
                    det += "<tr height='25%'><td class='plan planDetail"+i+"' id='westDetail"+i+"' rowspan='2'/><td colspan='2'/><td class='plan planDetail"+i+"' id='eastDetail"+i+"' rowspan='2'/></tr>";
                    det += "<tr height='25%'><td colspan='2'/></tr>";
                    det += "<tr height='25%'><td/><td width='16%'/><td class='plan planDetail"+i+"' id='southDetail"+i+"'/></tr>";
                    det += "</table>";
                    det += "</td><td>";
                    det += "<table id='wallDetail"+i+"'>";
                    det += "</table>";
                    det += "</td><td>";
                    //det += "Sortie : <input type='submit' value='-' id='outMinus"+i+"' class='outMinus' /><div style='display: inline' id='out"+i+"'>0</div><input type='submit' value='+' id='outPlus"+i+"' class='outPlus' />";
                    det += "<input type='submit' class='drink' value='Sortir 1 bouteille' id='outBut"+i+"'/><input type='hidden' id='out"+i+"' val='0'/>";
                    det += "<input type='hidden' class='planDetailHidden' id='planDetailField"+i+"' />";
                    det += "<input type='hidden' class='wallDetailHidden' id='wallDetailField"+i+"' />";
                    det += "</td></tr>";
                }
                $('#positionDetail').html(det);
                for(i=0; i < list.length; i++){
                    /*$(".planDetail"+i).click(function(){
                        var idOfPlan = $(this).parent().parent().parent().attr('id').substr('planDetail'.length,1);
                        $('.planDetail'+idOfPlan).css("background-color", "#DDDDDD");
                        if($('#planDetailField'+idOfPlan).val() != $(this)[0].id){
                          $(this).css("background-color", "#222222");
                          $('#planDetailField'+idOfPlan).val($(this)[0].id);
                        } else {
                          $('#planDetailField'+idOfPlan).val("");
                        }
                        drawWallDetail(idOfPlan);
                        getStock("");
                    });*/
                    $('#planDetailField'+i).val(list[i].wall+"Detail"+i);
                    $('#wallDetailField'+i).val(list[i].casier+"Detail"+i);
                    drawWallDetail(i);
                    $('#'+list[i].wall+'Detail'+i).css('background-color', "#222222");
                    $('#'+list[i].casier+'Detail'+i).css('background-color', "#222222");
                    $('#'+list[i].casier+'Detail'+i).css('color', "#FFFFFF");
                }
                $('.drink').click(function(){
                    $('.drink').val("Valider");
                    $('.drink').css("background-color", "#EE0000");
                    $('.drink').click(function(){
                        var qtyId = "out"+$(this).attr('id').substr('outBut'.length);
                        $('#'+qtyId).val(1);
                        saveWine();
                    });
                });
                $('.outMinus').click(function(){
                    var qtyId = "out"+$(this).attr('id').substr('outMinus'.length);
                    $('#'+qtyId).html(parseInt($('#'+qtyId).html()) - 1);
                });
                $('.outPlus').click(function(){
                    var qtyId = "out"+$(this).attr('id').substr('outPlus'.length);
                    $('#'+qtyId).html(parseInt($('#'+qtyId).html()) + 1);
                });
                getStock("");
            }
        });
    }
    </script>
