App.ChartsSimpleBarChartRoute = Em.Route.extend
  model: ->
    @store.find 'thing'
