class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @new_task = Task.new
  end

end
