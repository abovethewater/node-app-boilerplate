{spawn, exec} = require 'child_process'
fs            = require 'fs'
path          = require 'path'

option '-p', '--prefix [DIR]', 'set the installation prefix for `cake install`'
option '-w', '--watch', 'continually build the boilerplate app'

task 'build', 'build a javascript app from coffeescript', (options) ->
  coffee = spawn 'coffee', ['-c' + (if options.watch then 'w' else ''), '.']
  coffee.stdout.on 'data', (data) -> console.log data.toString().trim()
  coffee.stderr.on 'data', (data) -> console.log data.toString().trim()

task 'install', 'install the `boilerplate_coffee_app` command into /usr/local (or --prefix)', (options) ->
  base = options.prefix or '/usr/local'
  lib  = base + '/lib/boilerplate_coffee_app'
  exec([
    'mkdir -p ' + lib
    'cp -rf bin/*coffee_app README.md *.coffee ' + lib
    'ln -sf ' + lib + '/bin/boilerplate_coffee_app ' + base + '/bin/boilerplate_coffee_app'
  ].join(' && '), (err, stdout, stderr) ->
   if err then console.error stderr
  )

task 'install_js_app', 'install the `boilerplate_javascript_app` command into /usr/local (or --prefix)', (options) ->
  base = options.prefix or '/usr/local'
  lib  = base + '/lib/boilerplate_javascript_app'
  exec([
    'mkdir -p ' + lib
    'cp -rf bin/*javascript_app README.md *.js ' + lib
    'ln -sf ' + lib + '/bin/boilerplate_javascript_app ' + base + '/bin/boilerplate_javascript_app'
  ].join(' && '), (err, stdout, stderr) ->
   if err then console.error stderr
  )
