#= require d3/d3

App.BarChartComponent = Em.Component.extend
  draw: (->
    data = @get('data').toArray()
    svg  = d3.select("##{@get('elementId')}")
    svg.selectAll('p')
      .data(data)
      .enter()
      .append('p')
      .text((d) -> d.get('category'))
  ).on('didInsertElement')
  # Currently data changes are not detected.
  # This is not working:
  #).observes('data.@each').on('didInsertElement')
