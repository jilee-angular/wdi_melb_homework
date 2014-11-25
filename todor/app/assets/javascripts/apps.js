// App.todos = [
//   { body: 'first time'}
// ];

_.each(App.todos, function(todo, index){
  var view = new App.TodoItemView( {model: todo });
  $('#todoList ul').append(view.render().el);
})

$('#newTodo button').on('click', function(){
  var todoVal = $('#newTodo input').val();
  $('#newTodo input').val(' ');
  var todoObject = { body: todoVal};
  var view = new App.TodoItemView({ model: todoObject });
  $('#todoList ul').append(view.render().el);

});