class Api::BoardsController < ApplicationController
  before_action :require_signed_in!

  def index
    @boards = @current_user.boards
  end

  def show
    # To avoid n +1 queries later on, when we add cards: use includes(:lists).
    # Also make sure the lists point to the cards.
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    
    if @board.save
      render :show
    else
      render json: @board.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def board_params
    params.require(:board).permit(:title)
  end
end
