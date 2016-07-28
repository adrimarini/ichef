class RecipeStepsController < ApplicationController

before_action :find_recipe_step, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_steps = RecipeStep.all
  end

  def show
  end

  def new
    @recipe_step = RecipeStep.new
  end

  def create
    @recipe_step = RecipeStep.new(params.require(:recipe_step).permit(:step, :board_id))
      if @recipe_step.save
        redirect_to board_path(@recipe_step.board)
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @recipe_step.update_attributes(recipe_step_params)
        redirect_to board_path(@recipe_step.board_id)
      else
        render :edit
      end
  end

  def destroy
    @recipe_step.destroy
      redirect_to board_path(@recipe_step.board_id)
  end

  private

  def recipe_step_params
    params.require(:recipe_step).permit(:step)
  end

  def find_recipe_step
    @recipe_step = RecipeStep.find(params[:id])
  end
end
