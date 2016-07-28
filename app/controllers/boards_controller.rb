class BoardsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = Board.where(:user_id => current_user.id)
  end

  def show
    @recipe_step = RecipeStep.new
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id

    if @board.save
      redirect_to board_path(@board.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update_attributes(board_params)
      redirect_to board_path(@board.id)
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private

  def board_params
    params.require(:board).permit(:name_of_food, :category_id)
  end

  def find_board
    @board = Board.find(params[:id])
  end

end
