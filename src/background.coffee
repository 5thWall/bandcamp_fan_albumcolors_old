chrome.extension.onMessage.addListener (request, sender, sendResponse) ->
  console.log "Message Recieved";
  albumColors = new AlbumColors request.src
  console.log "Getting Colors"
  albumColors.getColors (c) ->
    console.log "Sending response"
    sendResponse colors: c
  true
