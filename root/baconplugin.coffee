init = (Bacon, $) ->

if module?
  Bacon = require "baconjs"
  $ = require "jquery"
  module.exports = init(Bacon, $)
else
  if typeof define == "function" and define.amd
    define ["bacon", "jquery"], init
  else
    init(this.Bacon, this.$)