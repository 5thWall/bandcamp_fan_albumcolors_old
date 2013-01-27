chrome.extension.onMessage.addListener (request, sender, sendResponse) ->
  albumColors = new AlbumColors request.src
  albumColors.getColors (c) ->
    sendResponse colors: c

  true # Return true to ensure message is passed back
