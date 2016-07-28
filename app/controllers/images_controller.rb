class ImagesController < ApplicationController

before_action :find_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params.require(:image).permit(:url, :board_id))

    if @image.save
      redirect_to board_path(@image.board)
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @image.update_attributes(find_image)
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image.destroy
    redirect_to board_path(@image.board_id)
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end

  def find_image
    @image = Image.find(params[:id])
  end
end
