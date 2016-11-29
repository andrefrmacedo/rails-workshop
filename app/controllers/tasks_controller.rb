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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def done
    @task = Task.find(params[:id])
    @task.update(done: !@task.done)

    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:name)
  end

end
