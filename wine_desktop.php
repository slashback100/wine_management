<?php $title = 'Wine';
    include 'check.php';
// vim: foldmethod=indent
// --> vim= encoding=utf-8
//    $origin = "wine";
//    include 'header.inc';
?>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>   
<meta name="referrer" content="no-referrer"/>
<form id='searchForm' method='POST'>
    <input type='hidden' name='addWine' value="addWine"/>
    <table>
    <tr><td>
    <p><u>Vin</u><p/>
    <label>*Pays</label><input type="text" name="country"  id="countrySearch" /><br/>
    <label>*Region</label><input type="text" name="region" id="regionSearch" /><br/>
    <label>*Nom / Climat</label><input type="text" name="nameClimat" id="nameClimatSearch" /><br/>
    <label>*Propriété</label><input type="text" name="propriete"  id="proprieteSearch" /><br/>
    <label>*Producteur</label><input type="text" name="producer" id="producerSearch" /><br/>
    <label>*Appellation</label><input type="text" name="appellation" id="appellationSearch" /><br/>
    <label>*Millesime</label><input type="text" name="year" id="year"/></br>
    <label>*Couleur</label><input type="text" name="color" id="colorSearch" /><br/>
    <label>*Catégorie</label><input type="text" name="category" id="categorySearch" /><br/>
    <label>*Cépage</label><input type="text" name="cepage1" size='12' class="cepageSearch" id="cepageSearch1" /><input style='text-align: right' type='text' size='3' id='cepagePerc1' value='%'><br/>
    <label style="visibility: hidden">to hide</label><input type="text" style='display: none' name="cepage2" size='12' class="cepageSearch" id="cepageSearch2" /><input type='text' style='display: none;text-align: right' size='3' id='cepagePerc2' value='%'><br/>
    <label style="visibility: hidden">to hide</label><input type="text" style='display: none' name="cepage3" size='12' class="cepageSearch" id="cepageSearch3" /><input type='text' style='display: none;text-align: right' size='3' id='cepagePerc3' value='%'><br/>
    <label style="visibility: hidden">to hide</label><input type="text" style='display: none' name="cepage4" size='12' class="cepageSearch" id="cepageSearch4" /><input type='text' style='display: none;text-align: right' size='3' id='cepagePerc4' value='%'><br/>
    <label style="visibility: hidden">to hide</label><input type="text" style='display: none' name="cepage5" size='12' class="cepageSearch" id="cepageSearch5" /><input type='text' style='display: none;text-align: right' size='3' id='cepagePerc5' value='%'><br/>
    <label style="visibility: hidden">to hide</label><input type="text" style='display: none' name="cepage6" size='12' class="cepageSearch" id="cepageSearch6" /><input type='text' style='display: none;text-align: right' size='3' id='cepagePerc6' value='%'><br/>
    *Les champs précédés d'une astérisque sont</br>utilisés pour filtrer les vins
    </td><td>
    <p><u>Détail de l'achat</u></p>
    <label>*Type de bouteille</label><input type="text" name="size" size="12" id="sizeSearch" /><div style='display: inline' id='sizeLabel'></div><br/>
    <label>Achat/offert par</label><input type="text" name="location" id="locationSearch" /><br/>
    <label>Date de l'achat</label><input type="date" placeholder="DD-MM-YYYY" name="buyDate" id="buyDate"/><br/>
    <!--<input type="date" id="location" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"/><br/>-->
    <label>Quantité</label><input type="text" name="quantity" id="quantity" /><br/>
    <label>Prix par bouteille</label><input type="text" name="price" id="price"/>€<br/>
    </td><td>
    <p><u>Détail concernant la garde</u></p>
    <label>*Optimum</label><select id='optimumOperator'><option selected>=</option><option>&lt;=</option><option>&gt;=</option></select><input type="text" size='13' name="optimum" id="optimum"/><br/>
    <label>*Fin optimum</label><select id='endOptimumOperator'><option selected>=</option><option>&lt;=</option><option>&gt;=</option></select><input type="text" size='13' name="endOptimum" id="endOptimum" /><br/>
    <label>*Garde</label><input type="text" name="toKeep" id="toKeepSearch" /><br/>
    <input type='checkbox' id='optimumNow'/>*Afficher les vins à leur optimum</br>
    </td><td>
    <p><u>Dégustation</u></p>
    <label>Distinction</label><input type="text" name="distinction" id="distinction" /><br/>
    <label>Médaille</label><input type="text" name="medal" id="medal" /><br/>
    <label>Vue</label><textarea name="view" id="view" rows="2" cols="18"></textarea><br/>
    <label>Nez</label><textarea name="noze" id="noze" rows="2" cols="18"></textarea/><br/>
    <label>Goût</label><textarea name="taste" id="taste" rows="2" cols="18"></textarea/><br/>
    <label>*Met</label><textarea name="meal" id="meal" rows="2" cols="18"></textarea/><br/>
    <label>Ma note</label><input type="text" name="myNote" id="myNote" /><br/>
    <label>Commentaire</label><textarea name="comment" id="comment" rows="2" cols="18"></textarea/><br/>
    </td><td>
    <p><u>Position dans la cave</u></p>
    <label>*Mur</label>
        <table id='plan' height='100px' width='150px'>
              <tr height='25%'><td width='16%'/><td class='plan' id='north' width='66,8%' colspan='2'/><td width='16%'/></tr>
              <tr height='25%'><td class='plan' id='west' rowspan='2'/><td colspan='2'/><td class='plan' id='east' rowspan='2'/></tr>
              <tr height='25%'><td colspan='2'/></tr>
              <tr height='25%'><td/><td width='16%'/><td class='plan' id='south'/></tr>
        </table>
    <input type='hidden' id='planField' name='plan'/>
    <label>*Position</label>
       <table id='wall'>
      </table>
    <input type='hidden' id='wallField' name='position'/></br>
    <input type='checkbox' id='toBeClassified'/>*Afficher les vins pas encore classé dans la cave</br>
    <input type='checkbox' id='showEmptyStock'/>*Afficher les vins qui ne sont plus en stock</br>
    </td></tr>
    </table>
   <input type='submit' id='reset' value='Réinitialiser'/>
   <input type='submit' id='addWine' value='Ajouter'/>
   <br/>
   <p id='searchCount'></p>
