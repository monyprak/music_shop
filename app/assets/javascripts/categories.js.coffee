 menuItems  = $(".header-style li a")
activeItem  = $(".header-style li a")

menuItems.each(index, item) ->
  if $(item).text().toLowerCase().trim()== "Categories"
    $(item).addClass('active-nav-bar')


    # Yoolk.InstantWebsite.Page =
    #   init: ->
    #     @setActive()
    #   setActive: ->
    #     activePage = $('.nav-bar').attr('data-page')
    #     menuItems  = $('.nav-bar li a')
    #     menuItems.each (index, item) ->
    #       if $(item).text().toLowerCase().trim() == activePage
    #         $(item).addClass('active')

# # myEle = [];
# # myEle = $("a").;
# # alert(myEle[0]);

# alert($("ul.header-style").text())
