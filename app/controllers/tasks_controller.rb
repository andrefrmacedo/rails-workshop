class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.create(task_params)

    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:name)
  end

end
