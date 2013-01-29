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

setBackground = (item, color) ->
  item.css "background-color", color

setColor = (item, color) ->
  item.css "color", color

getPrimaryText = (container) ->
  container.find "div.collection-item-title,span.favoriteTrackLabel"

getSecondaryText = (container) ->
  container.find "div.collection-item-artist,a.fav-track-link,span.fav-track-static"

applyColors = (response) ->
  container = $ "##{response.id}"
  console.log $(container.find('div.collection-item-title')[0]).text()
  color = (getRGBColor c for c in response.colors)
  console.log color
  setBackground container, color[0]
  primaryText = getPrimaryText container
  setColor primaryText, color[1]
  secondaryText = getSecondaryText container
  setColor secondaryText, color[2]

containers.each ->
  req =
    src: getArtSrc @
  if req.src?
    req.id = $(@).attr "id"
    chrome.extension.sendMessage req, applyColors
