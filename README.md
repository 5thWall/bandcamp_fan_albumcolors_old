Bandcamp Fanpage Albumcolors
============================

This chrome extension adds albumcolors to fan pages on [bandcamp.com][bandcamp]
using [albumcolors.js][albumcolors] by Chengyin Liu ([@chengyin][chengyin]).

[bandcamp]: http://bandcamp.com
[albumcolors]: https://github.com/chengyin/albumcolors
[chengyin]: https://github.com/chengyin

Building
--------

 Clone the repository.

```shell
git clone git://github.com/5thWall/bandcamp_fan_albumcolors.git
cd bandcamp_fan_albumcolors
```

Use `rake` task to build the extension.

```shell
rake build
```

Open up Extensions in Chrome, and ensure the `Developer Mode` check-box is
checked.

Click `Load unpacked extension...` and select the `extension` directory.

You can also use the `package` task to create a packaged extension.

```shell
rake package
```

Requirements
------------

This project requires [Coffeescript][cs] to build.

[cs]: http://coffeescript.org

License
-------

Both `lib/jquery.js` and `lib/albumcolors.js` are have their own licenses, all
else:

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
along with this program.  If not, see [<http://www.gnu.org/licenses/>][gpl].

[gpl]: http://www.gnu.org/licenses/
