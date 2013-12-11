#= require d3/d3

App.ChartBase = Em.Component.extend
  dataset: Em.computed -> @get('data').toArray()
  svg: Em.computed -> d3.select("##{@get('elementId')}")

  doDraw: (->
    @draw()
  ).on('didInsertElement')
  # Currently data changes are not detected.
  # This is not working:
  #).observes('data.@each').on('didInsertElement')

  draw: ->
    Ember.assert "You need to the 'draw()' method in #{@toString()}"
