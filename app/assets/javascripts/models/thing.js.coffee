# for more details see: http://emberjs.com/guides/models/defining-models/

App.Thing = DS.Model.extend
  number: DS.attr 'number'
  category: DS.attr 'string'
  date: DS.attr 'date'
