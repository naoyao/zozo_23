class ProductsController < ApplicationController
  def index
    @product = Product.order("id ASC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @large_value = @product.small_category
      if @product.small_category < 10
        @product.large_category = 0
      elsif @product.small_category < 20
        @product.large_category = 1
      elsif @product.small_category < 30
        @product.large_category = 2
      elsif @product.small_category < 40
        @product.large_category = 3
      else
        @product.large_category = 4
      end
    if @product.save
      redirect_to "/products/new", notic: "商品を登録しました"
    else
      render "new"
    end
  end

  def show
    # @product = Product.order("id ASC")
  end

  private
    def product_params
      params.require(:product).permit(:name,:normal_price, :discount_price, :tax, :comment_1, :comment_2, :small_category, :large_category, :sexual_category, :release_date)
    end
end
