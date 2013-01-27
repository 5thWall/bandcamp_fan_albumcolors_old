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

chrome.extension.onMessage.addListener (request, sender, sendResponse) ->
  albumColors = new AlbumColors request.src
  albumColors.getColors (c) ->
    sendResponse
      colors: c
      id: request.id

  true # Return true to ensure message is passed back
