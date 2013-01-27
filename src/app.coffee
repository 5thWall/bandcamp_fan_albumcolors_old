containers = $ 'li.collection-item-container'

getArtSrc = (container) ->
  art = $(container).find 'img.collection-item-art'
  imgSrc = $(art[0]).attr 'src'

getRGBColor = (color) ->
  "rgb(#{color})"

applyColors = (response) ->
  console.log "Applying colors to #{response.id}"
  container = $ "##{response.id}"
  rgb = getRGBColor response.colors[0]
  console.log "Setting background color to #{rgb}"
  container.css "background-color", rgb

containers.each ->
  req =
    src: getArtSrc @
  if req.src?
    req.id = $(@).attr "id"
    chrome.extension.sendMessage req, applyColors
