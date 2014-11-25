var App = App || {};

App.TodoItemView = Backbone.View.extend ({

  tagName: 'li',
  events: {
    'click': 'selectTodo'
  },

  render: function() {
    var template = $('#todoItemView').html();
    var todoItemHTML = Handlebars.compile(template);

    this.$el.html(todoItemHTML({
      'body': this.model.body,
    }));
    return this;
  },

  selectTodo: function() {
    this.$el.toggleClass('highlight');
  }
});