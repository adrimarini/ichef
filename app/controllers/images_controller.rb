class ImagesController < ApplicationController

  def index
  @images = Image.all
end

def show
  @image = Image.find(params[:id])
end

def new
  @image = Image.new
end

def create
  @image = Image.new(params.require(:image).permit(:url))

  if @image.save
    redirect_to images_path
  else
    render :new
  end
end

def edit
  @image = Image.find(params[:id])
end

def update
  @image = Image.find(params[:id])

  if @image.update_attributes(params.require(:image).permit(:url))
    redirect_to images_path
  else
    render :edit
  end
end

def destroy
  @image = Image.find(params[:id])
  @image.destroy
  redirect_to images_path
end


end
