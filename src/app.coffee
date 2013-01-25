albumArt = $ 'img.collection-item-art'

albumArt.each ->
  src = $(@).attr 'src'
  albumColors = new AlbumColors src
  albumColors.getColors (colors) ->
    console.log colors
