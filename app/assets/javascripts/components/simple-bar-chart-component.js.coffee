#= require d3/d3

App.SimpleBarChartComponent = Em.Component.extend
  draw: (->
    data = @get('data').toArray()
    svg  = d3.select("##{@get('elementId')}")
    svg.selectAll('div')
      .data(data)
      .enter()
      .append('div')
      .attr('class', 'bar')
      .style('height', (d) ->
        barHeight = d.get('number')/5
        "#{barHeight}px"
      )
  ).on('didInsertElement')
  # Currently data changes are not detected.
  # This is not working:
  #).observes('data.@each').on('didInsertElement')

