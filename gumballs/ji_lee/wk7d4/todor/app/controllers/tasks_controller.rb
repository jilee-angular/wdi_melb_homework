class TasksController < ApplicationController

  def index
    @tasks = Task.all 

    respond_to do |format|
      format.html { }
      format.json { render :json => @tasks }
    end
  end

  def create
    # binding.pry
    @task = Task.new(task_params)
    # @task.description = params[:description]
    if @task.save
      render :json => @task
    else
      render :json => @task
    end
  end

  def complete
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    render :json => @task
  end

  def uncomplete
    @task = Task.find(params[:id])
    @task.uncomplete = true
    @task.save
    render :json => @task
  end


  private

  def task_params
    params.require(:task).permit(:description)
  end

end