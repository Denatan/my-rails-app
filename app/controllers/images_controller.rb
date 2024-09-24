class ImagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @images = Image.all
    @image = Image.new
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path, notice: "Изображение успешно загружено!"
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:picture)
  end
end