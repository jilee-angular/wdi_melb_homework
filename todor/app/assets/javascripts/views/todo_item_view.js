var App = App || {};

App.Views.TodoItemView = Backbone.View.extend ({

  tagName: 'li',
  events: {
    'click': 'selectTodo',
    'click .del': 'deleteTodo'
  },

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  render: function() {
    var template = $('#todoItemView').html();
    var todoItemHTML = Handlebars.compile(template);

    this.$el.html(todoItemHTML( this.model.toJSON() ));
    return this;
  },

  selectTodo: function() {
    this.$el.parent().find('li').removeClass('highlight');
    this.$el.addClass('highlight');
    // $('#todo').find('p').hide().html(this.model.get("body")).fadeIn();
  },

  deleteTodo: function(event) {
    event.preventDefault();
    this.model.destroy();
    this.remove();
  }
});