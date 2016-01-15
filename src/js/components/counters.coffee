# Libraries
_        = require 'lodash'
Himesama = require '../himesama'
{ DOM }  = Himesama

# DOM
{ p, div, input } = DOM

# Components
Counter = require './counter'


module.exports = Counters = Himesama.createClass

  needs: [ 'counts' ]

  addCount: ->
    @state.counts.push 0
    @setState counts: @state.counts

  render: ->
    div null,

      div className: 'row',
        _.map @state.counts, (count, index) ->

          Counter 
            count: count
            index: index

      div classname: 'row',
        div className:  'column',
          input
            className:  'nullButton'
            type:       'submit'
            value:      'add'
            event:      click: @addCount

