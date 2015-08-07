class Api::BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      render :show
    else
      # render errors -> figure out how to do this
    end
  end

  private
  def board_params
    params.require(:board).permit(:title)
  end
end
