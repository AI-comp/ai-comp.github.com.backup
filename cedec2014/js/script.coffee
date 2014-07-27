$(document).ready( ->
  $('#top').fadeIn()
  $('ul#menu').fadeIn()
  $('#game-rules').load('./game-rules.html')

  innerLink = (activeBox)->
    $('.box').hide()
    $(activeBox).fadeIn({complete: ->
      window.scrollTo(0, 0)
    })

  $('ul#menu li').click( ->
    $('#description p').hide()
    $('#description h1').show()
    activeBox = $(@).find('a').attr('href')
    innerLink(activeBox)
  )
  $('#description h1').click( ->
    $('#description p').fadeIn()
    $('#description h1').hide()
    activeBox = $(@).find('a').attr('href')
    innerLink(activeBox)
  )
  
  $('a.expand').click( ->
    $('div.expand').slideToggle()
  )
)
