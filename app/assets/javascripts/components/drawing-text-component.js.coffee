#= require d3/d3

App.DrawingTextComponent = Em.Component.extend
  draw: (->
    data = @get('data').toArray()
    svg  = d3.select("##{@get('elementId')}")
    svg.selectAll('p')
      .data(data)
      .enter()
      .append('p')
      .text((d) -> d.get('category'))
      .style('color', (d) ->
        number = d.get('number')
        switch
          when number < 100 then 'red'
          when number < 500 then 'yellow'
      )
  ).on('didInsertElement')
  # Currently data changes are not detected.
  # This is not working:
  #).observes('data.@each').on('didInsertElement')
