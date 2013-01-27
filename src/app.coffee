###
Copyright (C) 2013  Andrew Arminio

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
###

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