</form>
<table id='wines' width='100%'>
</table>
<input type='hidden' id='orderBy' value=''/>
<input type='submit' id='searchAll' value='Afficher tout'/>
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
        $(".wallDetail"+index).click(function(){
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
        });
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
    $('#cepageSearch2').css('display','none');
    $('#cepagePerc2').css('display','none');
    $('#cepageSearch3').css('display','none');
    $('#cepagePerc3').css('display','none');
    $('#cepageSearch4').css('display','none');
    $('#cepagePerc4').css('display','none');
    $('#cepageSearch5').css('display','none');
    $('#cepagePerc5').css('display','none');
    $('#cepageSearch6').css('display','none');
    $('#cepagePerc6').css('display','none');
    $('#cepagePerc1').val('%');
    $('#cepagePerc2').val('%');
    $('#cepagePerc3').val('%');
    $('#cepagePerc4').val('%');
    $('#cepagePerc5').val('%');
    $('#cepagePerc6').val('%');
    $('#optimumOperator').val("=");
    $('#endOptimumOperator').val("=");
    var d = new Date();
    $('#buyDate').val(("0"+d.getDate()).slice(-2)+"-"+("0" + (d.getMonth()+1)).slice(-2) + "-" + d.getFullYear());
    search();
    e.preventDefault(); 
    return false;
});
$('#addWine').click(function(e){
        $.ajax({
            url: 'wineFunctions.php',
            dataType: 'json',
            method: 'post',
            data: {
                addWine: "addWine",
                country: $('#countrySearch').val(),
                region: $('#regionSearch').val(),
                nameClimat: $('#nameClimatSearch').val(),
                propriete: $('#proprieteSearch').val(),
                producer: $('#producerSearch').val(),
                appellation: $('#appellationSearch').val(),
                year: $('#year').val(),
                color: $('#colorSearch').val(),
                category: $('#categorySearch').val(),
                cepage1: $('#cepageSearch1').val(),
                cepage2: $('#cepageSearch2').val(),
                cepage3: $('#cepageSearch3').val(),
                cepage4: $('#cepageSearch4').val(),
                cepage5: $('#cepageSearch5').val(),
                cepagePerc1: $('#cepagePerc1').val().replace('%',''),
                cepagePerc2: $('#cepagePerc2').val().replace('%',''),
                cepagePerc3: $('#cepagePerc3').val().replace('%',''),
                cepagePerc4: $('#cepagePerc4').val().replace('%',''),
                cepagePerc5: $('#cepagePerc5').val().replace('%',''),
                cepagePerc6: $('#cepagePerc6').val().replace('%',''),
                size: $('#sizeSearch').val(),
                location: $('#locationSearch').val(),
                buyDate: $('#buyDate').val().substr(6, 4)+"-"+$('#buyDate').val().substr(3, 2)+"-"+$('#buyDate').val().substr(0, 2),
                quantity: $('#quantity').val(),
                price: $('#price').val(),
                optimum: $('#optimum').val(),
                endOptimum: $('#endOptimum').val(),
                toKeep: $('#toKeepSearch').val(),
                distinction: $('#distinction').val(),
                medal: $('#medal').val(),
                view: $('#view').val(),
                noze: $('#noze').val(),
                taste: $('#taste').val(),
                meal: $('#meal').val(),
                myNote: $('#myNote').val(),
                comment: $('#comment').val(),
                plan: $('#planField').val(),
                wall: $('#wallField').val()
            },
            success : function(list, b){
                if($('#quantity').val() == '' || $('#quantity').val() == 0){
                    $('#showEmptyStock').prop('checked', true);;
                }
                search();
            } 
        });

    e.preventDefault(); 
    return false;
});


