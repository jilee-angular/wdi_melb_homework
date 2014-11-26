class TodosController < ApplicationController

  def index
    @todos = Todo.all 
    
    respond_to do |format|
      format.html {}
      format.json { render :json => @todos }
    end
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    render :json => @todo
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render :json => @todo 
  end

  private

  def todo_params
    params.require(:todo).permit(:body)
  end
  
end