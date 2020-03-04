fadeIn = (el) ->
  el.style.opacity = '0.7'
  el.style.transition = 'opacity 1000ms'
  return

fadeOut = (el) ->
  el.style.opacity = '0'
  return

window.addEventListener 'load', ->
  el = document.getElementById('puffly')
  if el
    setTimeout (->
      fadeIn el
      return
    ), 100
    setTimeout (->
      fadeOut el
      return
    ), 4000
  return