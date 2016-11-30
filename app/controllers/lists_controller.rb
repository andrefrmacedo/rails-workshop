class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @new_list = List.new
  end

  def create
    @new_list = List.create(list_params)

    redirect_to lists_path
  end


  private 

  def list_params
    params.require(:list).permit(:name)
  end

end
