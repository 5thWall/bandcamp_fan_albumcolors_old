albumArt = $ 'img.collection-item-art'

logColors = (response) ->
  console.log "Colors recieved"
  console.log response

albumArt.each ->
  imgSrc = $(@).attr 'src'
  console.log "Getting colors for #{imgSrc}"
  chrome.extension.sendMessage {"src": imgSrc}, logColors
