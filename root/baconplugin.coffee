init = (Bacon, $) ->

if module?
  Bacon = require("baconjs")
  $ = require("jquery")
  module.exports = init(Bacon, $)
else
  if typeof require is "function"
    define "{%= name %}", ["bacon", "jquery"], init
  else
    init(this.Bacon, this.$)