$(document).ready(function() {
    var d = new Date();
    $('#buyDate').val(("0"+d.getDate()).slice(-2)+"-"+("0" + (d.getMonth()+1)).slice(-2) + "-" + d.getFullYear());
    $("#buyDate").datepicker({ dateFormat: 'dd-mm-yy' });

    $('#countrySearch').on('input',search);
    $('#countrySearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#countrySearch").removeAttr("data-id");
            $.ajax({
                    url : 'wineFunctions.php', // on appelle le script JSON
                    dataType : 'json', 
                    data: {searchType: 'country', country: request.term},
                    success : function(list,b){
                        response($.map(list, function(obj){
                           return obj;
                        }));
                    } 
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
    $('#sizeLabel')[0].innerHTML = '0.75 l';
    $('#sizeSearch').on('input',search);
    $('#sizeSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#sizeSearch").removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'size', size: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){
                        return obj;
                    }));
                } 
            });
        },
        select : function(event, ui){
            $('#sizeLabel')[0].innerHTML = ui.item.volume+" l";
            $('#sizeSearch').val(ui.item.label);
            $('#sizeSearch').attr("data-id",ui.item.id);
            search();
        }
    });
    $('#myNote').on('input',search);
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
    $('.cepageSearch').on('input',search);
    $('.cepageSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $(this).removeAttr("data-id");
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'cepage', cepage: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select: function(event, ui){
            $(this).val(ui.item.label);
            $(this).attr("data-id",ui.item.id);
            search();
        }
    });
    $('#locationSearch').on('input',search);
    $('#locationSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'location', location: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#locationSearch').val(ui.item.label);
            search();
        }
    });
    $('#toKeepSearch').on('input',search);
    $('#toKeepSearch').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $("#toKeepSearch").removeAttr("data-id");
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
            $('#toKeepSearch').val(ui.item.label);
            $(this).attr("data-id",ui.item.id);
            search();
        }
    });
    $('#meal').on('input',search);
    $('#meal').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                url : 'wineFunctions.php', // on appelle le script JSON
                dataType : 'json', 
                data: {searchType: 'meal', meal: request.term},
                success : function(list,b){
                    response($.map(list, function(obj){return obj;}));
                } 
            });
        },
        select : function(event, ui){
            $('#meal').val(ui.item.label);
            search();
        }
    });
    //$('#year').on('input',search);
    $('#year').on('input', search);
    $("#cepageSearch1").on('input propertychange', function(e){
        if($('#cepageSearch1').val() != ''){
            $('#cepageSearch2').css('display','inline');
            $('#cepagePerc2').css('display','inline');
        } 
    });
    $("#cepageSearch2").on('input propertychange', function(e){
        if($('#cepageSearch2').val() != ''){
            $('#cepageSearch3').css('display','inline');
            $('#cepagePerc3').css('display','inline');
        } 
    });
    $("#cepageSearch3").on('input propertychange', function(e){
        if($('#cepageSearch3').val() != ''){
            $('#cepageSearch4').css('display','inline');
            $('#cepagePerc4').css('display','inline');
        } 
    });
    $("#cepageSearch4").on('input propertychange', function(e){
        if($('#cepageSearch4').val() != ''){
            $('#cepageSearch5').css('display','inline');
            $('#cepagePerc5').css('display','inline');
        } 
    });
    $("#cepageSearch5").on('input propertychange', function(e){
        if($('#cepageSearch5').val() != ''){
            $('#cepageSearch6').css('display','inline');
            $('#cepagePerc6').css('display','inline');
        } 
    });
    $("#optimum").on('input',search);
    $("#endOptimum").on('input',search);
    $("#optimumOperator").change(search);
    $("#endOptimumOperator").change(search);
    $("#optimumNow").change(search);
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
    $('#showEmptyStock').change(search);
    $('#toBeClassified').change(search);
    search();
});
$('#searchAll').click(function(e){
    searchLimit(0);
});
function search(){
    searchLimit(20);
}
function searchLimit(limit){
    $("body").css("cursor", "progress");
    var clause = $('#orderBy').val().substr(1);
    if(clause != ""){
        clause = " order by "+clause;
    }
    rowSelected = null;
    $.ajax({
        url: 'wineFunctions.php',
        dataType: 'json',
        method: 'post',
        data: {
            searchType: 'wine',
            country: $('#countrySearch').attr("data-id"),
            region: $('#regionSearch').attr("data-id"),
            nameClimat: $('#nameClimatSearch').val(),
            propriete: $('#proprieteSearch').val(),
            producer: $('#producerSearch').val(),
            appellation: $('#appellationSearch').attr("data-id"),
            year: $('#year').val(),
            color: $('#colorSearch').attr("data-id"),
            category: $('#categorySearch').attr("data-id"),
            cepage1: $('#cepageSearch1').attr("data-id"),
            cepage2: $('#cepageSearch2').attr("data-id"),
            cepage3: $('#cepageSearch3').attr("data-id"),
            cepage4: $('#cepageSearch4').attr("data-id"),
            cepage5: $('#cepageSearch5').attr("data-id"),
            cepage6: $('#cepageSearch6').attr("data-id"),
            size: $('#sizeSearch').attr("data-id"),
            plan: $('#planField').val(),
            wall: $('#wallField').val(),
            myNote: $('#myNote').val(),
            meal: $('#meal').val(),
            dateOptimum: $('#optimum').val(),
            dateOptimumOperator: $('#optimumOperator option:selected').text(),
            endOptimum: $('#endOptimum').val(),
            endOptimumOperator: $('#endOptimumOperator option:selected').text(),
            toKeep: $('#toKeepSearch').attr("data-id"),
            optimumNow: $('#optimumNow').is(':checked'),
            showEmptyStock: $('#showEmptyStock').is(':checked'),
            toBeClassified: $('#toBeClassified').is(':checked'),
            limit: limit,
            orderBy: clause
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
            country: $('#countrySearch').attr("data-id"),
            region: $('#regionSearch').attr("data-id"),
            nameClimat: $('#nameClimatSearch').val(),
            propriete: $('#proprieteSearch').val(),
            producer: $('#producerSearch').val(),
            appellation: $('#appellationSearch').attr("data-id"),
            year: $('#year').val(),
            color: $('#colorSearch').attr("data-id"),
            category: $('#categorySearch').attr("data-id"),
            cepage1: $('#cepageSearch1').attr("data-id"),
            cepage2: $('#cepageSearch2').attr("data-id"),
            cepage3: $('#cepageSearch3').attr("data-id"),
            cepage4: $('#cepageSearch4').attr("data-id"),
            cepage5: $('#cepageSearch5').attr("data-id"),
            cepage6: $('#cepageSearch6').attr("data-id"),
            size: $('#sizeSearch').attr("data-id"),
            plan: $('#planField').val(),
            wall: $('#wallField').val(),
            myNote: $('#myNote').val(),
            meal: $('#meal').val(),
            dateOptimum: $('#optimum').val(),
            dateOptimumOperator: $('#optimumOperator option:selected').text(),
            endOptimum: $('#endOptimum').val(),
            endOptimumOperator: $('#endOptimumOperator option:selected').text(),
            toKeep: $('#toKeepSearch').attr("data-id"),
            optimumNow: $('#optimumNow').is(':checked'),
            showEmptyStock: $('#showEmptyStock').is(':checked'),
            toBeClassified: $('#toBeClassified').is(':checked')
        },
        success : function(cnt, b){
            $('#searchCount').html(cnt.nbBottle+" bouteille(s), "+cnt.nbWine+" vin(s)");
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
    //var table="<tr><th>Nom/Climat <input type='submit' value='-'/></th><th>Millesime <input type='submit' value='-'</th><th>Propriété <input type='submit' value='-'</th><th>Producteur <input type='submit' value='-'</th><th>Pays <input type='submit' value='-'</th><th>Région <input type='submit' value='-'</th><th>Appellation <input type='submit' value='-'</th><th>Catégorie <input type='submit' value='-'</th><th>Couleur <input type='submit' value='-'</th><th>Cépage <input type='submit' value='-'</th><th>Cotation Millesime <input type='submit' value='-'</th><th>Début Optimum <input type='submit' value='-'</th><th>Garde <input type='submit' value='-'</th><th>Fin Optimum <input type='submit' value='-'</th><th># bouteille</th></tr>";
    var table="<tr><th>Nom/Climat </th><th>Millesime </th><th>Propriété </th><th>Producteur</th><th>Pays</th><th>Région</th><th>Appellation</th><th>Catégorie</th><th>Couleur</th><th>Cépage</th><th>Cotation Millesime</th><th>Début Optimum</th><th>Garde</th><th>Fin Optimum</th><th># bouteille</th></tr>";
    for(var i=0; i < data.length; i++){
        table = table + '<tr id="row'+data[i].id+'" data-wineid="'+data[i].id+'" class="wineRow"><td class="withBorder" >'+data[i].nameClimat+'</td><td class="withBorder">'+data[i].year+'</td><td class="withBorder">'+data[i].propriete+'</td><td class="withBorder">'+data[i].producer+'</td><td class="withBorder">'+data[i].country+'</td><td class="withBorder">'+data[i].region+'</td><td class="withBorder">'+data[i].appellation+'</td><td class="withBorder">'+data[i].category+'</td><td class="withBorder">'+data[i].color+'</td><td class="withBorder">'+data[i].cepage1+(data[i].perc1 != ""?(' '+data[i].perc1):'')+' '+data[i].cepage2+(data[i].perc2 != ""?(' '+data[i].perc2):'')+' '+data[i].cepage3+(data[i].perc3 != ""?(' '+data[i].perc3):'')+' '+data[i].cepage4+(data[i].perc4 != ""?(' '+data[i].perc4):'')+' '+data[i].cepage5+(data[i].perc5 != ""?(' '+data[i].perc5):'')+data[i].cepage6+(data[i].perc6 != ""?(' '+data[i].perc6):'')+'</td><td class="withBorder">'+data[i].note+'</td><td class="withBorder">'+data[i].optimum+'</td><td class="withBorder">'+data[i].to_keep+'</td><td class="withBorder">'+data[i].end_optimum+'</td><td class="withBorder">'+data[i].nbBottle+'</td></tr>';
    }
    
    $('#wines')[0].innerHTML = table;
    $('.wineRow').click(function(){
        $('.wineDetail').remove();
        if(rowSelected != $(this)[0].id){
            var wineId = $('#'+$(this)[0].id).attr('data-wineid'); 
            $('<tr style="opacity: 0" class="wineDetail" data-wineid="'+wineId+'"><td class="withBorder" colspan="15"></td></tr>').insertAfter('#'+$(this)[0].id);
            rowSelected = $(this)[0].id;
            var det = '<table width="100%"><td width="30%" id="positionDetail"></td><td width="30%"><div id="buyDetail"></div><div id="outDetail"></div><div id="buyInput"></div></td><td id="tastingDetail" width="45%"></td></table>';

            $('.wineDetail > td').html(det);
            $('.wineDetail').animate({opacity: '1'}, "slow");
            fillDetails(wineId);
        } else {
            rowSelected = null;
        }
    });
    $('#wines tr th').click(function(){
        var orderBy = $(this).find('input').val();
        var clause = $('#orderBy').val();
        var id = $(this).index()+1;
        if(orderBy == '-'){
            orderBy = 'v';
            clause = clause+', '+id+' asc';
        } else if(orderBy == 'v'){
            orderBy = '^';
            clause.replace("/, "+id+' asc/',  ', '+id+' desc');
        } else {
            orderBy = '-';
            clause.replace("/, "+id+' desc/',  '');
        }
        $(this).find('input').val(orderBy);
        $('#orderBy').val(clause);
        searchLimit(0);
    });
    $("body").css("cursor", "default");
}
function fillDetails(wineId){
    fillPositionDetails(wineId);
    fillOutDetails(wineId);
    fillBuyDetails(wineId);
    fillTasteDetails(wineId);
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
                var bDate;
                if(list[i].buy_date != ""){
                    bDate=list[i].buy_date;
                    bDate=bDate.substr(8,2)+"/"+bDate.substr(5,2)+"/"+bDate.substr(0,4);
                }
                det +=  "<li><div>"+list[i].quantity+" "+list[i].size+'(s)'+(list[i].buy_date != ""?(" achetées/reçue le "+bDate):"")+(list[i].location!=""?(" chez/de "+list[i].location):"")+(list[i].unit_price>0?(" à "+list[i].unit_price+"€ la bouteille"):"")+"<input type='submit' data-qty='"+list[i].quantity+"' data-size='"+list[i].size+"' data-date='"+list[i].buy_date+"' data-location="+'"'+list[i].location+'"'+" data-price='"+list[i].unit_price+"' data-buyid='"+list[i].id+"' class='editBuy' value='Editer'/></div><li/>";
            }
            det = det+"</ul>";
            $('#buyDetail').html(det);
            $('.editBuy').click(function(e){editBuy(e);});
        }

    });
    $('#buyInput').html('<input id="quantityBuy" value="0" size="2" type="text"/><input type="text" value="Bouteille" size="10" id="sizeBuy"/>achetée chez/offer par <input size="12" id="locationBuy" type="text"/> à <input size="3" type="text" id="priceBuy"/>€ la bouteille le <input type="date" size="10" id="dateBuy"/>');
    $('#sizeBuy').autocomplete({
        source: function(request, response){
            $.ajax({
                    url : 'wineFunctions.php',
                    dataType : 'json', 
                    data: {searchType: 'size', size: request.term},
                    success : function(list,b){
                        response($.map(list, function(obj){
                            return obj;
                        }));
                    } 
            });
        }
    });
    $('#locationBuy').autocomplete({
        //autoFocus: true,
        source: function(request, response){
            $.ajax({
                    url : 'wineFunctions.php', // on appelle le script JSON
                    dataType : 'json', 
                    data: {searchType: 'location', location: request.term},
                    success : function(list,b){
                        response($.map(list, function(obj){return obj;}));
                    } 
            });
        }
    });
    var d = new Date();
    $('#dateBuy').val(("0"+d.getDate()).slice(-2)+"-"+("0" + (d.getMonth()+1)).slice(-2) + "-" + d.getFullYear());
    $("#dateBuy").datepicker({ dateFormat: 'dd-mm-yy' });
}
function editBuy(event){
    if($('#idBuyEdit').length == 0){
        var div=$(event.target);
        var bDate = "";
        if(div.attr('data-date') != ""){
            bDate = div.attr('data-date');
            bDate = bDate.substr(8,2)+"-"+bDate.substr(5,2)+"-"+bDate.substr(0,4);
        }
        var content = '<input id="quantityBuyEdit" value="'+div.attr('data-qty')+'" size="2" type="text"/><input type="text" value="'+div.attr('data-size')+'" size="10" id="sizeBuyEdit"/>achetée chez/offer par <input size="12" id="locationBuyEdit" value="'+div.attr('data-location')+'" type="text"/> à <input size="3" type="text" id="priceBuyEdit" value="'+div.attr('data-price')+'"/>€ la bouteille le <input type="date" size="10" id="dateBuyEdit" value="'+bDate+'"/><input type="hidden" id="idBuyEdit" value="'+div.attr('data-buyid')+'"/>';
        div.parent().html(content);
        $('#dateBuyEdit').datepicker({ dateFormat: 'dd-mm-yy' });
        $('.editBuy').remove();
    }
    event.preventDefault();
    return false;
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
        det.quantity = $('#quantityPos'+i).val();
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
            locationBuy: $('#locationBuy').val(), 
            quantityBuy: $('#quantityBuy').val(),
            priceBuy: $('#priceBuy').val(),
            sizeBuy: $('#sizeBuy').val(),
            dateBuy: $('#dateBuy').val().substr(6, 4)+"-"+$('#dateBuy').val().substr(3, 2)+"-"+$('#dateBuy').val().substr(0, 2),
            locationBuyEdit: $('#locationBuyEdit').val(), 
            quantityBuyEdit: $('#quantityBuyEdit').val(),
            priceBuyEdit: $('#priceBuyEdit').val(),
            sizeBuyEdit: $('#sizeBuyEdit').val(),
            dateBuyEdit: $('#dateBuyEdit').length > 0 ? ($('#dateBuyEdit').val().substr(6, 4)+"-"+$('#dateBuyEdit').val().substr(3, 2)+"-"+$('#dateBuyEdit').val().substr(0, 2)):"",
            idBuyEdit: $('#idBuyEdit').val(),
            distinction: $('#distinctionDetail').val(),
            medal: $('#medalDetail').val(),
            view: $('#viewDetail').val(),
            noze: $('#nozeDetail').val(),
            taste: $('#tasteDetail').val(),
            meal: $('#mealDetail').val(),
            myNote: $('#myNoteDetail').val(),
            comment: $('#commentDetail').val(),
            date_optimum: $('#optimumDetail').val(),
            end_date: $('#endOptimumDetail').val(),
            toKeep: $('#toKeepDetail').val(),
            positions:  JSON.stringify(positions)

        },
        success : function(list, b){
            fillDetails(list.wineId);
        } 
    });

    event.preventDefault(); 
    return false;
}
function deleteWine(event){

    $.ajax({
        url: 'wineFunctions.php',
        dataType: 'json',
        method: 'post',
        data: {
            deleteWine: "deleteWine",
            wineId: $('.wineDetail').attr('data-wineid')
        },
        success : function(list, b){
            search();
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
                det += "<tr data-positionid='"+list[i].id+"'><td><input id='quantityPos"+i+"' type='text' size='2' value='"+list[i].quantity+"'/><div id='sizePos"+i+"'>"+list[i].size+"</div>";
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
                det += "Sortie : <input size='2' type='text' id='out"+i+"' value='0'/>";
                det += "<input type='hidden' class='planDetailHidden' id='planDetailField"+i+"' />";
                det += "<input type='hidden' class='wallDetailHidden' id='wallDetailField"+i+"' />";
                det += "</td></tr>";
            }
            $('#positionDetail').html(det);
            for(i=0; i < list.length; i++){
                $(".planDetail"+i).click(function(){
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
                });
                $('#planDetailField'+i).val(list[i].wall+"Detail"+i);
                $('#wallDetailField'+i).val(list[i].casier+"Detail"+i);
                drawWallDetail(i);
                $('#'+list[i].wall+'Detail'+i).css('background-color', "#222222");
                $('#'+list[i].casier+'Detail'+i).css('background-color', "#222222");
                $('#'+list[i].casier+'Detail'+i).css('color', "#FFFFFF");
            }
            getStock("");
        }
    });
}
</script>
