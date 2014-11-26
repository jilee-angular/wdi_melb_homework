App.todos = [];

App.todos = new App.Collections.Todos();

App.todos.fetch().done(function(){
  App.todos.each(function(todo, index){
    var view = new App.Views.TodoItemView({ model: todo });
    $('#todoList ul').append(view.render().el);
  });
}); // ends fetch


$('#newTodo button').on('click', function(){
  var todoVal = $('#newTodo input').val();
  $('#newTodo input').val(' ');
  
  var todo = new App.Models.Todo({ body: todoVal});

  App.todos.create(todo);

  var view = new App.Views.TodoItemView({ model: todo });
  $('#todoList ul').append(view.render().el);

}); // ends on...