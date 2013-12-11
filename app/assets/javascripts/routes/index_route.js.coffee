App.IndexRoute = Em.Route.extend
  beforeModel: ->
    @transitionTo 'charts.drawing-text'
