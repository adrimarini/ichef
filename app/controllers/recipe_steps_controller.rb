class RecipeStepsController < ApplicationController
  def index
  @recipe_steps = RecipeStep.all
end

def show
  @recipe_step = RecipeStep.find(params[:id])
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
  @recipe_step = RecipeStep.find(params[:id])
end

def update
  @recipe_step = RecipeStep.find(params[:id])

  if @recipe_step.update_attributes(params.require(:recipe_step).permit(:step))
    redirect_to recipe_steps_path
  else
    render :edit
  end
end

def destroy
  @recipe_step = RecipeStep.find(params[:id])
  @recipe_step.destroy
  redirect_to recipe_steps_path
end
end
