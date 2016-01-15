# Libraries
Himesama              = require './himesama'
{ Doc, DOM }          = Himesama
{ Render, initState } = Himesama
{ getElementById }    = Doc

# DOM
{ p, div, input } = DOM

# Components
Title      = require './components/title'
Counters   = require './components/counters'

# State
initState counts: [ 0 ]


App = Himesama.createClass

  render: -> 

    div null,
      div className:        'container',
        div className:      'row',
          Title() 

        Counters()





Render App(), getElementById 'mount'
