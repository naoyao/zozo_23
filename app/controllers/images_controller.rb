class ImagesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    # binding.pry
    if @image.save
      redirect_to :root, notic: "画像を登録しました"
    else
      render "new"
    end
    # redirect_to :action => "index"
  end

  def image_params
    params.require(:image).permit(:image).merge(product_id: params[:product_id])
  end
end
