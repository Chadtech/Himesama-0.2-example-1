# Libraries
_        = require 'lodash'
Himesama = require '../himesama'
{ DOM }  = Himesama

# DOM
{ p, div, input } = DOM


module.exports = Counter = Himesama.createClass

  increment: ->
    { count, index }  = @attributes 
    counts            = @state.counts
    counts[ index ]   = count + 1
    @setState counts: counts

  decrement: ->
    { count, index }  = @attributes 
    counts            = @state.counts
    counts[ index ]   = count - 1
    @setState counts: counts

  remove: ->
    { count, index }  = @attributes 
    counts            = @state.counts
    counts.splice index, 1
    @setState counts: counts


  render: ->
    { count }  = @attributes 

    div className:    'row',

      div className:  'column',
        p className:  'point',
          count + ''

      div className:  'column',
        input
          className:  'nullButton'
          type:       'submit'
          value:      '+'
          event:      click: @increment

      div className:  'column',
        input
          className:  'nullButton'
          type:       'submit'
          value:      '-'
          event:      click: @decrement

      div className:  'column',
        input
          className:  'nullButton'
          type:       'submit'
          value:      'X'
          event:      click: @remove
