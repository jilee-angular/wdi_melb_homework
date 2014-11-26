var App = App || {};

// model
App.Models.Todo = Backbone.Model.extend({
  urlRoot: '/todos'
});