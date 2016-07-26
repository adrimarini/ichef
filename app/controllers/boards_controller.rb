class BoardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @recipe_step = RecipeStep.new
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params.require(:board).permit(:name_of_food, :category_id))

    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])

    if @board.update_attributes(params.require(:board).permit(:name_of_food))
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

end
