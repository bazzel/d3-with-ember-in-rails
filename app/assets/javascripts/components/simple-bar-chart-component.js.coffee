#= require ./chart-base

App.SimpleBarChartComponent = App.ChartBase.extend
  draw: ->
    dataset = @get('dataset')
    svg     = @get('svg')

    svg.selectAll('div')
      .data(dataset)
      .enter()
      .append('div')
      .attr('class', 'bar')
      .style('height', (d) ->
        barHeight = d.get('number')/5
        "#{barHeight}px"
      )
