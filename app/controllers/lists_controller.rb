class ListsController < ApplicationController
  before_action :find_list, only: [:show]
  def index
    @lists = List.all
  end

  def show
    #write the show method, getting the list id from the params
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), data: {turbo_method: :create, turbo_confirm: "List created"}
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
