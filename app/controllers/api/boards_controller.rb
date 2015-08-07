class Api::BoardsController < ApplicationController
  before_action :require_signed_in!
  
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
      render json: @pokemon.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def board_params
    params.require(:board).permit(:title)
  end
end
