App.ChartsDrawingTextRoute = Em.Route.extend
  model: ->
    @store.find 'thing'
