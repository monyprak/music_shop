///
//---------   Actived menu 


$(document).ready(function(){
  var arr= [];
  arr = $(location).attr('href').split("/",4);
  arr[3] = "/" + arr[3];
  if(arr[3] == "/"){
    arr[3] = "/categories";
  }

  var a_ele = [];
  $('.menu-style li a').each(function(index, element){
      a_ele[index] = $(element).attr('href');            // find <a> to get href for compair with url
      if(a_ele[index] == arr[3]){
        $(element).parent().addClass("active-nav-bar");
        $(element).replaceWith("<span>" + $(element).html() + "</span>");
      }     
  });
});