App.ThingsRoute = Em.Route.extend
  model: ->
    @store.find 'thing'
