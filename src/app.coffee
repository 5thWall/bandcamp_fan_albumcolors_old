containers = $ 'li.collection-item-container'

logColors = (response) ->
  console.log response

getArtSrc = (container) ->
  art = $(container).find 'img.collection-item-art'
  imgSrc = $(art[0]).attr 'src'

containers.each ->
  artSrc = getArtSrc @
  if artSrc?
    console.log "Getting art: #{artSrc}"
    chrome.extension.sendMessage {"src": artSrc}, logColors
