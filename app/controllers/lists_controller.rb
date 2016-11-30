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

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end 


  private 

  def list_params
    params.require(:list).permit(:name)
  end

end
