class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    # redirect_to :action => "index"
  end

  def image_params
    params.require(:image).permit(:image)
  end
end
