COFFEE = FileList['src/*.coffee']
JS = COFFEE.ext 'js'

directory 'extension'

rule '.js' => ['.coffee', 'extension'] do |t|
  `coffee -c -o extension #{t.source}`
end

file 'package.zip' => [:build] do
  `zip package.zip extension/*`
end

desc "Build the extension in the 'extension' directory"
task :build => ['extension', *JS] do
   cp File.join('src', 'manifest.json'), 'extension'
   cp File.join('lib', 'albumcolors.js'), 'extension'
   cp File.join('lib', 'jquery.js'), 'extension'
end

desc "Package the extension"
task :package => [:build, 'package.zip']
