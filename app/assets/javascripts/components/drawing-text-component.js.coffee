#= require ./chart-base

App.DrawingTextComponent = App.ChartBase.extend
  draw: ->
    dataset = @get('dataset')
    svg     = @get('svg')

    svg.selectAll('p')
      .data(dataset)
      .enter()
      .append('p')
      .text((d) -> d.get('category'))
      .style('color', (d) ->
        number = d.get('number')
        switch
          when number < 100 then 'red'
          when number < 500 then 'yellow'
      )

