class Api::ListsController < ApplicationController
  def index
    board = Board.find(params[:id])
    @lists = board.lists
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      render "show"
    else
      render json: @list.errors.full_messages, status: :unprocessable_entity    
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :ord)
  end
end
