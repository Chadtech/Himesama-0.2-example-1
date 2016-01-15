# Libraries
Himesama = require '../himesama'
{ DOM }  = Himesama

# DOM
{ p, div, input } = DOM


module.exports = Title = Himesama.createClass

  render: ->

    p
      className: 'point'
      'Himesama Counter(s) example !!'
