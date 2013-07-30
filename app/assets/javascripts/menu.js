

$(document).ready(function(){

  ///
  //---------   Actived Top Menu ---------------- 


  var arrTop= [];
  arrTop = $(location).attr('href').split("/",6);
  arrTop[3] = "/" + arrTop[3];

  if(arrTop[3] == "/"){           // fOR Home Page
    arrTop[3] = "/categories";
  }

  if(arrTop[5] != null){
    arrTop[3] = "/" + arrTop[5];
  }

  var a_ele = [];
  $('.menu-style li a').each(function(index, element){
      a_ele[index] = $(element).attr('href');            // find <a> to get href for compair with url
      if(a_ele[index] == arrTop[3]){
        $(element).parent().addClass("active-nav-bar");
        $(element).replaceWith("<span>" + $(element).html() + "</span>");
      }     
  });



  ///
  //---------   Actived Left Menu ---------------- 

  var arrLeft= [];
  arrLeft = $(location).attr('href');
  var site_host = $(location).attr('host');
  
  $('.ul-left-menu li a').each(function(index, element){
      a_ele[index] = "http://" + site_host + $(element).attr('href');            // find <a> to get href for compair with url
      if(a_ele[index] == arrLeft){
        $(element).replaceWith("<span class = 'left-menu-actived' >" + $(element).html() + "</span>");
      }     
  });

});






