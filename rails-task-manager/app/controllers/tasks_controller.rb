class TasksController < ApplicationController

  def index
    @all_tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.new(task_params).save
    redirect_to "/tasks"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    Task.find(params[:id]).update(task_params)
    redirect_to "/tasks"
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to "/tasks"
  end

  def task_params
    params.require(:task).permit(:name, :done)
  end

end
