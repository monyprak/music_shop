
$(document).ready(function(){

  ///
  //---------   Actived Top Menu ---------------- 


  var arrTop= [];
  arrTop = $(location).attr('href').split("/",6);
  arrTop[3] = "/" + arrTop[3];

  if(arrTop[3] == "/"){                  // Check url index page
    arrTop[3] = "/categories";
  }

  if(arrTop[5] != null){                 // check url from caregory and brand user define method
    arrTop[3] = "/" + arrTop[5];
  }

  if(arrTop[4] == "top_products"){       // check url from product user define method
    arrTop[3] = "/products/" + arrTop[4];
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


  //
  //----------  Validation on field require --------
  
  $(".field_with_errors select").css({"color": "red", "border":"1px solid red"});

});






