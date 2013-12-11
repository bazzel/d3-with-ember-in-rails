# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'charts', ->
    @route 'drawing-text'
    @route 'simple-bar-chart'

