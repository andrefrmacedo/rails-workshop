class TasksController < ApplicationController

  def new
    @new_task = Task.new
  end

  def create
    @new_task = current_task_list.tasks.create(task_params)

    redirect_to list_path(current_task_list)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to list_path(current_task_list)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to list_path(current_task_list)
  end

  def done
    @task = Task.find(params[:id])
    @task.update(done: !@task.done)

    redirect_to list_path(current_task_list)
  end


  private

  def current_task_list
    List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:name)
  end

end
