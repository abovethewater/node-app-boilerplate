fs = require 'fs'

# A nodeunit test to help head in the right direction

# ======== A Handy Little Nodeunit Reference ========
# https://github.com/caolan/nodeunit

# Test methods:
#   test.expect(numAssertions)
#   test.done()
# Test assertions:
#   test.ok(value, [message])
#   test.equal(actual, expected, [message])
#   test.notEqual(actual, expected, [message])
#   test.deepEqual(actual, expected, [message])
#   test.notDeepEqual(actual, expected, [message])
#   test.strictEqual(actual, expected, [message])
#   test.notStrictEqual(actual, expected, [message])
#   test.throws(block, [error], [message])
#   test.doesNotThrow(block, [error], [message])
#   test.ifError(value)

exports.boilerplate =
  setUp: (done) ->
    done()
  tearDown: (done) ->
    done()

  coffeeScriptFileExists: (test) ->

    fs.exists "boilerplate_coffee_app.coffee", (exists) ->
      test.ok exists, 'CoffeeScript file exists'
      test.done()

  javaScriptFileExists: (test) ->

    fs.exists "boilerplate_javascript_app.js", (exists) ->
      test.ok exists, 'JavaScript file exists'
      test.done()
